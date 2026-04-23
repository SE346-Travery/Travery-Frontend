class Routes {
  // Authentication nhóm
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String forgotPassword = '/forgot-password';
  static const String confirmPassword = '/confirm-password';
  static const String roleSelection = '/role-selection';

  // Main Features nhóm
  static const String home = '/home';
  static const String testHome = '/test-home';
  static const String tourHome = '/tour-home';

  // Tour nhóm
  static const String tourList = '/tours';
  static const String tourDetail = '/tour/:id';
  static const String tourBooking = '/tour/:id/book';
  static const String tourBookingReview = '/tour/:id/book/review';
  static const String vnpayPayment = '/payment/vnpay';
  static const String bookingSuccess = '/payment/success';
  static const String bookingDetail = '/booking/:id';

  // Booking Detail
  static const String bookingDetailScreen = '/booking-detail';

  // Cancel Confirmation
  static const String cancelConfirmation = '/booking/:id/cancel';

  // Cancellation Success
  static const String cancellationSuccess = '/booking/:id/cancel/success';

  // Coordinator
  static const String coordinatorHome = '/coordinator-home';

  // Guide
  static const String guideHome = '/guide/home';
  static const String missionDetail = '/guide/mission/:id';
  static const String checkIn = '/guide/mission/:id/check-in';
  static const String tourProgress = '/guide/mission/:id/progress';
  static const String tourCompleted = '/guide/mission/:id/completed';
}
