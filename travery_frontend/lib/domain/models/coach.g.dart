// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
  id: json['id'] as String?,
  licensePlate: json['license_plate'] as String,
  coachType: $enumDecode(_$CoachTypeEnumMap, json['coach_type']),
  capacity: (json['capacity'] as num).toInt(),
  status: $enumDecode(_$CoachStatusEnumMap, json['status']),
  floorCount: (json['floor_count'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  seats: (json['seats'] as List<dynamic>?)
      ?.map((e) => CoachSeat.fromJson(e as Map<String, dynamic>))
      .toList(),
  trips: (json['trips'] as List<dynamic>?)
      ?.map((e) => CoachTrip.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CoachImplToJson(_$CoachImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'license_plate': instance.licensePlate,
      'coach_type': _$CoachTypeEnumMap[instance.coachType]!,
      'capacity': instance.capacity,
      'status': _$CoachStatusEnumMap[instance.status]!,
      'floor_count': instance.floorCount,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'seats': instance.seats,
      'trips': instance.trips,
    };

const _$CoachTypeEnumMap = {
  CoachType.seat: 'SEAT',
  CoachType.bed: 'BED',
  CoachType.limousine: 'LIMOUSINE',
};

const _$CoachStatusEnumMap = {
  CoachStatus.active: 'ACTIVE',
  CoachStatus.maintenance: 'MAINTENANCE',
  CoachStatus.retired: 'RETIRED',
};
