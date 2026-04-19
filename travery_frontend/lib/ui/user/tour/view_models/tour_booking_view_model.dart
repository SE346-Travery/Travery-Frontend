import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_booking/tour_booking.dart';
import 'package:travery_frontend/data/seed_models/tour_booking_member/tour_booking_member.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourBookingViewModel extends ChangeNotifier {
  final TourRepository _tourRepository;

  TourBookingViewModel({required TourRepository tourRepository})
      : _tourRepository = tourRepository;

  Tour? _tour;
  Tour? get tour => _tour;

  TourInstance? _tourInstance;
  TourInstance? get tourInstance => _tourInstance;

  int _adultCount = 1;
  int get adultCount => _adultCount;

  int _childCount = 0;
  int get childCount => _childCount;

  double get totalPrice {
    if (_tour == null) return 0;
    return (_adultCount * _tour!.pricePerAdult) + (_childCount * _tour!.pricePerChild);
  }

  int get totalMembers => _adultCount + _childCount;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  TourBooking? _booking;
  TourBooking? get booking => _booking;

  Future<void> loadTourData(String tourId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _tourRepository.getTourById(tourId);
      switch (result) {
        case Ok<Tour?>():
          _tour = result.value;
        case Error<Tour?>():
          _error = result.error.toString();
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadTourInstanceData(String tourInstanceId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _tourRepository.getTourInstanceById(tourInstanceId);
      switch (result) {
        case Ok<TourInstance?>():
          _tourInstance = result.value;
        case Error<TourInstance?>():
          _error = result.error.toString();
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<TourBooking?> createBooking(BookingData data) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _tourRepository.createBooking(
        tourInstanceId: data.tourInstanceId,
        passengerName: data.passengerName,
        passengerPhone: data.passengerPhone,
        adultCount: data.adultCount,
        childCount: data.childCount,
        totalPrice: data.totalPrice,
        specialNotes: data.specialNotes,
      );
      switch (result) {
        case Ok<TourBooking>():
          _booking = result.value;
          return result.value;
        case Error<TourBooking>():
          _error = result.error.toString();
          return null;
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void setAdultCount(int count) {
    if (count >= 0) {
      _adultCount = count;
      notifyListeners();
    }
  }

  void setChildCount(int count) {
    if (count >= 0) {
      _childCount = count;
      notifyListeners();
    }
  }

  void incrementAdult() {
    _adultCount++;
    notifyListeners();
  }

  void decrementAdult() {
    if (_adultCount > 0) _adultCount--;
    notifyListeners();
  }

  void incrementChild() {
    _childCount++;
    notifyListeners();
  }

  void decrementChild() {
    if (_childCount > 0) _childCount--;
    notifyListeners();
  }
}

class BookingData {
  final String tourInstanceId;
  final String passengerName;
  final String passengerPhone;
  final int adultCount;
  final int childCount;
  final double totalPrice;
  final String? specialNotes;
  final List<TourBookingMember> members;

  BookingData({
    required this.tourInstanceId,
    required this.passengerName,
    required this.passengerPhone,
    required this.adultCount,
    required this.childCount,
    required this.totalPrice,
    this.specialNotes,
    this.members = const [],
  });
}