import 'package:freezed_annotation/freezed_annotation.dart';

import 'driver.dart';
import 'vehicle_seat.dart';

part 'vehicle.freezed.dart';
part 'vehicle.g.dart';

/// Represents a vehicle used for transporting passengers during a TourInstance.
@freezed
class Vehicle with _$Vehicle {
  const factory Vehicle({
    String? id,

    @JsonKey(name: 'license_plate') required String licensePlate,

    required VehicleType vehicleType,

    required int totalSeats,

    @JsonKey(name: 'floor_count') int? floorCount,

    required VehicleStatus status,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
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
