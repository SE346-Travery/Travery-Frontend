import 'package:flutter/material.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';

class RegisterViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  RegisterViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;
  
  Future<bool> register(String email, String password) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    try {
      await _authRepository.registerViaEmail(email, password);
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _isLoading = false;
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }
}