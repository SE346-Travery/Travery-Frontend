import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/trip/trip_booking_data.dart';
import 'package:travery_frontend/data/services/trip/trip_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TripBookingReviewViewModel extends ChangeNotifier {
  TripBookingReviewViewModel({required TripService tripService})
    : _tripService = tripService;

  final TripService _tripService;

  TripBookingData? _bookingData;
  TripBookingData? get bookingData => _bookingData;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<TripPaymentData?> createPayment() async {
    if (_bookingData == null) return null;

    _isLoading = true;
    _error = null;
    notifyListeners();

    final result = await _tripService.createTripPayment(_bookingData!.id);

    switch (result) {
      case Ok(value: final data):
        _isLoading = false;
        notifyListeners();
        return data;
      case Error(error: final e):
        _error = e.toString();
        _isLoading = false;
        notifyListeners();
        return null;
    }
  }
}
