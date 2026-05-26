import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_request/create_tour_booking_request.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_response/create_tour_booking_response.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class BookingReviewViewModel extends ChangeNotifier {
  BookingReviewViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  bool _isCreatingBooking = false;
  bool get isCreatingBooking => _isCreatingBooking;

  String? _error;
  String? get error => _error;

  TourBookingData? _bookingData;
  TourBookingData? get bookingData => _bookingData;

  bool _termsAccepted = false;
  bool get termsAccepted => _termsAccepted;

  void setTermsAccepted(bool value) {
    _termsAccepted = value;
    notifyListeners();
  }

  Future<bool> createBooking({
    required String instanceId,
    required List<Map<String, dynamic>> members,
    required String specialRequests,
  }) async {
    _isCreatingBooking = true;
    _error = null;
    notifyListeners();

    final request = _buildRequest(members, specialRequests);

    final result = await _tourService.createTourBooking(
      instanceId: instanceId,
      request: request,
    );

    switch (result) {
      case Ok(value: final data):
        _bookingData = data;
        _isCreatingBooking = false;
        notifyListeners();
        return true;
      case Error(error: final e):
        _error = e.toString();
        _isCreatingBooking = false;
        notifyListeners();
        return false;
    }
  }

  CreateTourBookingRequest _buildRequest(
    List<Map<String, dynamic>> members,
    String specialRequests,
  ) {
    final bookingMembers = members.map((m) {
      return BookingMemberRequest(
        fullName: m['fullName'] as String? ?? '',
        identityNumber: m['identityNumber'] as String? ?? '',
        dateOfBirth: m['dateOfBirth'] as String? ?? '',
        memberType: m['memberType'] as String? ?? 'ADULT',
      );
    }).toList();

    return CreateTourBookingRequest(
      members: bookingMembers,
      specialRequests: specialRequests,
    );
  }
}
