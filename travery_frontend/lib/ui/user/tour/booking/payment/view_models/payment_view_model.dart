import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';

enum PaymentStatus { pending, processing, success, failed, expired }

class PaymentViewModel extends ChangeNotifier {
  final BookingViewModel _bookingViewModel;

  PaymentViewModel({required BookingViewModel bookingViewModel})
    : _bookingViewModel = bookingViewModel;

  Tour? get tour => _bookingViewModel.tour;
  TourInstance? get selectedInstance => _bookingViewModel.selectedInstance;
  String get contactName => _bookingViewModel.contactName;
  String get contactPhone => _bookingViewModel.contactPhone;
  double get totalPrice => _bookingViewModel.totalPrice;
  int get adultCount => _bookingViewModel.adultCount;
  int get childCount => _bookingViewModel.childCount;

  PaymentStatus _status = PaymentStatus.pending;
  PaymentStatus get status => _status;

  int _remainingSeconds = 15 * 60;
  int get remainingSeconds => _remainingSeconds;

  String _qrCodeUrl = '';
  String get qrCodeUrl => _qrCodeUrl;

  Timer? _timer;
  VoidCallback? _onPaymentSuccess;
  VoidCallback? _onPaymentExpired;
  VoidCallback? _onPaymentFailed;

  String get formattedTime {
    final minutes = _remainingSeconds ~/ 60;
    final seconds = _remainingSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String get statusText {
    switch (_status) {
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

  void startPayment({
    VoidCallback? onSuccess,
    VoidCallback? onExpired,
    VoidCallback? onFailed,
  }) {
    _onPaymentSuccess = onSuccess;
    _onPaymentExpired = onExpired;
    _onPaymentFailed = onFailed;

    _generateMockQrCode();
    _startTimer();
    notifyListeners();
  }

  void _generateMockQrCode() {
    _qrCodeUrl =
        'https://api.qrserver.com/v1/create-qr-code/?size=200x200&data=VNPay_Payment_${DateTime.now().millisecondsSinceEpoch}';
  }

  void _startTimer() {
    _remainingSeconds = 15 * 60;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        _remainingSeconds--;
        notifyListeners();
      } else {
        _handlePaymentExpired();
      }
    });
  }

  void _handlePaymentExpired() {
    _timer?.cancel();
    _status = PaymentStatus.expired;
    notifyListeners();
    _onPaymentExpired?.call();
  }

  void simulatePaymentSuccess() {
    _timer?.cancel();
    _status = PaymentStatus.success;
    notifyListeners();
    _onPaymentSuccess?.call();
  }

  void simulatePaymentFailed() {
    _timer?.cancel();
    _status = PaymentStatus.failed;
    notifyListeners();
    _onPaymentFailed?.call();
  }

  void cancelPayment() {
    _timer?.cancel();
    _status = PaymentStatus.failed;
    notifyListeners();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
