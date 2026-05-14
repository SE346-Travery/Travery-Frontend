// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelBookingMemberImpl _$$HotelBookingMemberImplFromJson(
  Map<String, dynamic> json,
) => _$HotelBookingMemberImpl(
  id: json['id'] as String?,
  bookingId: json['bookingId'] as String,
  bookingType: json['bookingType'] as String,
  fullName: json['fullName'] as String,
  passportNumber: json['passportNumber'] as String,
  dateOfBirth: json['dateOfBirth'] == null
      ? null
      : DateTime.parse(json['dateOfBirth'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  hotelBooking: json['hotelBooking'] == null
      ? null
      : HotelBooking.fromJson(json['hotelBooking'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$HotelBookingMemberImplToJson(
  _$HotelBookingMemberImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'bookingId': instance.bookingId,
  'bookingType': instance.bookingType,
  'fullName': instance.fullName,
  'passportNumber': instance.passportNumber,
  'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'hotelBooking': instance.hotelBooking,
};
