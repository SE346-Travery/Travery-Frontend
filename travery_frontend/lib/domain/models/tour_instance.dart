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
@freezed
class TourInstance with _$TourInstance {
  const factory TourInstance({
    String? id,

    required String tourId,

    String? coordinatorId,

    String? guideId,

    String? coachId,

    String? driverId,

    String? hotelBookingId,

    required DateTime startDate,

    required DateTime endDate,

    @Default(10) int minParticipants,

    @Default(30) int maxParticipants,

    @Default(0) int currentParticipants,

    required TourInstanceStatus status,

    String? postponementReason,

    DateTime? postponedAt,

    String? postponedBy,

    DateTime? cancelledAt,

    String? cancellationReason,

    String? cancelledBy,

    DateTime? createdAt,

    DateTime? updatedAt,
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
