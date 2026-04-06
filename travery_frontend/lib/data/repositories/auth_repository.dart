abstract class AuthRepository {
  Future<void> loginViaEmail(String email, String password);
  Future<void> registerViaEmail(
    String email,
    String password,
    String confirmPassword,
    String fullName,
  );
  Future<void> forgotPassword(String email);
  Future<void> verifyOtp(String email, String otp);
  Future<void> resendOtp(String email);
  Future<void> logout();
}
