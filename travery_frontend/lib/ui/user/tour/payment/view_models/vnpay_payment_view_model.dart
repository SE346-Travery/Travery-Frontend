import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class VNPayPaymentViewModel extends ChangeNotifier {
  VNPayPaymentViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  bool _isCreatingPayment = false;
  bool get isCreatingPayment => _isCreatingPayment;

  String? _error;
  String? get error => _error;

  Future<String?> createPaymentUrl(String bookingId) async {
    _isCreatingPayment = true;
    _error = null;
    notifyListeners();

    final result = await _tourService.createPayment(bookingId);

    switch (result) {
      case Ok(value: final data):
        _isCreatingPayment = false;
        notifyListeners();
        return data.paymentUrl;
      case Error(error: final e):
        _error = e.toString();
        _isCreatingPayment = false;
        notifyListeners();
        return null;
    }
  }
}
