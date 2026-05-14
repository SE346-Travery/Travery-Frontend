// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DestinationImpl _$$DestinationImplFromJson(Map<String, dynamic> json) =>
    _$DestinationImpl(
      id: json['id'] as String?,
      code: json['code'] as String,
      name: json['name'] as String,
      region: $enumDecode(_$DestinationRegionEnumMap, json['region']),
      imageUrl: json['imageUrl'] as String?,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$DestinationImplToJson(_$DestinationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'region': _$DestinationRegionEnumMap[instance.region]!,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$DestinationRegionEnumMap = {
  DestinationRegion.north: 'NORTH',
  DestinationRegion.central: 'CENTRAL',
  DestinationRegion.south: 'SOUTH',
};
