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
      await _securityStorageService.saveToken(response.accessToken);
      await _securityStorageService.saveToken(response.refreshToken);
      
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> registerViaEmail(String email, String password) async {
    try {
      // Gọi API đăng ký
      final response = await _authService.register(email, password);
      // Lưu token vào storage
      await _securityStorageService.saveToken(response.accessToken);
      await _securityStorageService.saveToken(response.refreshToken);
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
  Future<void> logout() async {
    try {
      // Gọi API logout
      await _authService.logout();
      // Xóa tokens trong storage bằng hàm deleteToken hoặc tương tự
      // giả sử có hàm deleteToken hoặc deleteTokens trong SecurityStorageService.
      // Nếu không có, bạn có thể gọi lưu null:
      // await _securityStorageService.saveToken(null);
    } catch (e) {
      // Dù gọi API lỗi hay không, thường khi logout ở client chúng ta vẫn xoá token.
      rethrow;
    }
  }
}