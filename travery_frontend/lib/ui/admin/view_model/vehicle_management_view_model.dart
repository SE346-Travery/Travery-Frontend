import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/coach/coach.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class VehicleManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  VehicleManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadVehicles = Command0<List<Coach>>(_loadVehicles);
  }

  late final Command0<List<Coach>> loadVehicles;

  Future<Result<List<Coach>>> _loadVehicles() async {
    final result = await _adminRepository.getAllVehicles();
    switch (result) {
      case Ok<List<Coach>>():
        return Result.ok(result.value);
      case Error<List<Coach>>():
        return Result.error(result.error);
    }
  }
}
