import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class ConfirmPasswordViewModel {
  final AuthRepository _authRepository;

  ConfirmPasswordViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    confirmPassword = Command1<void, (String, String, String, String)>(
      _confirmPassword,
    );
  }

  late final Command1 confirmPassword;

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
