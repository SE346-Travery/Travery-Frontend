// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
  id: json['id'] as String?,
  entityId: json['entityId'] as String,
  entityType: $enumDecode(_$ImageEntityTypeEnumMap, json['entityType']),
  url: json['url'] as String,
  isThumbnail: json['isThumbnail'] as bool? ?? false,
  displayOrder: (json['displayOrder'] as num?)?.toInt() ?? 0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entityId': instance.entityId,
      'entityType': _$ImageEntityTypeEnumMap[instance.entityType]!,
      'url': instance.url,
      'isThumbnail': instance.isThumbnail,
      'displayOrder': instance.displayOrder,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$ImageEntityTypeEnumMap = {
  ImageEntityType.hotel: 'HOTEL',
  ImageEntityType.roomType: 'ROOM_TYPE',
  ImageEntityType.tour: 'TOUR',
  ImageEntityType.destination: 'DESTINATION',
  ImageEntityType.userAvatar: 'USER_AVATAR',
  ImageEntityType.incident: 'INCIDENT',
};
