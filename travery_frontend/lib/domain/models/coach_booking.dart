import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach.dart';
import 'coach_seat.dart';
import 'coach_ticket.dart';
import 'coach_trip.dart';
import 'payment_transaction.dart';
import 'refund_request.dart';
import 'route.dart';
import 'station.dart';
import 'user.dart';

part 'coach_booking.freezed.dart';
part 'coach_booking.g.dart';

/// A reservation for tickets on a CoachTrip.
@freezed
class CoachBooking with _$CoachBooking {
  const factory CoachBooking({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'coach_trip_id') required String coachTripId,

    @JsonKey(name: 'pickup_station_id') String? pickupStationId,

    @JsonKey(name: 'dropoff_station_id') String? dropoffStationId,

    @JsonKey(name: 'total_price') required double totalPrice,

    @JsonKey(name: 'payment_deadline') DateTime? paymentDeadline,

    @JsonKey(name: 'luggage_weight') double? luggageWeight,

    @JsonKey(name: 'special_requests') String? specialRequests,

    @JsonKey(name: 'no_show_note') String? noShowNote,

    @JsonKey(name: 'no_show_at') DateTime? noShowAt,

    required CoachBookingStatus status,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'cancelled_by') String? cancelledBy,

    @JsonKey(name: 'refund_request_id') String? refundRequestId,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    User? user,
    CoachTrip? coachTrip,
    Station? pickupStation,
    Station? dropoffStation,
    List<CoachTicket>? tickets,
    List<PaymentTransaction>? payments,
    RefundRequest? refundRequest,
  }) = _CoachBooking;

  factory CoachBooking.fromJson(Map<String, dynamic> json) =>
      _$CoachBookingFromJson(json);
}

@JsonEnum()
enum CoachBookingStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('PAID')
  paid,
  @JsonValue('CONFIRMED')
  confirmed,
  @JsonValue('BOARDED')
  boarded,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('NO_SHOW')
  noShow,
}
