import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle.dart';

part 'vehicle_seat.freezed.dart';
part 'vehicle_seat.g.dart';

/// Seat configuration for a Vehicle.
@freezed
class VehicleSeat with _$VehicleSeat {
  const factory VehicleSeat({
    String? id,

    @JsonKey(name: 'vehicle_id') required String vehicleId,

    @JsonKey(name: 'seat_code') required String seatCode,

    @JsonKey(name: 'floor_number') int? floorNumber,

    required SeatRowZone rowZone,

    @JsonKey(name: 'is_available') @Default(true) bool isAvailable,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    Vehicle? vehicle,
  }) = _VehicleSeat;

  factory VehicleSeat.fromJson(Map<String, dynamic> json) =>
      _$VehicleSeatFromJson(json);
}

@JsonEnum()
enum SeatRowZone {
  @JsonValue('FRONT')
  front,
  @JsonValue('MIDDLE')
  middle,
  @JsonValue('REAR')
  rear,
}
