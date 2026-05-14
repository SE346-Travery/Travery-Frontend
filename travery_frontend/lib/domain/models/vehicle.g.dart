// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: json['id'] as String?,
      licensePlate: json['licensePlate'] as String,
      vehicleType: $enumDecode(_$VehicleTypeEnumMap, json['vehicleType']),
      totalSeats: (json['totalSeats'] as num).toInt(),
      floorCount: (json['floorCount'] as num?)?.toInt(),
      status: $enumDecode(_$VehicleStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      seats: (json['seats'] as List<dynamic>?)
          ?.map((e) => VehicleSeat.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignedDrivers: (json['assignedDrivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licensePlate': instance.licensePlate,
      'vehicleType': _$VehicleTypeEnumMap[instance.vehicleType]!,
      'totalSeats': instance.totalSeats,
      'floorCount': instance.floorCount,
      'status': _$VehicleStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'seats': instance.seats,
      'assignedDrivers': instance.assignedDrivers,
    };

const _$VehicleTypeEnumMap = {
  VehicleType.seat: 'SEAT',
  VehicleType.sleeper: 'SLEEPER',
  VehicleType.limousine: 'LIMOUSINE',
};

const _$VehicleStatusEnumMap = {
  VehicleStatus.active: 'ACTIVE',
  VehicleStatus.maintenance: 'MAINTENANCE',
  VehicleStatus.retired: 'RETIRED',
};
