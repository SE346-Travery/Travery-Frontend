import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/trip/trip_booking_data.dart';
import 'package:travery_frontend/data/services/trip/trip_service.dart';
import 'package:travery_frontend/data/services/api/model/trip/create_trip_booking_request/create_trip_booking_request.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TripBookingReviewViewModel extends ChangeNotifier {
  TripBookingReviewViewModel({required TripService tripService})
    : _tripService = tripService;

  final TripService _tripService;

  TripBookingData? _bookingData;
  TripBookingData? get bookingData => _bookingData;

  bool _isCreatingBooking = false;
  bool get isCreatingBooking => _isCreatingBooking;

  bool _isCreatingPayment = false;
  bool get isCreatingPayment => _isCreatingPayment;

  String? _error;
  String? get error => _error;

  Future<TripBookingData?> createBooking({
    required String tripId,
    required List<String> seatLayoutItemIds,
    required String contactName,
    required String contactPhone,
  }) async {
    _isCreatingBooking = true;
    _error = null;
    notifyListeners();

    final request = CreateTripBookingRequest(
      tripId: tripId,
      seatLayoutItemIds: seatLayoutItemIds,
      contactName: contactName,
      contactPhone: contactPhone,
    );

    final result = await _tripService.createTripBooking(request);

    switch (result) {
      case Ok(value: final data):
        _bookingData = data;
        _isCreatingBooking = false;
        notifyListeners();
        return data;
      case Error(error: final e):
        _error = e.toString();
        _isCreatingBooking = false;
        notifyListeners();
        return null;
    }
  }

  Future<TripPaymentData?> createPayment() async {
    if (_bookingData == null) return null;

    _isCreatingPayment = true;
    _error = null;
    notifyListeners();

    final result = await _tripService.createTripPayment(_bookingData!.id);

    switch (result) {
      case Ok(value: final data):
        _isCreatingPayment = false;
        notifyListeners();
        return data;
      case Error(error: final e):
        _error = e.toString();
        _isCreatingPayment = false;
        notifyListeners();
        return null;
    }
  }

  void reset() {
    _bookingData = null;
    _isCreatingBooking = false;
    _isCreatingPayment = false;
    _error = null;
    notifyListeners();
  }
}
