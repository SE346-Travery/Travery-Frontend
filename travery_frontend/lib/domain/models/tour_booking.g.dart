// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourBookingImpl _$$TourBookingImplFromJson(Map<String, dynamic> json) =>
    _$TourBookingImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      tourInstanceId: json['tour_instance_id'] as String,
      totalPrice: (json['total_price'] as num).toDouble(),
      paymentDeadline: json['payment_deadline'] == null
          ? null
          : DateTime.parse(json['payment_deadline'] as String),
      specialRequests: json['special_requests'] as String?,
      noShowNote: json['no_show_note'] as String?,
      noShowAt: json['no_show_at'] == null
          ? null
          : DateTime.parse(json['no_show_at'] as String),
      status: $enumDecode(_$TourBookingStatusEnumMap, json['status']),
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
      tourInstance: json['tourInstance'] == null
          ? null
          : TourInstance.fromJson(json['tourInstance'] as Map<String, dynamic>),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => TourBookingMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentTransaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      refundRequest: json['refundRequest'] == null
          ? null
          : RefundRequest.fromJson(
              json['refundRequest'] as Map<String, dynamic>,
            ),
      review: json['review'] == null
          ? null
          : TourReview.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TourBookingImplToJson(_$TourBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'tour_instance_id': instance.tourInstanceId,
      'total_price': instance.totalPrice,
      'payment_deadline': instance.paymentDeadline?.toIso8601String(),
      'special_requests': instance.specialRequests,
      'no_show_note': instance.noShowNote,
      'no_show_at': instance.noShowAt?.toIso8601String(),
      'status': _$TourBookingStatusEnumMap[instance.status]!,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'cancelled_by': instance.cancelledBy,
      'refund_request_id': instance.refundRequestId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'tourInstance': instance.tourInstance,
      'members': instance.members,
      'payments': instance.payments,
      'refundRequest': instance.refundRequest,
      'review': instance.review,
    };

const _$TourBookingStatusEnumMap = {
  TourBookingStatus.pending: 'PENDING',
  TourBookingStatus.paid: 'PAID',
  TourBookingStatus.confirmed: 'CONFIRMED',
  TourBookingStatus.inProgress: 'IN_PROGRESS',
  TourBookingStatus.completed: 'COMPLETED',
  TourBookingStatus.cancelled: 'CANCELLED',
  TourBookingStatus.noShow: 'NO_SHOW',
};
