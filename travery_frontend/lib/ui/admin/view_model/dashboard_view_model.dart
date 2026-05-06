import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/admin_data_models.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class DashboardViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  DashboardViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadStats = Command0<DashboardStats>(_loadStats);
  }

  late final Command0<DashboardStats> loadStats;

  Future<Result<DashboardStats>> _loadStats() async {
    final result = await _adminRepository.getDashboardStats();
    switch (result) {
      case Ok<DashboardStats>():
        return Result.ok(result.value);
      case Error<DashboardStats>():
        return Result.error(result.error);
    }
  }
}
