// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealServiceImpl _$$MealServiceImplFromJson(Map<String, dynamic> json) =>
    _$MealServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotel_id'] as String,
      name: json['name'] as String,
      mealType: $enumDecode(_$MealTypeEnumMap, json['meal_type']),
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      isAvailable: json['is_available'] as bool? ?? true,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
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

Map<String, dynamic> _$$MealServiceImplToJson(_$MealServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'name': instance.name,
      'meal_type': _$MealTypeEnumMap[instance.mealType]!,
      'description': instance.description,
      'price': instance.price,
      'is_available': instance.isAvailable,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'BREAKFAST',
  MealType.lunch: 'LUNCH',
  MealType.dinner: 'DINNER',
};
