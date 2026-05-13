// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachBookingImpl _$$CoachBookingImplFromJson(Map<String, dynamic> json) =>
    _$CoachBookingImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      coachTripId: json['coach_trip_id'] as String,
      pickupStationId: json['pickup_station_id'] as String?,
      dropoffStationId: json['dropoff_station_id'] as String?,
      totalPrice: (json['total_price'] as num).toDouble(),
      paymentDeadline: json['payment_deadline'] == null
          ? null
          : DateTime.parse(json['payment_deadline'] as String),
      luggageWeight: (json['luggage_weight'] as num?)?.toDouble(),
      specialRequests: json['special_requests'] as String?,
      noShowNote: json['no_show_note'] as String?,
      noShowAt: json['no_show_at'] == null
          ? null
          : DateTime.parse(json['no_show_at'] as String),
      status: $enumDecode(_$CoachBookingStatusEnumMap, json['status']),
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      cancellationReason: json['cancellation_reason'] as String?,
      cancelledBy: json['cancelled_by'] as String?,
      refundRequestId: json['refund_request_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      coachTrip: json['coach_trip'] == null
          ? null
          : CoachTrip.fromJson(json['coach_trip'] as Map<String, dynamic>),
      pickupStation: json['pickup_station'] == null
          ? null
          : Station.fromJson(json['pickup_station'] as Map<String, dynamic>),
      dropoffStation: json['dropoff_station'] == null
          ? null
          : Station.fromJson(json['dropoff_station'] as Map<String, dynamic>),
      tickets: (json['tickets'] as List<dynamic>?)
          ?.map((e) => CoachTicket.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      refundRequest: json['refund_request'] == null
          ? null
          : RefundRequest.fromJson(
              json['refund_request'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$CoachBookingImplToJson(_$CoachBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'coach_trip_id': instance.coachTripId,
      'pickup_station_id': instance.pickupStationId,
      'dropoff_station_id': instance.dropoffStationId,
      'total_price': instance.totalPrice,
      'payment_deadline': instance.paymentDeadline?.toIso8601String(),
      'luggage_weight': instance.luggageWeight,
      'special_requests': instance.specialRequests,
      'no_show_note': instance.noShowNote,
      'no_show_at': instance.noShowAt?.toIso8601String(),
      'status': _$CoachBookingStatusEnumMap[instance.status]!,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'cancelled_by': instance.cancelledBy,
      'refund_request_id': instance.refundRequestId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'coach_trip': instance.coachTrip,
      'pickup_station': instance.pickupStation,
      'dropoff_station': instance.dropoffStation,
      'tickets': instance.tickets,
      'payments': instance.payments,
      'refund_request': instance.refundRequest,
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
