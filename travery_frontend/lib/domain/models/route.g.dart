// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteImpl _$$RouteImplFromJson(Map<String, dynamic> json) => _$RouteImpl(
  id: json['id'] as String?,
  originStationId: json['origin_station_id'] as String,
  destinationStationId: json['destination_station_id'] as String,
  distanceKm: (json['distance_km'] as num?)?.toDouble(),
  estimatedHours: (json['estimated_hours'] as num?)?.toDouble(),
  basePrice: (json['base_price'] as num).toDouble(),
  refundPolicyId: json['refund_policy_id'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
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
      'origin_station_id': instance.originStationId,
      'destination_station_id': instance.destinationStationId,
      'distance_km': instance.distanceKm,
      'estimated_hours': instance.estimatedHours,
      'base_price': instance.basePrice,
      'refund_policy_id': instance.refundPolicyId,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'originStation': instance.originStation,
      'destinationStation': instance.destinationStation,
      'refundPolicy': instance.refundPolicy,
      'trips': instance.trips,
    };
