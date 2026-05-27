import 'package:travery_frontend/data/repositories/authentication/auth_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class ForgotPasswordViewModel {
  final AuthRepository _authRepository;

  ForgotPasswordViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    forgotPassword = Command1<void, String>(_forgotPassword);
  }

  late final Command1 forgotPassword;

  Future<Result<void>> _forgotPassword(String email) async {
    final result = await _authRepository.forgotPassword(email: email);
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);

      case Error<void>():
        return Result.error(result.error);
    }
  }
}
