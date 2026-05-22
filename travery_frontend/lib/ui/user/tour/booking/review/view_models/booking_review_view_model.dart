import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/tour/tour_detail_page_data.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';

class BookingReviewViewModel extends ChangeNotifier {
  final BookingViewModel _bookingViewModel;

  BookingReviewViewModel({required BookingViewModel bookingViewModel})
    : _bookingViewModel = bookingViewModel;

  TourDetailPageData? get tour => _bookingViewModel.tour;
  TourInstance? get selectedInstance => _bookingViewModel.selectedInstance;
  String get contactName => _bookingViewModel.contactName;
  String get contactPhone => _bookingViewModel.contactPhone;
  String get specialNotes => _bookingViewModel.specialNotes;
  List<MemberInfo> get members => _bookingViewModel.members;
  int get adultCount => _bookingViewModel.adultCount;
  int get childCount => _bookingViewModel.childCount;
  int get totalMembers => _bookingViewModel.totalMembers;
  double get totalPrice => _bookingViewModel.totalPrice;

  String get dateRange {
    if (selectedInstance == null) return 'N/A';
    final startDate = _formatDate(selectedInstance!.startDate);
    final endDate = _formatDate(selectedInstance!.endDate);
    return '$startDate - $endDate';
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  void navigateToPayment() {
    // TODO: Implement navigation to payment screen
  }

  void navigateBack() {
    // TODO: Navigate back to booking screen
  }
}
