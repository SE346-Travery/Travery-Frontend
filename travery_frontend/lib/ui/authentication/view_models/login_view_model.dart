import 'package:flutter/material.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';

class LoginViewModel extends ChangeNotifier{
  final AuthRepository _authRepository;
  LoginViewModel({required AuthRepository authRepository}) : _authRepository = authRepository;
  
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<bool> login(String email, String password) async {
    try {
      _isLoading = true;
      _errorMessage = null;
      notifyListeners();
      
      final success = await _authRepository.login(email, password);
      
      if (success) {
        return true;
      } else {
        _errorMessage = 'Đăng nhập thất bại';
        notifyListeners();
        return false;
      }
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }
}