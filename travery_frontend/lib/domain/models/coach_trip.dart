import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach.dart';
import 'coach_booking.dart';
import 'driver.dart';
import 'route.dart';
import 'user.dart';

part 'coach_trip.freezed.dart';
part 'coach_trip.g.dart';

/// A real-world execution of a Route on a specific time.
@freezed
class CoachTrip with _$CoachTrip {
  const factory CoachTrip({
    String? id,

    @JsonKey(name: 'route_id') required String routeId,

    @JsonKey(name: 'coach_id') required String coachId,

    @JsonKey(name: 'driver_id') String? driverId,

    @JsonKey(name: 'coordinator_id') String? coordinatorId,

    @JsonKey(name: 'departure_time') required DateTime departureTime,

    @JsonKey(name: 'arrival_time') DateTime? arrivalTime,

    @JsonKey(name: 'status') required CoachTripStatus status,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'cancelled_by') String? cancelledBy,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
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
