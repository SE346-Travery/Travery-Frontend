// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImageImpl _$$TourImageImplFromJson(Map<String, dynamic> json) =>
    _$TourImageImpl(
      id: json['id'] as String?,
      tourId: json['tour_id'] as String,
      imageUrl: json['image_url'] as String,
      displayOrder: (json['display_order'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TourImageImplToJson(_$TourImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tour_id': instance.tourId,
      'image_url': instance.imageUrl,
      'display_order': instance.displayOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
