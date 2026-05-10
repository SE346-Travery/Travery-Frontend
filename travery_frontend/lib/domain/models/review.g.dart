// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
  id: json['id'] as String?,
  userId: json['user_id'] as String,
  bookingId: json['booking_id'] as String?,
  bookingType: json['booking_type'] as String?,
  targetId: json['target_id'] as String?,
  targetType: $enumDecode(_$ReviewTargetTypeEnumMap, json['target_type']),
  rating: (json['rating'] as num).toInt(),
  content: json['content'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  isVerified: json['is_verified'] as bool? ?? false,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'booking_id': instance.bookingId,
      'booking_type': instance.bookingType,
      'target_id': instance.targetId,
      'target_type': _$ReviewTargetTypeEnumMap[instance.targetType]!,
      'rating': instance.rating,
      'content': instance.content,
      'images': instance.images,
      'is_verified': instance.isVerified,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

const _$ReviewTargetTypeEnumMap = {
  ReviewTargetType.tour: 'TOUR',
  ReviewTargetType.hotel: 'HOTEL',
  ReviewTargetType.route: 'ROUTE',
};
