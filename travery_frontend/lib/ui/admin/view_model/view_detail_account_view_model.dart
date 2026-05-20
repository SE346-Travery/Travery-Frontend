import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/business_account/business_account.dart';
import 'package:travery_frontend/data/repositories/admin/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class ViewDetailAccountViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  ViewDetailAccountViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadAccount = Command1<BusinessAccount, String>(_loadAccount);
  }

  late final Command1<BusinessAccount, String> loadAccount;

  Future<Result<BusinessAccount>> _loadAccount(String id) async {
    final result = await _adminRepository.getAccount(id: id);
    switch (result) {
      case Ok<BusinessAccount>():
        return Result.ok(result.value);
      case Error<BusinessAccount>():
        return Result.error(result.error);
    }
  }
}
