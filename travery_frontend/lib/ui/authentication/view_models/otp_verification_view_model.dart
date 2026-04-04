import 'package:flutter/material.dart';
import 'package:travery_frontend/data/repositories/auth_repository.dart';

class OtpVerificationViewModel extends ChangeNotifier {
  final AuthRepository _authRepository;

  OtpVerificationViewModel(this._authRepository);

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  

  Future<bool> verifyOtp(String email, String otp) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      await _authRepository.verifyOtp(email, otp);
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

  Future<bool> resendOtp(String email) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    try {
      await _authRepository.resendOtp(email);
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