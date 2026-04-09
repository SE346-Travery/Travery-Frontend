class Routes {
  // Authentication nhóm
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String forgotPassword = '/forgot-password';
  static const String confirmPassword = '/confirm-password';

  static const String homepage = '/homepage';
  static const String tourlist = '/tourlist';
  static const String tourdetail = '/tourdetail/:tourid';
  static const String tourbookinginput = '/booking/:tourid';


  // Main Features nhóm
  static const String home = '/home';

  /* HƯỚNG DẪN: Khi thêm Repository/Feature mới (ví dụ: Hotel, Car):
  Hãy thêm các hằng số đường dẫn vào đây.
  static const String hotelList = '/hotels';
  static const String hotelDetail = '/hotel/:id'; // :id là tham số truyền vào
  */
}
