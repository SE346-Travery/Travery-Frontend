import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/dashboard/dashboard.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class DashboardViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  DashboardViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadStats = Command0<Dashboard>(_loadStats);
  }

  late final Command0<Dashboard> loadStats;

  Future<Result<Dashboard>> _loadStats() async {
    final result = await _adminRepository.getDashboardStats();
    switch (result) {
      case Ok<Dashboard>():
        return Result.ok(result.value);
      case Error<Dashboard>():
        return Result.error(result.error);
    }
  }
}
