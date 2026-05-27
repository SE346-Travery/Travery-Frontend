import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/business_hotel/business_hotel.dart';
import 'package:travery_frontend/data/repositories/admin/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class HotelManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  HotelManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadHotels = Command0<List<BusinessHotel>>(_loadHotels);
  }

  late final Command0<List<BusinessHotel>> loadHotels;

  Future<Result<List<BusinessHotel>>> _loadHotels() async {
    final result = await _adminRepository.getAllHotels();
    switch (result) {
      case Ok<List<BusinessHotel>>():
        return Result.ok(result.value);
      case Error<List<BusinessHotel>>():
        return Result.error(result.error);
    }
  }
}
