import 'package:travery_frontend/data/repositories/authentication/auth_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class RegisterViewModel {
  final AuthRepository _authRepository;

  RegisterViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    register = Command1<void, (String, String, String, String)>(_register);
  }

  late final Command1<void, (String, String, String, String)> register;

  Future<Result<void>> _register(
    (String, String, String, String) credentials,
  ) async {
    final (email, password, confirmPassword, fullName) = credentials;
    final result = await _authRepository.registerViaEmail(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      fullName: fullName,
    );
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);

      case Error<void>():
        return Result.error(result.error);
    }
  }
}
