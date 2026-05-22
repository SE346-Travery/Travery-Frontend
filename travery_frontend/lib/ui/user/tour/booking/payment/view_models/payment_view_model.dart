import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_payment_response/create_payment_response.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_response/create_tour_booking_response.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

enum PaymentStatus {
  idle,
  loading,
  pending,
  processing,
  success,
  failed,
  expired,
}

class PaymentViewModel extends ChangeNotifier {
  PaymentViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  String? _bookingId;
  String? get bookingId => _bookingId;

  TourBookingData? _bookingData;
  TourBookingData? get bookingData => _bookingData;

  String _paymentUrl = '';
  String get paymentUrl => _paymentUrl;

  DateTime? _expiresAt;
  int _remainingSeconds = 0;
  int get remainingSeconds => _remainingSeconds;

  PaymentStatus _status = PaymentStatus.idle;
  PaymentStatus get status => _status;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Timer? _countdownTimer;
  Timer? _pollingTimer;

  void _setStatus(PaymentStatus s) {
    _status = s;
    notifyListeners();
  }

  void _setError(String msg) {
    _errorMessage = msg;
    _setStatus(PaymentStatus.failed);
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }

  Future<void> initPayment(TourBookingData bookingData) async {
    _bookingData = bookingData;
    _bookingId = bookingData.id;
    _setStatus(PaymentStatus.loading);
    notifyListeners();

    if (bookingData.payment != null &&
        bookingData.payment!.paymentUrl.isNotEmpty) {
      _paymentUrl = bookingData.payment!.paymentUrl;
      if (bookingData.payment!.expiresAt != null) {
        _expiresAt = DateTime.tryParse(bookingData.payment!.expiresAt!);
        _startCountdown();
      }
      _setStatus(PaymentStatus.pending);
    } else {
      await _createPayment();
    }
  }

  Future<void> _createPayment() async {
    if (_bookingId == null) return;

    final result = await _tourService.createPayment(_bookingId!);

    switch (result) {
      case Ok<PaymentResponseData>():
        _paymentUrl = result.value.paymentUrl;
        if (result.value.expiresAt != null) {
          _expiresAt = DateTime.tryParse(result.value.expiresAt!);
          _startCountdown();
        }
        _setStatus(PaymentStatus.pending);
      case Error<PaymentResponseData>():
        _setError(result.error.toString());
    }
  }

  void _startCountdown() {
    _countdownTimer?.cancel();
    if (_expiresAt == null) return;

    _updateRemainingSeconds();
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      _updateRemainingSeconds();
      if (_remainingSeconds <= 0) {
        _countdownTimer?.cancel();
        _stopPolling();
        _setStatus(PaymentStatus.expired);
      }
    });
  }

  void _updateRemainingSeconds() {
    if (_expiresAt == null) return;
    final now = DateTime.now().toUtc();
    final diff = _expiresAt!.toUtc().difference(now);
    _remainingSeconds = diff.inSeconds.clamp(0, 999999);
    notifyListeners();
  }

  void startPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(const Duration(seconds: 5), (_) async {
      if (_status == PaymentStatus.expired ||
          _status == PaymentStatus.success) {
        _pollingTimer?.cancel();
        return;
      }
      await _checkBookingStatus();
    });
  }

  void _stopPolling() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }

  Future<void> _checkBookingStatus() async {
    if (_bookingId == null) return;

    final result = await _tourService.getBookingDetail(_bookingId!);

    switch (result) {
      case Ok<TourBookingData>():
        _bookingData = result.value;
        if (_isPaymentSuccess(result.value)) {
          _stopPolling();
          _countdownTimer?.cancel();
          _setStatus(PaymentStatus.success);
        }
      case Error<TourBookingData>():
        break;
    }
  }

  bool _isPaymentSuccess(TourBookingData data) {
    final status = data.status.toUpperCase();
    return status == 'CONFIRMED' ||
        status == 'PAID' ||
        status == 'IN_PROGRESS' ||
        status == 'COMPLETED';
  }

  String get formattedTime {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String get statusText {
    switch (_status) {
      case PaymentStatus.idle:
        return 'Đang khởi tạo...';
      case PaymentStatus.loading:
        return 'Đang tạo thanh toán...';
      case PaymentStatus.pending:
        return 'Đang chờ thanh toán';
      case PaymentStatus.processing:
        return 'Đang xử lý';
      case PaymentStatus.success:
        return 'Thanh toán thành công';
      case PaymentStatus.failed:
        return 'Thanh toán thất bại';
      case PaymentStatus.expired:
        return 'Đã hết hạn';
    }
  }

  double get totalAmount => _bookingData?.totalPrice ?? 0;
  String get bookingCode => _bookingId ?? '';
  String get tourName => _bookingData?.tourName ?? '';

  @override
  void dispose() {
    _countdownTimer?.cancel();
    _stopPolling();
    super.dispose();
  }
}
