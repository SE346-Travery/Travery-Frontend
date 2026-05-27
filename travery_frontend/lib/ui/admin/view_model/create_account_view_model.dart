import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/admin/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

/// Payload type for [CreateAccountViewModel.createAccount].
typedef CreateAccountPayload = ({
  String name,
  String email,
  String employeeId,
  String role,
  bool isActive,
});

class CreateAccountViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  CreateAccountViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    createAccount = Command1<void, CreateAccountPayload>(_createAccount);
  }

  late final Command1<void, CreateAccountPayload> createAccount;

  Future<Result<void>> _createAccount(CreateAccountPayload payload) async {
    final result = await _adminRepository.createAccount(
      name: payload.name,
      email: payload.email,
      employeeId: payload.employeeId,
      role: payload.role,
      isActive: payload.isActive,
    );
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);
      case Error<void>():
        return Result.error(result.error);
    }
  }
}
