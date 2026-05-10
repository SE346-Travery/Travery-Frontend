// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomTypeImpl _$$RoomTypeImplFromJson(Map<String, dynamic> json) =>
    _$RoomTypeImpl(
      id: json['id'] as String?,
      hotelId: json['hotel_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      basePrice: (json['base_price'] as num).toDouble(),
      capacityAdults: (json['capacity_adults'] as num).toInt(),
      capacityChildren: (json['capacity_children'] as num?)?.toInt() ?? 0,
      bedType: $enumDecode(_$BedTypeEnumMap, json['bed_type']),
      totalRooms: (json['total_rooms'] as num?)?.toInt(),
      availableRooms: (json['available_rooms'] as num?)?.toInt(),
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RoomTypeImplToJson(_$RoomTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'name': instance.name,
      'description': instance.description,
      'base_price': instance.basePrice,
      'capacity_adults': instance.capacityAdults,
      'capacity_children': instance.capacityChildren,
      'bed_type': _$BedTypeEnumMap[instance.bedType]!,
      'total_rooms': instance.totalRooms,
      'available_rooms': instance.availableRooms,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$BedTypeEnumMap = {
  BedType.doubleBed: 'DOUBLE',
  BedType.single: 'SINGLE',
  BedType.twin: 'TWIN',
};
