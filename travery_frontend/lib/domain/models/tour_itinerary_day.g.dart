// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_itinerary_day.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourItineraryDayImpl _$$TourItineraryDayImplFromJson(
  Map<String, dynamic> json,
) => _$TourItineraryDayImpl(
  id: json['id'] as String?,
  itineraryId: json['itineraryId'] as String,
  dayNumber: (json['dayNumber'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String?,
  mealCount: (json['mealCount'] as num?)?.toInt() ?? 0,
  startTime: json['startTime'] as String?,
  endTime: json['endTime'] as String?,
  location: json['location'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$TourItineraryDayImplToJson(
  _$TourItineraryDayImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'itineraryId': instance.itineraryId,
  'dayNumber': instance.dayNumber,
  'title': instance.title,
  'description': instance.description,
  'mealCount': instance.mealCount,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
  'location': instance.location,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
