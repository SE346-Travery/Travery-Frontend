import 'package:freezed_annotation/freezed_annotation.dart';

import 'vehicle.dart';

part 'vehicle_seat.freezed.dart';
part 'vehicle_seat.g.dart';
@freezed
class VehicleSeat with _$VehicleSeat {
  const factory VehicleSeat({
    String? id,

    required String vehicleId,

    required String seatCode,

    int? floorNumber,

    required SeatRowZone rowZone,

    @Default(true) bool isAvailable,

    DateTime? createdAt,

    DateTime? updatedAt,
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
