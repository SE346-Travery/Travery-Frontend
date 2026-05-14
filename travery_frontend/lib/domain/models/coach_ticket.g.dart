// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachTicketImpl _$$CoachTicketImplFromJson(Map<String, dynamic> json) =>
    _$CoachTicketImpl(
      id: json['id'] as String?,
      coachBookingId: json['coachBookingId'] as String,
      coachSeatId: json['coachSeatId'] as String,
      passengerName: json['passengerName'] as String?,
      passengerPhone: json['passengerPhone'] as String?,
      priceAtBooking: (json['priceAtBooking'] as num).toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      'coachBookingId': instance.coachBookingId,
      'coachSeatId': instance.coachSeatId,
      'passengerName': instance.passengerName,
      'passengerPhone': instance.passengerPhone,
      'priceAtBooking': instance.priceAtBooking,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'booking': instance.booking,
      'seat': instance.seat,
    };
