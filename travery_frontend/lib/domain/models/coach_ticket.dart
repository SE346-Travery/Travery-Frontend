import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach_booking.dart';
import 'coach_seat.dart';

part 'coach_ticket.freezed.dart';
part 'coach_ticket.g.dart';
@freezed
class CoachTicket with _$CoachTicket {
  const factory CoachTicket({
    String? id,
    required String coachBookingId,
    required String coachSeatId,
    String? passengerName,
    String? passengerPhone,
    required double priceAtBooking,
    DateTime? createdAt,
    DateTime? updatedAt,
    CoachBooking? booking,
    CoachSeat? seat,
  }) = _CoachTicket;

  factory CoachTicket.fromJson(Map<String, dynamic> json) =>
      _$CoachTicketFromJson(json);
}
