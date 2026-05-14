// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelServiceImpl _$$HotelServiceImplFromJson(Map<String, dynamic> json) =>
    _$HotelServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotelId'] as String,
      category: $enumDecode(_$ServiceCategoryEnumMap, json['category']),
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      unit: json['unit'] as String,
      description: json['description'] as String?,
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelServiceImplToJson(_$HotelServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelId': instance.hotelId,
      'category': _$ServiceCategoryEnumMap[instance.category]!,
      'name': instance.name,
      'price': instance.price,
      'unit': instance.unit,
      'description': instance.description,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
    };

const _$ServiceCategoryEnumMap = {
  ServiceCategory.food: 'FOOD',
  ServiceCategory.spa: 'SPA',
  ServiceCategory.laundry: 'LAUNDRY',
  ServiceCategory.other: 'OTHER',
};
