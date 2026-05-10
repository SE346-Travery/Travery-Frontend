// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
  id: json['id'] as String?,
  entityId: json['entity_id'] as String,
  entityType: $enumDecode(_$ImageEntityTypeEnumMap, json['entity_type']),
  url: json['url'] as String,
  caption: json['caption'] as String?,
  isThumbnail: json['is_thumbnail'] as bool? ?? false,
  displayOrder: (json['display_order'] as num?)?.toInt() ?? 0,
  fileSize: (json['file_size'] as num?)?.toInt(),
  mimeType: json['mime_type'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entity_id': instance.entityId,
      'entity_type': _$ImageEntityTypeEnumMap[instance.entityType]!,
      'url': instance.url,
      'caption': instance.caption,
      'is_thumbnail': instance.isThumbnail,
      'display_order': instance.displayOrder,
      'file_size': instance.fileSize,
      'mime_type': instance.mimeType,
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$ImageEntityTypeEnumMap = {
  ImageEntityType.hotel: 'HOTEL',
  ImageEntityType.roomType: 'ROOM_TYPE',
  ImageEntityType.tour: 'TOUR',
  ImageEntityType.destination: 'DESTINATION',
  ImageEntityType.userAvatar: 'USER_AVATAR',
  ImageEntityType.incident: 'INCIDENT',
};
