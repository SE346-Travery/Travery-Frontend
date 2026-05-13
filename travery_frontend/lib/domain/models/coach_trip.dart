import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach.dart';
import 'coach_booking.dart';
import 'driver.dart';
import 'route.dart';
import 'user.dart';

part 'coach_trip.freezed.dart';
part 'coach_trip.g.dart';
@freezed
class CoachTrip with _$CoachTrip {
  const factory CoachTrip({
    String? id,

    required String routeId,

    required String coachId,

    String? driverId,

    String? coordinatorId,

    required DateTime departureTime,

    DateTime? arrivalTime,

    required CoachTripStatus status,

    DateTime? cancelledAt,

    String? cancellationReason,

    String? cancelledBy,

    DateTime? createdAt,

    DateTime? updatedAt,
    Route? route,
    Coach? coach,
    Driver? driver,
    User? coordinator,
    List<CoachBooking>? bookings,
  }) = _CoachTrip;

  factory CoachTrip.fromJson(Map<String, dynamic> json) =>
      _$CoachTripFromJson(json);
}

@JsonEnum()
enum CoachTripStatus {
  @JsonValue('SCHEDULED')
  scheduled,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
}
