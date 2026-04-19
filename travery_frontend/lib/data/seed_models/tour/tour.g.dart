// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImpl _$$TourImplFromJson(Map<String, dynamic> json) => _$TourImpl(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as Map<String, dynamic>?,
  pricePerAdult: (json['price_per_adult'] as num).toDouble(),
  pricePerChild: (json['price_per_child'] as num).toDouble(),
  maxCapacity: (json['max_capacity'] as num).toInt(),
  minCapacity: (json['min_capacity'] as num).toInt(),
  isCustom: json['is_custom'] as bool,
  createdForUserId: json['created_for_user_id'] as String?,
  expiresAt: json['expires_at'] == null
      ? null
      : DateTime.parse(json['expires_at'] as String),
  status: $enumDecode(_$TourStatusEnumMap, json['status']),
  hotelId: json['hotel_id'] as String?,
  couchId: json['couch_id'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  images: (json['images'] as List<dynamic>?)
      ?.map((e) => TourImage.fromJson(e as Map<String, dynamic>))
      .toList(),
  instances: (json['instances'] as List<dynamic>?)
      ?.map((e) => TourInstance.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$TourImplToJson(_$TourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price_per_adult': instance.pricePerAdult,
      'price_per_child': instance.pricePerChild,
      'max_capacity': instance.maxCapacity,
      'min_capacity': instance.minCapacity,
      'is_custom': instance.isCustom,
      'created_for_user_id': instance.createdForUserId,
      'expires_at': instance.expiresAt?.toIso8601String(),
      'status': _$TourStatusEnumMap[instance.status]!,
      'hotel_id': instance.hotelId,
      'couch_id': instance.couchId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'images': instance.images,
      'instances': instance.instances,
    };

const _$TourStatusEnumMap = {
  TourStatus.draft: 'draft',
  TourStatus.active: 'active',
  TourStatus.expired: 'expired',
  TourStatus.cancelled: 'cancelled',
};
