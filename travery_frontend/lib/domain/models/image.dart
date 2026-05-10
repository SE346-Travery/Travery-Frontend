import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

/// Polymorphic gallery management for various assets.
@freezed
class Image with _$Image {
  const factory Image({
    String? id,

    @JsonKey(name: 'entity_id') required String entityId,

    @JsonKey(name: 'entity_type') required ImageEntityType entityType,

    required String url,

    String? caption,

    @JsonKey(name: 'is_thumbnail') @Default(false) bool isThumbnail,

    @JsonKey(name: 'display_order') @Default(0) int displayOrder,

    @JsonKey(name: 'file_size') int? fileSize,

    @JsonKey(name: 'mime_type') String? mimeType,

    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@JsonEnum()
enum ImageEntityType {
  @JsonValue('HOTEL')
  hotel,
  @JsonValue('ROOM_TYPE')
  roomType,
  @JsonValue('TOUR')
  tour,
  @JsonValue('DESTINATION')
  destination,
  @JsonValue('USER_AVATAR')
  userAvatar,
  @JsonValue('INCIDENT')
  incident,
}
