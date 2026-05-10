import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach.dart';
import 'driver.dart';
import 'hotel_booking.dart';
import 'staff.dart';
import 'tour.dart';
import 'tour_booking.dart';
import 'user.dart';

part 'tour_instance.freezed.dart';
part 'tour_instance.g.dart';

/// A real-world departure of a Tour on a specific date.
@freezed
class TourInstance with _$TourInstance {
  const factory TourInstance({
    String? id,

    @JsonKey(name: 'tour_id') required String tourId,

    @JsonKey(name: 'coordinator_id') String? coordinatorId,

    @JsonKey(name: 'guide_id') String? guideId,

    @JsonKey(name: 'coach_id') String? coachId,

    @JsonKey(name: 'driver_id') String? driverId,

    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,

    @JsonKey(name: 'start_date') required DateTime startDate,

    @JsonKey(name: 'end_date') required DateTime endDate,

    @JsonKey(name: 'min_participants') @Default(10) int minParticipants,

    @JsonKey(name: 'max_participants') @Default(30) int maxParticipants,

    @JsonKey(name: 'current_participants') @Default(0) int currentParticipants,

    required TourInstanceStatus status,

    @JsonKey(name: 'postponement_reason') String? postponementReason,

    @JsonKey(name: 'postponed_at') DateTime? postponedAt,

    @JsonKey(name: 'postponed_by') String? postponedBy,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'cancelled_by') String? cancelledBy,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    Tour? tour,
    User? coordinator,
    User? guide,
    Coach? coach,
    Driver? driver,
    HotelBooking? hotelBooking,
    List<TourBooking>? bookings,
  }) = _TourInstance;

  factory TourInstance.fromJson(Map<String, dynamic> json) =>
      _$TourInstanceFromJson(json);
}

@JsonEnum()
enum TourInstanceStatus {
  @JsonValue('PLANNING')
  planning,
  @JsonValue('OPEN')
  open,
  @JsonValue('FULL')
  full,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
}
