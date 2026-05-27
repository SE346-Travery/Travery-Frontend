// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelImageImpl _$$HotelImageImplFromJson(Map<String, dynamic> json) =>
    _$HotelImageImpl(
      id: json['id'] as String?,
      hotelId: json['hotel_id'] as String,
      imageUrl: json['image_url'] as String,
      displayOrder: (json['display_order'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$HotelImageImplToJson(_$HotelImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'image_url': instance.imageUrl,
      'display_order': instance.displayOrder,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
