import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_response/create_tour_booking_response.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';

class BookingSuccessViewModel extends ChangeNotifier {
  final BookingViewModel _bookingViewModel;

  BookingSuccessViewModel({required BookingViewModel bookingViewModel})
    : _bookingViewModel = bookingViewModel;

  TourBookingData? get bookingData => _bookingViewModel.bookingResult;

  String get bookingId => bookingData?.id ?? '';
  String get bookingCode {
    final id = bookingData?.id ?? '';
    if (id.isEmpty) return 'N/A';
    final shortCode = id.replaceAll('-', '');
    final end = shortCode.length > 8
        ? shortCode.substring(shortCode.length - 8)
        : shortCode;
    return 'TRV-$end'.toUpperCase();
  }

  String get tourName =>
      bookingData?.tourName ?? _bookingViewModel.tour?.name ?? 'N/A';
  double get totalPrice =>
      bookingData?.totalPrice ?? _bookingViewModel.totalPrice;

  String get formattedDate {
    final start = bookingData?.startDate ?? '';
    if (start.isEmpty) return 'N/A';
    try {
      final parts = start.split('-');
      final year = parts[0];
      final monthNum = int.tryParse(parts[1]) ?? 1;
      final day = parts[2].split('T').first;
      const months = [
        'Tháng 1',
        'Tháng 2',
        'Tháng 3',
        'Tháng 4',
        'Tháng 5',
        'Tháng 6',
        'Tháng 7',
        'Tháng 8',
        'Tháng 9',
        'Tháng 10',
        'Tháng 11',
        'Tháng 12',
      ];
      return '$day ${months[monthNum - 1]} $year';
    } catch (_) {
      return start;
    }
  }

  int get adultCount {
    if (bookingData == null) return _bookingViewModel.adultCount;
    return bookingData!.members.where((m) => m.memberType == 'ADULT').length;
  }

  int get childCount {
    if (bookingData == null) return _bookingViewModel.childCount;
    return bookingData!.members.where((m) => m.memberType == 'CHILD').length;
  }

  String get guestSummary {
    final parts = <String>[];
    if (adultCount > 0) parts.add('$adultCount Người lớn');
    if (childCount > 0) parts.add('$childCount Trẻ em');
    return parts.isEmpty ? 'N/A' : parts.join(', ');
  }

  String formatCurrency(double amount) {
    final str = amount.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    );
    return '$strđ';
  }

  void navigateToBookingDetail(BuildContext context) {
    context.push('/booking/$bookingId');
  }

  void navigateToHome() {
    _bookingViewModel.reset();
  }
}
