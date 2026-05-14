// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
  id: json['id'] as String?,
  originStationId: json['originStationId'] as String,
  destinationStationId: json['destinationStationId'] as String,
  distanceKm: (json['distanceKm'] as num?)?.toDouble(),
  estimatedHours: (json['estimatedHours'] as num?)?.toDouble(),
  basePrice: (json['basePrice'] as num).toDouble(),
  refundPolicyId: json['refundPolicyId'] as String?,
  isActive: json['isActive'] as bool? ?? true,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  originStation: json['originStation'] == null
      ? null
      : Station.fromJson(json['originStation'] as Map<String, dynamic>),
  destinationStation: json['destinationStation'] == null
      ? null
      : Station.fromJson(json['destinationStation'] as Map<String, dynamic>),
  refundPolicy: json['refundPolicy'] == null
      ? null
      : RefundPolicy.fromJson(json['refundPolicy'] as Map<String, dynamic>),
  trips: (json['trips'] as List<dynamic>?)
      ?.map((e) => CoachTrip.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$RouteImplToJson(_$RouteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originStationId': instance.originStationId,
      'destinationStationId': instance.destinationStationId,
      'distanceKm': instance.distanceKm,
      'estimatedHours': instance.estimatedHours,
      'basePrice': instance.basePrice,
      'refundPolicyId': instance.refundPolicyId,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'originStation': instance.originStation,
      'destinationStation': instance.destinationStation,
      'refundPolicy': instance.refundPolicy,
      'trips': instance.trips,
    };
