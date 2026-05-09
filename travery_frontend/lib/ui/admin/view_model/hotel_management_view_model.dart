import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/hotel/hotel.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class HotelManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  HotelManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadHotels = Command0<List<Hotel>>(_loadHotels);
  }

  late final Command0<List<Hotel>> loadHotels;

  Future<Result<List<Hotel>>> _loadHotels() async {
    final result = await _adminRepository.getAllHotels();
    switch (result) {
      case Ok<List<Hotel>>():
        return Result.ok(result.value);
      case Error<List<Hotel>>():
        return Result.error(result.error);
    }
  }
}
