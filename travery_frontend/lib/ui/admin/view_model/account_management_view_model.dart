import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/account/account.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class AccountManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  AccountManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadAccounts = Command0<List<Account>>(_loadAccounts);
    deleteAccount = Command1<void, String>(_deleteAccount);
  }

  late final Command0<List<Account>> loadAccounts;
  late final Command1<void, String> deleteAccount;

  Future<Result<List<Account>>> _loadAccounts() async {
    final result = await _adminRepository.getAllAccounts();
    switch (result) {
      case Ok<List<Account>>():
        return Result.ok(result.value);
      case Error<List<Account>>():
        return Result.error(result.error);
    }
  }

  Future<Result<void>> _deleteAccount(String id) async {
    final result = await _adminRepository.deleteAccount(id: id);
    switch (result) {
      case Ok<void>():
        return const Result.ok(null);
      case Error<void>():
        return Result.error(result.error);
    }
  }
}
