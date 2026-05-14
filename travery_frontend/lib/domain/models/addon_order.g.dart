// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddonOrderImpl _$$AddonOrderImplFromJson(Map<String, dynamic> json) =>
    _$AddonOrderImpl(
      id: json['id'] as String?,
      hotelBookingId: json['hotelBookingId'] as String,
      hotelServiceId: json['hotelServiceId'] as String,
      quantity: (json['quantity'] as num).toInt(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
      status: $enumDecode(_$AddonOrderStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      hotelBooking: json['hotelBooking'] == null
          ? null
          : HotelBooking.fromJson(json['hotelBooking'] as Map<String, dynamic>),
      hotelService: json['hotelService'] == null
          ? null
          : HotelService.fromJson(json['hotelService'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddonOrderImplToJson(_$AddonOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelBookingId': instance.hotelBookingId,
      'hotelServiceId': instance.hotelServiceId,
      'quantity': instance.quantity,
      'totalPrice': instance.totalPrice,
      'status': _$AddonOrderStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'hotelBooking': instance.hotelBooking,
      'hotelService': instance.hotelService,
    };

const _$AddonOrderStatusEnumMap = {
  AddonOrderStatus.pending: 'PENDING',
  AddonOrderStatus.confirmed: 'CONFIRMED',
  AddonOrderStatus.inProgress: 'IN_PROGRESS',
  AddonOrderStatus.delivered: 'DELIVERED',
  AddonOrderStatus.cancelled: 'CANCELLED',
};
