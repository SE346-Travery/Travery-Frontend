import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/admin_data_models.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class HotelManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  HotelManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadHotels = Command0<List<HotelData>>(_loadHotels);
  }

  late final Command0<List<HotelData>> loadHotels;

  Future<Result<List<HotelData>>> _loadHotels() async {
    final result = await _adminRepository.getAllHotels();
    switch (result) {
      case Ok<List<HotelData>>():
        return Result.ok(result.value);
      case Error<List<HotelData>>():
        return Result.error(result.error);
    }
  }
}
