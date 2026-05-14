// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourBookingImpl _$$TourBookingImplFromJson(Map<String, dynamic> json) =>
    _$TourBookingImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      tourInstanceId: json['tourInstanceId'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      paymentDeadline: json['paymentDeadline'] == null
          ? null
          : DateTime.parse(json['paymentDeadline'] as String),
      status: $enumDecode(_$TourBookingStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      'userId': instance.userId,
      'tourInstanceId': instance.tourInstanceId,
      'totalPrice': instance.totalPrice,
      'paymentDeadline': instance.paymentDeadline?.toIso8601String(),
      'status': _$TourBookingStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
