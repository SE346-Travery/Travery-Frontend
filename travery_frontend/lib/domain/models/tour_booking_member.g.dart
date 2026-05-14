// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_booking_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourBookingMemberImpl _$$TourBookingMemberImplFromJson(
  Map<String, dynamic> json,
) => _$TourBookingMemberImpl(
  id: json['id'] as String?,
  fullName: json['fullName'] as String,
  identityNumber: json['identityNumber'] as String?,
  identityType: $enumDecodeNullable(
    _$IdentityTypeEnumMap,
    json['identityType'],
  ),
  isChild: json['isChild'] as bool? ?? false,
  status: $enumDecode(_$BookingMemberStatusEnumMap, json['status']),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  booking: json['booking'] == null
      ? null
      : TourBooking.fromJson(json['booking'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TourBookingMemberImplToJson(
  _$TourBookingMemberImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'fullName': instance.fullName,
  'identityNumber': instance.identityNumber,
  'identityType': _$IdentityTypeEnumMap[instance.identityType],
  'isChild': instance.isChild,
  'status': _$BookingMemberStatusEnumMap[instance.status]!,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'booking': instance.booking,
};

const _$IdentityTypeEnumMap = {
  IdentityType.cccd: 'CCCD',
  IdentityType.passport: 'PASSPORT',
  IdentityType.birthCertificate: 'BIRTH_CERTIFICATE',
};

const _$BookingMemberStatusEnumMap = {
  BookingMemberStatus.active: 'ACTIVE',
  BookingMemberStatus.cancelled: 'CANCELLED',
};
