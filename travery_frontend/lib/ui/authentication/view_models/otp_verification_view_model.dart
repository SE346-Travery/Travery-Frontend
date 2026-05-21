import 'package:travery_frontend/data/repositories/authentication/auth_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class OtpVerificationViewModel {
  final AuthRepository _authRepository;

  OtpVerificationViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    verifyOtp = Command1<void, (String, String)>(_verifyOtp);
    resendOtp = Command1<void, String>(_resendOtp);
    confirmPassword = Command1<void, (String, String, String, String)>(
      _confirmPassword,
    );
  }

  late final Command1 verifyOtp;
  late final Command1 resendOtp;
  late final Command1 confirmPassword;

  Future<Result<void>> _verifyOtp((String, String) args) async {
    final (email, otp) = args;
    final result = await _authRepository.verifyOtp(email: email, otp: otp);
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);

      case Error<void>():
        return Result.error(result.error);
    }
  }

  Future<Result<void>> _resendOtp(String email) async {
    final result = await _authRepository.resendOtp(email: email);
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);

      case Error<void>():
        return Result.error(result.error);
    }
  }

  Future<Result<void>> _confirmPassword(
    (String, String, String, String) args,
  ) async {
    final (email, otp, confirmPassword, newPassword) = args;
    final result = await _authRepository.resetPassword(
      email: email,
      otp: otp,
      confirmPassword: confirmPassword,
      newPassword: newPassword,
    );
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);

      case Error<void>():
        return Result.error(result.error);
    }
  }
}
