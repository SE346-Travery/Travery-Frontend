import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach_booking.dart';
import 'coach_seat.dart';

part 'coach_ticket.freezed.dart';
part 'coach_ticket.g.dart';

/// Specific ticket for an individual seat on a CoachTrip.
@freezed
class CoachTicket with _$CoachTicket {
  const factory CoachTicket({
    String? id,

    @JsonKey(name: 'coach_booking_id') required String coachBookingId,

    @JsonKey(name: 'coach_seat_id') required String coachSeatId,

    @JsonKey(name: 'passenger_name') String? passengerName,

    @JsonKey(name: 'passenger_phone') String? passengerPhone,

    @JsonKey(name: 'price_at_booking') required double priceAtBooking,

    @JsonKey(name: 'is_checked_in') @Default(false) bool isCheckedIn,

    @JsonKey(name: 'checked_in_at') DateTime? checkedInAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    CoachBooking? booking,
    CoachSeat? seat,
  }) = _CoachTicket;

  factory CoachTicket.fromJson(Map<String, dynamic> json) =>
      _$CoachTicketFromJson(json);
}
