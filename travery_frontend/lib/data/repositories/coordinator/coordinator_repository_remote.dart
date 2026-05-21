import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_station/coordinator_station.dart';
import 'package:travery_frontend/utils/core_result.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_coach/coordinator_coach.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_guide/coordinator_guilde.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';

class CoordinatorRepositoryRemote extends CoordinatorRepository {
  @override
  Future<Result<List<CoordinatorTour>>> getAllTours() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorCoach>>> getAllCoaches() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorVehicle>>> getAllVehicles() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorDriver>>> getAllDrivers() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorHotel>>> getAllHotels() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorGuide>>> getAllGuides() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorTourTemplate>>> getAllTemplates() {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CoordinatorStation>>> getAllStations() {
    throw UnimplementedError();
  }
}
