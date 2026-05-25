import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_response/create_tour_booking_response.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

enum PaymentConfirmState { confirming, confirmed, failed, processingTimeout }

class PaymentResultViewModel extends ChangeNotifier {
  PaymentResultViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  PaymentConfirmState _state = PaymentConfirmState.confirming;
  PaymentConfirmState get state => _state;

  TourBookingData? _bookingData;
  TourBookingData? get bookingData => _bookingData;

  String? _responseCode;
  String? _bookingId;

  void initState({
    String? txnRef,
    String? deeplinkStatus,
    String? responseCode,
    String? bookingId,
  }) {
    _responseCode = responseCode;
    _bookingId = bookingId;

    if (deeplinkStatus == 'success') {
      _state = PaymentConfirmState.confirming;
      _pollBookingStatus();
    } else {
      _state = PaymentConfirmState.failed;
    }
    notifyListeners();
  }

  Future<void> _pollBookingStatus() async {
    if (_bookingId == null) {
      _state = PaymentConfirmState.processingTimeout;
      notifyListeners();
      return;
    }

    const maxAttempts = 10;
    const delays = [2, 2, 3, 3, 5, 5, 5, 10, 10, 10];

    for (int i = 0; i < maxAttempts; i++) {
      await Future.delayed(Duration(seconds: delays[i]));

      final result = await _tourService.getBookingDetail(_bookingId!);

      switch (result) {
        case Ok(value: final data):
          _bookingData = data;
          if (data.status == 'PAID' || data.status == 'Đã thanh toán') {
            _state = PaymentConfirmState.confirmed;
            notifyListeners();
            return;
          } else if (data.status == 'CANCELLED' || data.status == 'Đã hủy') {
            _state = PaymentConfirmState.failed;
            notifyListeners();
            return;
          }
        case Error():
          continue;
      }
    }

    _state = PaymentConfirmState.processingTimeout;
    notifyListeners();
  }

  Future<void> retryPolling() async {
    _state = PaymentConfirmState.confirming;
    notifyListeners();
    _pollBookingStatus();
  }

  String getErrorMessage() {
    switch (_responseCode) {
      case '24':
        return 'Bạn đã hủy giao dịch';
      case '51':
        return 'Tài khoản không đủ số dư';
      case '65':
        return 'Vượt hạn mức thanh toán trong ngày';
      case '75':
        return 'Ngân hàng đang bảo trì';
      default:
        return 'Giao dịch không thành công${_responseCode != null ? ' (mã: $_responseCode)' : ''}';
    }
  }
}
