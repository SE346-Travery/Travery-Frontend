import 'auth_repository.dart';
import 'package:travery_frontend/data/services/auth_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';

class AuthRepositoryRemote implements AuthRepository {
  final AuthService _authService;
  final SecurityStorageService _securityStorageService;

  AuthRepositoryRemote({
    required AuthService authService,
    required SecurityStorageService securityStorageService,
  }) : _authService = authService,
       _securityStorageService = securityStorageService;

  @override
  Future<void> loginViaEmail(String email, String password) async {
    try {
      // Gọi API đăng nhập
      final response = await _authService.loginViaEmail(email, password);
      // Lưu token vào storage
      await _securityStorageService.saveAccessToken(response.accessToken);
      await _securityStorageService.saveRefreshToken(response.refreshToken);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> registerViaEmail(
    String email,
    String password,
    String confirmPassword,
    String fullName,
  ) async {
    try {
      // Gọi API đăng ký
      await _authService.register(email, password, confirmPassword, fullName);
      // Đăng ký xong chưa có token, phải đợi xác thực OTP xong mới có thể login.
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    try {
      await _authService.forgotPassword(email);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> verifyOtp(String email, String otp) async {
    try {
      await _authService.verifyOtp(email, otp);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resendOtp(String email) async {
    try {
      await _authService.resendOtp(email);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> resetPassword(
    String email,
    String otp,
    String confirmPassword,
    String newPassword,
  ) async {
    try {
      await _authService.resetPassword(
        email,
        otp,
        confirmPassword,
        newPassword,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logout(String refreshToken) async {
    try {
      // Gọi API logout
      await _authService.logout(refreshToken);
      await _securityStorageService.deleteAccessToken();
      await _securityStorageService.deleteRefreshToken();
    } catch (e) {
      rethrow;
    }
  }
}
