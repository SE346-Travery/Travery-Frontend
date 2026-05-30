import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/trip/trip_seat_data.dart';
import 'package:travery_frontend/data/models/trip/trip_search_item.dart';

class TripBookingInputViewModel extends ChangeNotifier {
  TripSearchItem? _trip;
  TripSearchItem? get trip => _trip;

  List<SeatItem> _selectedSeats = [];
  List<SeatItem> get selectedSeats => _selectedSeats;

  String _contactName = '';
  String get contactName => _contactName;

  String _contactPhone = '';
  String get contactPhone => _contactPhone;

  double get totalPrice {
    if (_trip == null) return 0;
    return _selectedSeats.length * _trip!.basePrice;
  }

  void setTripAndSeats({
    required TripSearchItem trip,
    required List<SeatItem> seats,
  }) {
    _trip = trip;
    _selectedSeats = seats;
    _contactName = '';
    _contactPhone = '';
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
}
