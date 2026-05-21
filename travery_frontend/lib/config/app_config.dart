class AppConfig {
  /// Chỉ IP hoặc domain, KHÔNG có 'http://'.
  static const String host = '103.75.183.243';

  /// Port mà backend đang lắng nghe (Spring Boot default: 8080).
  static const int port = 80;

  static const int timeout = 10000;
}
