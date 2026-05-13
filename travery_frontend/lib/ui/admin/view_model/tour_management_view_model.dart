import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/admin/business_tour/business_tour.dart';
import 'package:travery_frontend/domain/models/admin/tour_summary/tour_summary.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourManagementViewModel extends ChangeNotifier {
  final AdminRepository _adminRepository;

  TourManagementViewModel({required AdminRepository adminRepository})
    : _adminRepository = adminRepository {
    loadTours = Command0<List<BusinessTour>>(_loadTours);
    loadSummaryStats = Command0<TourSummary>(_loadSummaryStats);
  }

  late final Command0<List<BusinessTour>> loadTours;
  late final Command0<TourSummary> loadSummaryStats;

  Future<Result<List<BusinessTour>>> _loadTours() async {
    final result = await _adminRepository.getAllTours();
    switch (result) {
      case Ok<List<BusinessTour>>():
        return Result.ok(result.value);
      case Error<List<BusinessTour>>():
        return Result.error(result.error);
    }
  }

  Future<Result<TourSummary>> _loadSummaryStats() async {
    final result = await _adminRepository.getTourSummaryStats();
    switch (result) {
      case Ok<TourSummary>():
        return Result.ok(result.value);
      case Error<TourSummary>():
        return Result.error(result.error);
    }
  }
}
