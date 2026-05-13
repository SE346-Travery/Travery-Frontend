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
@freezed
class CoachBooking with _$CoachBooking {
  const factory CoachBooking({
    String? id,

    required String userId,

    required String coachTripId,

    String? pickupStationId,

    String? dropoffStationId,

    required double totalPrice,

    DateTime? paymentDeadline,

    double? luggageWeight,

    String? specialRequests,

    String? noShowNote,

    DateTime? noShowAt,

    required CoachBookingStatus status,

    DateTime? cancelledAt,

    String? cancellationReason,

    String? cancelledBy,

    String? refundRequestId,

    DateTime? createdAt,

    DateTime? updatedAt,
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
