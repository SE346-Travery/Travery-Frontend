// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverImpl _$$DriverImplFromJson(Map<String, dynamic> json) => _$DriverImpl(
  id: json['id'] as String?,
  userId: json['user_id'] as String?,
  fullName: json['full_name'] as String,
  phoneNumber: json['phone_number'] as String,
  licenseNumber: json['license_number'] as String,
  avatarUrl: json['avatar_url'] as String?,
  status: $enumDecode(_$DriverStatusEnumMap, json['status']),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$DriverImplToJson(_$DriverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'license_number': instance.licenseNumber,
      'avatar_url': instance.avatarUrl,
      'status': _$DriverStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$DriverStatusEnumMap = {
  DriverStatus.available: 'AVAILABLE',
  DriverStatus.onTrip: 'ON_TRIP',
  DriverStatus.onLeave: 'ON_LEAVE',
};
