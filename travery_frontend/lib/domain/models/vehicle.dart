import 'package:freezed_annotation/freezed_annotation.dart';

import 'driver.dart';
import 'vehicle_seat.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';
@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    String? id,

    required String licensePlate,

    required VehicleType vehicleType,

    required int totalSeats,

    int? floorCount,

    required VehicleStatus status,

    DateTime? createdAt,

    DateTime? updatedAt,
    List<VehicleSeat>? seats,
    List<Driver>? assignedDrivers,
  }) = _Vehicle;

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);
}

@JsonEnum()
enum VehicleType {
  @JsonValue('SEAT')
  seat,
  @JsonValue('SLEEPER')
  sleeper,
  @JsonValue('LIMOUSINE')
  limousine,
}

@JsonEnum()
enum VehicleStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('MAINTENANCE')
  maintenance,
  @JsonValue('RETIRED')
  retired,
}
