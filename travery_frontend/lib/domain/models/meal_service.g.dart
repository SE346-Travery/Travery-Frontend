// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealServiceImpl _$$MealServiceImplFromJson(Map<String, dynamic> json) =>
    _$MealServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotelId'] as String,
      name: json['name'] as String,
      mealType: $enumDecode(_$MealTypeEnumMap, json['mealType']),
      description: json['description'] as String?,
      price: (json['price'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool? ?? true,
      startTime: json['startTime'] as String?,
      endTime: json['endTime'] as String?,
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

Map<String, dynamic> _$$MealServiceImplToJson(_$MealServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelId': instance.hotelId,
      'name': instance.name,
      'mealType': _$MealTypeEnumMap[instance.mealType]!,
      'description': instance.description,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
    };

const _$MealTypeEnumMap = {
  MealType.breakfast: 'BREAKFAST',
  MealType.lunch: 'LUNCH',
  MealType.dinner: 'DINNER',
};
