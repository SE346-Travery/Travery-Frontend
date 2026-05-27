import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';
import 'package:travery_frontend/data/services/booking/booking_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class BookingDetailViewModel extends ChangeNotifier {
  BookingDetailViewModel({required BookingService bookingService})
    : _bookingService = bookingService;

  final BookingService _bookingService;

  BookingDetailModel? _bookingDetail;
  BookingDetailModel? get bookingDetail => _bookingDetail;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> loadBookingDetail(String bookingId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    final result = await _bookingService.getBookingDetail(bookingId);

    switch (result) {
      case Ok(value: final data):
        _bookingDetail = data;
      case Error(error: final e):
        _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
