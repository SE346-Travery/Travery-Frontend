import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/trip/trip_seat_data.dart';
import 'package:travery_frontend/data/models/trip/trip_booking_data.dart';
import 'package:travery_frontend/data/models/trip/trip_search_item.dart';
import 'package:travery_frontend/data/services/trip/trip_service.dart';
import 'package:travery_frontend/data/services/api/model/trip/create_trip_booking_request/create_trip_booking_request.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TripBookingInputViewModel extends ChangeNotifier {
  TripBookingInputViewModel({required TripService tripService})
    : _tripService = tripService;

  final TripService _tripService;

  TripSearchItem? _trip;
  TripSearchItem? get trip => _trip;

  List<SeatItem> _selectedSeats = [];
  List<SeatItem> get selectedSeats => _selectedSeats;

  String _contactName = '';
  String get contactName => _contactName;

  String _contactPhone = '';
  String get contactPhone => _contactPhone;

  bool _isSubmitting = false;
  bool get isSubmitting => _isSubmitting;

  String? _error;
  String? get error => _error;

  TripBookingData? _bookingData;
  TripBookingData? get bookingData => _bookingData;

  void setTripAndSeats({
    required TripSearchItem trip,
    required List<SeatItem> seats,
  }) {
    _trip = trip;
    _selectedSeats = seats;
    _contactName = '';
    _contactPhone = '';
    _bookingData = null;
    _error = null;
    notifyListeners();
  }

  void setContactName(String name) {
    _contactName = name;
    notifyListeners();
  }

  void setContactPhone(String phone) {
    _contactPhone = phone;
    notifyListeners();
  }

  double get totalPrice {
    if (_trip == null) return 0;
    return _selectedSeats.length * _trip!.basePrice;
  }

  Future<bool> submitBooking() async {
    if (_trip == null || _selectedSeats.isEmpty) return false;
    if (_contactName.trim().isEmpty || _contactPhone.trim().isEmpty) {
      _error = 'Vui lòng nhập đầy đủ thông tin liên hệ';
      notifyListeners();
      return false;
    }

    _isSubmitting = true;
    _error = null;
    notifyListeners();

    final request = CreateTripBookingRequest(
      tripId: _trip!.id,
      seatLayoutItemIds: _selectedSeats.map((s) => s.seatLayoutItemId).toList(),
      contactName: _contactName.trim(),
      contactPhone: _contactPhone.trim(),
    );

    final result = await _tripService.createTripBooking(request);

    switch (result) {
      case Ok(value: final data):
        _bookingData = data;
        _isSubmitting = false;
        notifyListeners();
        return true;
      case Error(error: final e):
        _error = e.toString();
        _isSubmitting = false;
        notifyListeners();
        return false;
    }
  }
}
