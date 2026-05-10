// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_itinerary_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourItineraryDayImpl _$$TourItineraryDayImplFromJson(
  Map<String, dynamic> json,
) => _$TourItineraryDayImpl(
  id: json['id'] as String?,
  itineraryId: json['itinerary_id'] as String,
  dayNumber: (json['day_number'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String?,
  mealCount: (json['meal_count'] as num?)?.toInt() ?? 0,
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  location: json['location'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$TourItineraryDayImplToJson(
  _$TourItineraryDayImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'itinerary_id': instance.itineraryId,
  'day_number': instance.dayNumber,
  'title': instance.title,
  'description': instance.description,
  'meal_count': instance.mealCount,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'location': instance.location,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
