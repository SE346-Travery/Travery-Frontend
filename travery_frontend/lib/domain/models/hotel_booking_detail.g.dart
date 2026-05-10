// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelBookingDetailImpl _$$HotelBookingDetailImplFromJson(
  Map<String, dynamic> json,
) => _$HotelBookingDetailImpl(
  id: json['id'] as String?,
  hotelBookingId: json['hotel_booking_id'] as String,
  roomTypeId: json['room_type_id'] as String,
  quantity: (json['quantity'] as num).toInt(),
  priceAtBooking: (json['price_at_booking'] as num).toDouble(),
  startDate: DateTime.parse(json['start_date'] as String),
  endDate: DateTime.parse(json['end_date'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$HotelBookingDetailImplToJson(
  _$HotelBookingDetailImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'hotel_booking_id': instance.hotelBookingId,
  'room_type_id': instance.roomTypeId,
  'quantity': instance.quantity,
  'price_at_booking': instance.priceAtBooking,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
