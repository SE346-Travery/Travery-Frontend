import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/admin_data_models.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  TourManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadTours = Command0<List<TourData>>(_loadTours);
    loadSummaryStats = Command0<TourSummaryStats>(_loadSummaryStats);
  }

  late final Command0<List<TourData>> loadTours;
  late final Command0<TourSummaryStats> loadSummaryStats;

  Future<Result<List<TourData>>> _loadTours() async {
    final result = await _adminRepository.getAllTours();
    switch (result) {
      case Ok<List<TourData>>():
        return Result.ok(result.value);
      case Error<List<TourData>>():
        return Result.error(result.error);
    }
  }

  Future<Result<TourSummaryStats>> _loadSummaryStats() async {
    final result = await _adminRepository.getTourSummaryStats();
    switch (result) {
      case Ok<TourSummaryStats>():
        return Result.ok(result.value);
      case Error<TourSummaryStats>():
        return Result.error(result.error);
    }
  }
}
