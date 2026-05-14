// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachBookingImpl _$$CoachBookingImplFromJson(Map<String, dynamic> json) =>
    _$CoachBookingImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      coachTripId: json['coachTripId'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      paymentDeadline: json['paymentDeadline'] == null
          ? null
          : DateTime.parse(json['paymentDeadline'] as String),
      status: $enumDecode(_$CoachBookingStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      coachTrip: json['coachTrip'] == null
          ? null
          : CoachTrip.fromJson(json['coachTrip'] as Map<String, dynamic>),
      pickupStation: json['pickupStation'] == null
          ? null
          : Station.fromJson(json['pickupStation'] as Map<String, dynamic>),
      dropoffStation: json['dropoffStation'] == null
          ? null
          : Station.fromJson(json['dropoffStation'] as Map<String, dynamic>),
      tickets: (json['tickets'] as List<dynamic>?)
          ?.map((e) => CoachTicket.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      refundRequest: json['refundRequest'] == null
          ? null
          : RefundRequest.fromJson(
              json['refundRequest'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$CoachBookingImplToJson(_$CoachBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'coachTripId': instance.coachTripId,
      'totalPrice': instance.totalPrice,
      'paymentDeadline': instance.paymentDeadline?.toIso8601String(),
      'status': _$CoachBookingStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'coachTrip': instance.coachTrip,
      'pickupStation': instance.pickupStation,
      'dropoffStation': instance.dropoffStation,
      'tickets': instance.tickets,
      'payments': instance.payments,
      'refundRequest': instance.refundRequest,
    };

const _$CoachBookingStatusEnumMap = {
  CoachBookingStatus.pending: 'PENDING',
  CoachBookingStatus.paid: 'PAID',
  CoachBookingStatus.confirmed: 'CONFIRMED',
  CoachBookingStatus.boarded: 'BOARDED',
  CoachBookingStatus.completed: 'COMPLETED',
  CoachBookingStatus.cancelled: 'CANCELLED',
  CoachBookingStatus.noShow: 'NO_SHOW',
};
