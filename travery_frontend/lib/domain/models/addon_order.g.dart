// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddonOrderImpl _$$AddonOrderImplFromJson(Map<String, dynamic> json) =>
    _$AddonOrderImpl(
      id: json['id'] as String?,
      hotelBookingId: json['hotel_booking_id'] as String,
      hotelServiceId: json['hotel_service_id'] as String,
      quantity: (json['quantity'] as num).toInt(),
      unitPrice: (json['unit_price'] as num).toDouble(),
      totalPrice: (json['total_price'] as num).toDouble(),
      scheduledAt: json['scheduled_at'] == null
          ? null
          : DateTime.parse(json['scheduled_at'] as String),
      specialRequests: json['special_requests'] as String?,
      status: $enumDecode(_$AddonOrderStatusEnumMap, json['status']),
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      cancellationReason: json['cancellation_reason'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
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
      'hotel_booking_id': instance.hotelBookingId,
      'hotel_service_id': instance.hotelServiceId,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'total_price': instance.totalPrice,
      'scheduled_at': instance.scheduledAt?.toIso8601String(),
      'special_requests': instance.specialRequests,
      'status': _$AddonOrderStatusEnumMap[instance.status]!,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
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
