import 'package:travery_frontend/data/repositories/auth_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:logging/logging.dart';
import 'package:travery_frontend/utils/core_result.dart';

class LoginViewModel {
  final AuthRepository _authRepository;

  LoginViewModel({required AuthRepository authRepository})
    : _authRepository = authRepository {
    loginViaEmail = Command1<void, (String email, String password)>(
      _loginViaEmail,
    );
  }

  late final Command1 loginViaEmail;

  Future<Result<void>> _loginViaEmail((String, String) credentials) async {
    final (email, password) = credentials;
    final result = await _authRepository.loginViaEmail(
      email: email,
      password: password,
    );
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);

      case Error<void>():
        return Result.error(result.error);
    }
  }
}
