import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';
import 'package:travery_frontend/data/services/booking/booking_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class BookingDetailViewModel extends ChangeNotifier {
  final BookingService _bookingService;

  BookingDetailViewModel({required BookingService bookingService})
    : _bookingService = bookingService;

  BookingDetailModel? _bookingDetail;
  BookingDetailModel? get bookingDetail => _bookingDetail;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadBookingDetail(String bookingId) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _bookingService.getBookingDetail(bookingId);

    switch (result) {
      case Ok<BookingDetailModel?>():
        _bookingDetail = result.value;
      case Error<BookingDetailModel?>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  String get formattedDate {
    if (_bookingDetail == null) return 'N/A';
    final date = _bookingDetail!.departureDate;
    final day = date.day;
    final month = date.month;
    final year = date.year;
    return '$day Tháng $month, $year';
  }

  String get formattedPrice {
    if (_bookingDetail == null) return 'N/A';
    final formatter = NumberFormat.currency(
      locale: 'vi_VN',
      symbol: '₫',
      decimalDigits: 0,
    );
    return formatter.format(_bookingDetail!.totalPrice);
  }

  String get formattedGuestCount {
    if (_bookingDetail == null) return 'N/A';
    final guests = _bookingDetail!.guestCount;
    return '$guests ${guests == 1 ? 'Khách' : 'Khách'}';
  }

  String get refundDeadlineText {
    if (_bookingDetail == null) return '';
    final deadline = _bookingDetail!.refundPolicy.lastFreeCancellationDate;
    if (deadline == null) return '';
    final day = deadline.day;
    final month = deadline.month;
    final hour = deadline.hour.toString().padLeft(2, '0');
    final minute = deadline.minute.toString().padLeft(2, '0');
    return '$hour:$minute ngày $day Tháng $month';
  }
}
