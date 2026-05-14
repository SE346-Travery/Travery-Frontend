import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';

class CoordinatorCoach {
  final String name;
  final CoordinatorVehicle vehicle;
  final CoordinatorDriver driver;
  final String departureTime;
  final int capacity;
  final String status;

  const CoordinatorCoach({
    required this.name,
    required this.vehicle,
    required this.driver,
    required this.departureTime,
    required this.capacity,
    required this.status,
  });
}
