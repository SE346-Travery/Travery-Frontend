// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelServiceImpl _$$HotelServiceImplFromJson(Map<String, dynamic> json) =>
    _$HotelServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotel_id'] as String,
      category: $enumDecode(_$ServiceCategoryEnumMap, json['category']),
      name: json['name'] as String,
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      unit: json['unit'] as String,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelServiceImplToJson(_$HotelServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'category': _$ServiceCategoryEnumMap[instance.category]!,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'unit': instance.unit,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
    };

const _$ServiceCategoryEnumMap = {
  ServiceCategory.food: 'FOOD',
  ServiceCategory.spa: 'SPA',
  ServiceCategory.laundry: 'LAUNDRY',
  ServiceCategory.other: 'OTHER',
};
