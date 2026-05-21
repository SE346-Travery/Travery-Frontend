import 'package:flutter/foundation.dart';
import 'package:travery_frontend/utils/core_result.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_coach/coordinator_coach.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_guide/coordinator_guilde.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_template_initerary/coordinator_template_initerary.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_member/coordinator_tour_member.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_station/coordinator_station.dart';

abstract class CoordinatorRepository extends ChangeNotifier {
  Future<Result<List<CoordinatorTour>>> getAllTours();
  Future<Result<List<CoordinatorCoach>>> getAllCoaches();
  Future<Result<List<CoordinatorVehicle>>> getAllVehicles();
  Future<Result<List<CoordinatorDriver>>> getAllDrivers();
  Future<Result<List<CoordinatorHotel>>> getAllHotels();
  Future<Result<List<CoordinatorGuide>>> getAllGuides();
  Future<Result<List<CoordinatorTourTemplate>>> getAllTemplates();
  Future<Result<List<CoordinatorStation>>> getAllStations();
}
