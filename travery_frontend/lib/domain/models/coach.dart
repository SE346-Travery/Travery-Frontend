import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach_seat.dart';
import 'coach_trip.dart';
import 'driver.dart';

part 'coach.freezed.dart';
part 'coach.g.dart';

/// Physical vehicle assets owned by Travery.
@freezed
class Coach with _$Coach {
  const factory Coach({
    String? id,

    @JsonKey(name: 'license_plate') required String licensePlate,

    required CoachType coachType,

    required int capacity,

    required CoachStatus status,

    @JsonKey(name: 'floor_count') int? floorCount,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    List<CoachSeat>? seats,
    List<CoachTrip>? trips,
  }) = _Coach;

  factory Coach.fromJson(Map<String, dynamic> json) => _$CoachFromJson(json);
}

@JsonEnum()
enum CoachType {
  @JsonValue('SEAT')
  seat,
  @JsonValue('BED')
  bed,
  @JsonValue('LIMOUSINE')
  limousine,
}

@JsonEnum()
enum CoachStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('MAINTENANCE')
  maintenance,
  @JsonValue('RETIRED')
  retired,
}
