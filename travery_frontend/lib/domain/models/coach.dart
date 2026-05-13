import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach_seat.dart';
import 'coach_trip.dart';
import 'driver.dart';

part 'coach.freezed.dart';
part 'coach.g.dart';
@freezed
class Coach with _$Coach {
  const factory Coach({
    String? id,

    required String licensePlate,

    required CoachType coachType,

    required int capacity,

    required CoachStatus status,

    int? floorCount,

    DateTime? createdAt,

    DateTime? updatedAt,
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
