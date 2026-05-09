import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';

class BookingSuccessViewModel extends ChangeNotifier {
  final BookingViewModel _bookingViewModel;

  BookingSuccessViewModel({required BookingViewModel bookingViewModel})
    : _bookingViewModel = bookingViewModel {
    _generateBookingCode();
  }

  Tour? get tour => _bookingViewModel.tour;
  TourInstance? get selectedInstance => _bookingViewModel.selectedInstance;
  String get contactName => _bookingViewModel.contactName;
  String get contactPhone => _bookingViewModel.contactPhone;
  double get totalPrice => _bookingViewModel.totalPrice;
  int get adultCount => _bookingViewModel.adultCount;
  int get childCount => _bookingViewModel.childCount;

  String _bookingCode = '';
  String get bookingCode => _bookingCode;

  void _generateBookingCode() {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final shortCode = timestamp.substring(timestamp.length - 6);
    _bookingCode = 'TRV-$shortCode-VN';
    notifyListeners();
  }

  String get formattedDate {
    if (selectedInstance == null) return 'N/A';
    final date = selectedInstance!.startDate;
    final months = [
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
    return '${date.day} ${months[date.month - 1]}, ${date.year}';
  }

  String get guestSummary {
    final parts = <String>[];
    if (adultCount > 0) {
      parts.add('$adultCount Người lớn');
    }
    if (childCount > 0) {
      parts.add('$childCount Trẻ em');
    }
    return parts.join(', ');
  }

  void navigateToBookingDetail(BuildContext context) {
    final bookingId = _bookingViewModel.bookingId ?? _bookingCode;
    context.push('/booking/$bookingId');
  }

  void navigateToHome() {
    // TODO: Navigate to home
  }
}
