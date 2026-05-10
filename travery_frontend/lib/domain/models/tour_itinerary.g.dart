// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourItineraryImpl _$$TourItineraryImplFromJson(Map<String, dynamic> json) =>
    _$TourItineraryImpl(
      id: json['id'] as String?,
      tourId: json['tour_id'] as String,
      dayNumber: (json['day_number'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      mealIncluded: json['meal_included'] as bool? ?? false,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TourItineraryImplToJson(_$TourItineraryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tour_id': instance.tourId,
      'day_number': instance.dayNumber,
      'title': instance.title,
      'description': instance.description,
      'meal_included': instance.mealIncluded,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
