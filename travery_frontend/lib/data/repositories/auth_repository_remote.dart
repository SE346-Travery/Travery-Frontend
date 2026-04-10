import 'auth_repository.dart';
import 'package:travery_frontend/data/services/auth_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';

class AuthRepositoryRemote implements AuthRepository {
  final AuthService _authService;
  final SecurityStorageService _securityStorageService;

  bool _isLoggedIn = false;

  AuthRepositoryRemote({
    required AuthService authService,
    required SecurityStorageService securityStorageService,
  }) : _authService = authService,
       _securityStorageService = securityStorageService;
  
  @override
  bool get isLoggedIn => _isLoggedIn;

  @override
  Future<bool> login(String email, String password) async {
    try {
      // Gọi API đăng nhập
      final response = await _authService.login(email, password);

      // Lưu token vào storage
      await _securityStorageService.saveToken(response.accessToken);
      await _securityStorageService.saveToken(response.refreshToken);

      _isLoggedIn = true;

      return true;
    } catch (e) {
      return false;
    }
  }
}