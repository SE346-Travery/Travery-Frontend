import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/account/account.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class ViewDetailAccountViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  ViewDetailAccountViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadAccount = Command1<Account, String>(_loadAccount);
  }

  late final Command1<Account, String> loadAccount;

  Future<Result<Account>> _loadAccount(String id) async {
    final result = await _adminRepository.getAccount(id: id);
    switch (result) {
      case Ok<Account>():
        return Result.ok(result.value);
      case Error<Account>():
        return Result.error(result.error);
    }
  }
}
