// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomTypeImpl _$$RoomTypeImplFromJson(Map<String, dynamic> json) =>
    _$RoomTypeImpl(
      id: json['id'] as String?,
      hotelId: json['hotelId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      basePrice: (json['basePrice'] as num).toDouble(),
      capacityAdults: (json['capacityAdults'] as num).toInt(),
      capacityChildren: (json['capacityChildren'] as num?)?.toInt() ?? 0,
      bedType: $enumDecode(_$BedTypeEnumMap, json['bedType']),
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RoomTypeImplToJson(_$RoomTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelId': instance.hotelId,
      'name': instance.name,
      'description': instance.description,
      'basePrice': instance.basePrice,
      'capacityAdults': instance.capacityAdults,
      'capacityChildren': instance.capacityChildren,
      'bedType': _$BedTypeEnumMap[instance.bedType]!,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

const _$BedTypeEnumMap = {
  BedType.doubleBed: 'DOUBLE',
  BedType.single: 'SINGLE',
  BedType.twin: 'TWIN',
};
