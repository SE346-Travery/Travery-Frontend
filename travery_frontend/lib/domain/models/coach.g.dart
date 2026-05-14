// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachImpl _$$CoachImplFromJson(Map<String, dynamic> json) => _$CoachImpl(
  id: json['id'] as String?,
  licensePlate: json['licensePlate'] as String,
  coachType: $enumDecode(_$CoachTypeEnumMap, json['coachType']),
  capacity: (json['capacity'] as num).toInt(),
  status: $enumDecode(_$CoachStatusEnumMap, json['status']),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
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
      'licensePlate': instance.licensePlate,
      'coachType': _$CoachTypeEnumMap[instance.coachType]!,
      'capacity': instance.capacity,
      'status': _$CoachStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
