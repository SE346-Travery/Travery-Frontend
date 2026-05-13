import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/business_coach/business_coach.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class VehicleManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  VehicleManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadVehicles = Command0<List<BusinessCoach>>(_loadVehicles);
  }

  late final Command0<List<BusinessCoach>> loadVehicles;

  Future<Result<List<BusinessCoach>>> _loadVehicles() async {
    final result = await _adminRepository.getAllVehicles();
    switch (result) {
      case Ok<List<BusinessCoach>>():
        return Result.ok(result.value);
      case Error<List<BusinessCoach>>():
        return Result.error(result.error);
    }
  }
}
