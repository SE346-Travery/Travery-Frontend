import 'package:flutter/material.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';

class ForgotPasswordViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  ForgotPasswordViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<bool> forgotPassword(String email) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      await _authRepository.forgotPassword(email);
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