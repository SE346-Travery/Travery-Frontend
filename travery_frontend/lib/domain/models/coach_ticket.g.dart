// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachTicketImpl _$$CoachTicketImplFromJson(Map<String, dynamic> json) =>
    _$CoachTicketImpl(
      id: json['id'] as String?,
      coachBookingId: json['coach_booking_id'] as String,
      coachSeatId: json['coach_seat_id'] as String,
      passengerName: json['passenger_name'] as String?,
      passengerPhone: json['passenger_phone'] as String?,
      priceAtBooking: (json['price_at_booking'] as num).toDouble(),
      isCheckedIn: json['is_checked_in'] as bool? ?? false,
      checkedInAt: json['checked_in_at'] == null
          ? null
          : DateTime.parse(json['checked_in_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      booking: json['booking'] == null
          ? null
          : CoachBooking.fromJson(json['booking'] as Map<String, dynamic>),
      seat: json['seat'] == null
          ? null
          : CoachSeat.fromJson(json['seat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoachTicketImplToJson(_$CoachTicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coach_booking_id': instance.coachBookingId,
      'coach_seat_id': instance.coachSeatId,
      'passenger_name': instance.passengerName,
      'passenger_phone': instance.passengerPhone,
      'price_at_booking': instance.priceAtBooking,
      'is_checked_in': instance.isCheckedIn,
      'checked_in_at': instance.checkedInAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'booking': instance.booking,
      'seat': instance.seat,
    };
