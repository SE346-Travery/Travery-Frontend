import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/business_dashboard/business_dashboard.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class DashboardViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  DashboardViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadStats = Command0<BusinessDashboard>(_loadStats);
  }

  late final Command0<BusinessDashboard> loadStats;

  Future<Result<BusinessDashboard>> _loadStats() async {
    final result = await _adminRepository.getDashboardStats();
    switch (result) {
      case Ok<BusinessDashboard>():
        return Result.ok(result.value);
      case Error<BusinessDashboard>():
        return Result.error(result.error);
    }
  }
}
