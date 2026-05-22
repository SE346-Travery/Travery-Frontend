import 'package:flutter/foundation.dart';
import 'package:travery_frontend/utils/core_result.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';

abstract class CoordinatorRepository extends ChangeNotifier {
  /// GET /api/v1/staff/coordinator/instances
  Future<Result<List<CoordinatorTour>>> getAllTours({String filter = 'all'});

  /// GET /api/v1/staff/coordinator/instances/{id}
  Future<Result<CoordinatorTour>> getTourById(String id);

  /// POST /api/v1/staff/coordinator/instances
  Future<Result<CoordinatorTour>> createTourInstance({
    required String tourId,
    required String startDate,
    required String endDate,
  });

  /// PATCH /api/v1/staff/coordinator/instances/{id}
  Future<Result<CoordinatorTour>> updateTourInstance({
    required String id,
    String? guideId,
    String? coachId,
    String? driverId,
    String? startDate,
    String? endDate,
    String? status,
  });

  /// PATCH /api/v1/staff/coordinator/instances/{id}/status
  Future<Result<CoordinatorTour>> updateTourInstanceStatus({
    required String id,
    required String status,
  });

  // ── Stubbed methods for unused bottom sheets ─────────────────────────────
  Future<Result<List<CoordinatorHotel>>> getAllHotels();
  Future<Result<List<CoordinatorDriver>>> getAllDrivers();
  Future<Result<List<CoordinatorVehicle>>> getAllVehicles();
}
