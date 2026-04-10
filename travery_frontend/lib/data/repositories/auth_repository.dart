import 'package:flutter/foundation.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class AuthRepository extends ChangeNotifier {
  Future<Result<void>> loginViaEmail({
    required String email,
    required String password,
  });
  Future<Result<void>> registerViaEmail({
    required String email,
    required String password,
    required String confirmPassword,
    required String fullName,
  });
  Future<Result<void>> forgotPassword({required String email});
  Future<Result<void>> verifyOtp({required String email, required String otp});
  Future<Result<void>> resendOtp({required String email});
  Future<Result<void>> logout({required String refreshToken});
  Future<Result<void>> resetPassword({
    required String email,
    required String otp,
    required String confirmPassword,
    required String newPassword,
  });
}
