// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleImpl _$$VehicleImplFromJson(Map<String, dynamic> json) =>
    _$VehicleImpl(
      id: json['id'] as String?,
      licensePlate: json['license_plate'] as String,
      vehicleType: $enumDecode(_$VehicleTypeEnumMap, json['vehicle_type']),
      totalSeats: (json['total_seats'] as num).toInt(),
      floorCount: (json['floor_count'] as num?)?.toInt(),
      status: $enumDecode(_$VehicleStatusEnumMap, json['status']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      seats: (json['seats'] as List<dynamic>?)
          ?.map((e) => VehicleSeat.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignedDrivers: (json['assigned_drivers'] as List<dynamic>?)
          ?.map((e) => Driver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VehicleImplToJson(_$VehicleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'license_plate': instance.licensePlate,
      'vehicle_type': _$VehicleTypeEnumMap[instance.vehicleType]!,
      'total_seats': instance.totalSeats,
      'floor_count': instance.floorCount,
      'status': _$VehicleStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'seats': instance.seats,
      'assigned_drivers': instance.assignedDrivers,
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
