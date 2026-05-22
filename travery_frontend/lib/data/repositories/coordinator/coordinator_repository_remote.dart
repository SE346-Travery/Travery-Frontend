import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/data/services/api/coordinator_api_service.dart';
import 'package:travery_frontend/data/services/security_storage_service.dart';
import 'package:travery_frontend/data/services/api/model/coordinator/tour_instance_detail_response/tour_instance_detail_response.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorRepositoryRemote extends CoordinatorRepository {
  final CoordinatorApiService _apiService;
  final SecurityStorageService _securityStorageService;

  CoordinatorRepositoryRemote({
    required CoordinatorApiService apiService,
    required SecurityStorageService securityStorageService,
  }) : _apiService = apiService,
       _securityStorageService = securityStorageService;

  // ── Helpers ────────────────────────────────────────────────────────────────

  Future<String?> _getToken() => _securityStorageService.getAccessToken();

  CoordinatorTour _fromDetail(TourInstanceDetailResponse r) {
    return CoordinatorTour(
      id: r.id,
      tourName: r.tourName,
      destinationName: r.destinationName,
      pickupLocation: r.pickupLocation,
      startDate: r.startDate,
      endDate: r.endDate,
      minParticipants: r.minParticipants,
      maxParticipants: r.maxParticipants,
      currentParticipants: r.currentParticipants,
      status: r.status,
      guideId: r.guideId,
      guideName: r.guideName,
      guidePhone: r.guidePhone,
      coachId: r.coachId,
      coachLicensePlate: r.coachLicensePlate,
      coachType: r.coachType,
      driverId: r.driverId,
      driverName: r.driverName,
      driverPhone: r.driverPhone,
    );
  }

  // ── Repository Methods ────────────────────────────────────────────────────

  @override
  Future<Result<List<CoordinatorTour>>> getAllTours({
    String filter = 'all',
  }) async {
    try {
      final token = await _getToken();
      if (token == null) return Result.error(Exception('Not authenticated'));

      final result = await _apiService.getCoordinatorInstances(
        accessToken: token,
        filter: filter,
      );

      switch (result) {
        case Ok():
          // The list endpoint returns TourInstanceResponse (summary), so we
          // need to map to CoordinatorTour using the available summary fields.
          final tours = result.value.map((r) {
            return CoordinatorTour(
              id: r.id,
              tourName: '',
              destinationName: '',
              pickupLocation: '',
              startDate: r.startDate,
              endDate: r.endDate,
              minParticipants: 0,
              maxParticipants: r.availableSlots,
              currentParticipants: 0,
              status: r.status,
            );
          }).toList();
          notifyListeners();
          return Result.ok(tours);
        case Error():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<CoordinatorTour>> getTourById(String id) async {
    try {
      final token = await _getToken();
      if (token == null) return Result.error(Exception('Not authenticated'));

      final result = await _apiService.getCoordinatorInstanceById(
        accessToken: token,
        id: id,
      );

      switch (result) {
        case Ok():
          notifyListeners();
          return Result.ok(_fromDetail(result.value));
        case Error():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<CoordinatorTour>> createTourInstance({
    required String tourId,
    required String startDate,
    required String endDate,
  }) async {
    try {
      final token = await _getToken();
      if (token == null) return Result.error(Exception('Not authenticated'));

      final result = await _apiService.createCoordinatorInstance(
        accessToken: token,
        tourId: tourId,
        startDate: startDate,
        endDate: endDate,
      );

      switch (result) {
        case Ok():
          notifyListeners();
          return Result.ok(_fromDetail(result.value));
        case Error():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<CoordinatorTour>> updateTourInstance({
    required String id,
    String? guideId,
    String? coachId,
    String? driverId,
    String? startDate,
    String? endDate,
    String? status,
  }) async {
    try {
      final token = await _getToken();
      if (token == null) return Result.error(Exception('Not authenticated'));

      final result = await _apiService.updateCoordinatorInstance(
        accessToken: token,
        id: id,
        guideId: guideId,
        coachId: coachId,
        driverId: driverId,
        startDate: startDate,
        endDate: endDate,
        status: status,
      );

      switch (result) {
        case Ok():
          notifyListeners();
          return Result.ok(_fromDetail(result.value));
        case Error():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<CoordinatorTour>> updateTourInstanceStatus({
    required String id,
    required String status,
  }) async {
    try {
      final token = await _getToken();
      if (token == null) return Result.error(Exception('Not authenticated'));

      final result = await _apiService.updateCoordinatorInstanceStatus(
        accessToken: token,
        id: id,
        status: status,
      );

      switch (result) {
        case Ok():
          notifyListeners();
          return Result.ok(_fromDetail(result.value));
        case Error():
          return Result.error(result.error);
      }
    } on Exception catch (e) {
      return Result.error(e);
    }
  }

  // ── Stubbed methods for unused bottom sheets ─────────────────────────────
  @override
  Future<Result<List<CoordinatorHotel>>> getAllHotels() async {
    return const Result.ok([]);
  }

  @override
  Future<Result<List<CoordinatorDriver>>> getAllDrivers() async {
    return const Result.ok([]);
  }

  @override
  Future<Result<List<CoordinatorVehicle>>> getAllVehicles() async {
    return const Result.ok([]);
  }
}
