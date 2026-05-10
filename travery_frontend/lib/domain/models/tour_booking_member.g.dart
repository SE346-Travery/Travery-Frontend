// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_booking_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourBookingMemberImpl _$$TourBookingMemberImplFromJson(
  Map<String, dynamic> json,
) => _$TourBookingMemberImpl(
  id: json['id'] as String?,
  bookingId: json['booking_id'] as String,
  bookingType: json['booking_type'] as String,
  fullName: json['full_name'] as String,
  passportNumber: json['passport_number'] as String?,
  dateOfBirth: json['date_of_birth'] == null
      ? null
      : DateTime.parse(json['date_of_birth'] as String),
  gender: json['gender'] as String?,
  isChild: json['is_child'] as bool? ?? false,
  cancelledAt: json['cancelled_at'] == null
      ? null
      : DateTime.parse(json['cancelled_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  booking: json['booking'] == null
      ? null
      : TourBooking.fromJson(json['booking'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TourBookingMemberImplToJson(
  _$TourBookingMemberImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'booking_id': instance.bookingId,
  'booking_type': instance.bookingType,
  'full_name': instance.fullName,
  'passport_number': instance.passportNumber,
  'date_of_birth': instance.dateOfBirth?.toIso8601String(),
  'gender': instance.gender,
  'is_child': instance.isChild,
  'cancelled_at': instance.cancelledAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'booking': instance.booking,
};
