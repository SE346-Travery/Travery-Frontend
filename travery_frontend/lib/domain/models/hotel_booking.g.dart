// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelBookingImpl _$$HotelBookingImplFromJson(Map<String, dynamic> json) =>
    _$HotelBookingImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      tourInstanceId: json['tourInstanceId'] as String?,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      paymentDeadline: json['paymentDeadline'] == null
          ? null
          : DateTime.parse(json['paymentDeadline'] as String),
      status: $enumDecode(_$HotelBookingStatusEnumMap, json['status']),
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
      room: json['room'] == null
          ? null
          : Room.fromJson(json['room'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => HotelBookingDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => HotelBookingMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      addonOrders: (json['addonOrders'] as List<dynamic>?)
          ?.map((e) => AddonOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: json['review'] == null
          ? null
          : HotelReview.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelBookingImplToJson(_$HotelBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'tourInstanceId': instance.tourInstanceId,
      'totalPrice': instance.totalPrice,
      'paymentDeadline': instance.paymentDeadline?.toIso8601String(),
      'status': _$HotelBookingStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'tourInstance': instance.tourInstance,
      'room': instance.room,
      'details': instance.details,
      'members': instance.members,
      'addonOrders': instance.addonOrders,
      'review': instance.review,
    };

const _$HotelBookingStatusEnumMap = {
  HotelBookingStatus.pending: 'PENDING',
  HotelBookingStatus.paid: 'PAID',
  HotelBookingStatus.checkedIn: 'CHECKED_IN',
  HotelBookingStatus.pendingCheckout: 'PENDING_CHECKOUT',
  HotelBookingStatus.checkedOut: 'CHECKED_OUT',
  HotelBookingStatus.completed: 'COMPLETED',
  HotelBookingStatus.cancelled: 'CANCELLED',
  HotelBookingStatus.noShow: 'NO_SHOW',
};
