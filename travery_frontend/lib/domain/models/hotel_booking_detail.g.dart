// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelBookingDetailImpl _$$HotelBookingDetailImplFromJson(
  Map<String, dynamic> json,
) => _$HotelBookingDetailImpl(
  id: json['id'] as String?,
  hotelBookingId: json['hotelBookingId'] as String,
  roomTypeId: json['roomTypeId'] as String,
  quantity: (json['quantity'] as num).toInt(),
  priceAtBooking: (json['priceAtBooking'] as num).toDouble(),
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$HotelBookingDetailImplToJson(
  _$HotelBookingDetailImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'hotelBookingId': instance.hotelBookingId,
  'roomTypeId': instance.roomTypeId,
  'quantity': instance.quantity,
  'priceAtBooking': instance.priceAtBooking,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
