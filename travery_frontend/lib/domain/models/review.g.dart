// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  bookingId: json['bookingId'] as String?,
  bookingType: json['bookingType'] as String?,
  targetId: json['targetId'] as String?,
  targetType: $enumDecode(_$ReviewTargetTypeEnumMap, json['targetType']),
  averageRating: (json['averageRating'] as num).toInt(),
  content: json['content'] as String?,
  images: (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'bookingId': instance.bookingId,
      'bookingType': instance.bookingType,
      'targetId': instance.targetId,
      'targetType': _$ReviewTargetTypeEnumMap[instance.targetType]!,
      'averageRating': instance.averageRating,
      'content': instance.content,
      'images': instance.images,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

const _$ReviewTargetTypeEnumMap = {
  ReviewTargetType.tour: 'TOUR',
  ReviewTargetType.hotel: 'HOTEL',
  ReviewTargetType.route: 'ROUTE',
};
