class AppConfig {
  /// Chỉ IP hoặc domain, KHÔNG có 'http://'.
  static const String host = '10.0.2.2';

  /// Port mà backend đang lắng nghe (Spring Boot default: 8080).
  static const int port = 8081;

  /// Remote API cho Auth
  static const String authHost = '103.75.183.243';
  static const int authPort = 80;

  static const int timeout = 10000;
}
