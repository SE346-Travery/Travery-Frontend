// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImageImpl _$$TourImageImplFromJson(Map<String, dynamic> json) =>
    _$TourImageImpl(
      id: json['id'] as String?,
      imageUrl: json['url'] as String,
      isThumbnail: json['isThumnail'] as bool? ?? false,
      displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TourImageImplToJson(_$TourImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.imageUrl,
      'isThumnail': instance.isThumbnail,
      'displayOrder': instance.displayOrder,
    };
