class Routes {
  // Authentication nhóm
  static const String splash = '/splash';
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String forgotPassword = '/forgot-password';
  static const String confirmPassword = '/confirm-password';

  // Main Features nhóm
  static const String home = '/home';
  static const String testHome = '/test-home';

  // Tour nhóm
  static const String tourList = '/tours';
  static const String tourDetail = '/tour/:id';
  static const String tourBooking = '/tour/:id/book';
  static const String tourBookingReview = '/tour/:id/book/review';
  static const String vnpayPayment = '/payment/vnpay';
  static const String bookingSuccess = '/payment/success';
  static const String bookingDetail = '/booking/:id';

  // Receptionist nhóm
  static const String receptionistDashboard = '/receptionist/dashboard';

  /* HƯỚNG DẪN: Khi thêm Repository/Feature mới (ví dụ: Hotel, Car):
  Hãy thêm các hằng số đường dẫn vào đây.
  static const String hotelList = '/hotels';
  static const String hotelDetail = '/hotel/:id'; // :id là tham số truyền vào
  */
}
