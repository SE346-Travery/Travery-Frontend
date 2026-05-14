// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_itinerary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourItineraryImpl _$$TourItineraryImplFromJson(Map<String, dynamic> json) =>
    _$TourItineraryImpl(
      id: json['id'] as String?,
      tourId: json['tourId'] as String,
      dayNumber: (json['dayNumber'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$TourItineraryImplToJson(_$TourItineraryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tourId': instance.tourId,
      'dayNumber': instance.dayNumber,
      'title': instance.title,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
