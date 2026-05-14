// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverImpl _$$DriverImplFromJson(Map<String, dynamic> json) => _$DriverImpl(
  id: json['id'] as String?,
  fullName: json['fullName'] as String,
  phoneNumber: json['phoneNumber'] as String,
  licenseNumber: json['licenseNumber'] as String,
  status: $enumDecode(_$DriverStatusEnumMap, json['status']),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$DriverImplToJson(_$DriverImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'licenseNumber': instance.licenseNumber,
      'status': _$DriverStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$DriverStatusEnumMap = {
  DriverStatus.available: 'AVAILABLE',
  DriverStatus.onTrip: 'ON_TRIP',
  DriverStatus.onLeave: 'ON_LEAVE',
};
