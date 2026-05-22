// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_itinerary_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourItineraryResponseImpl _$$TourItineraryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$TourItineraryResponseImpl(
  dayNumber: (json['dayNumber'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImageResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$TourItineraryResponseImplToJson(
  _$TourItineraryResponseImpl instance,
) => <String, dynamic>{
  'dayNumber': instance.dayNumber,
  'title': instance.title,
  'description': instance.description,
  'images': instance.images,
};
