import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';
@freezed
class Image with _$Image {
  const factory Image({
    String? id,
    required String entityId,
    required ImageEntityType entityType,
    required String url,
    @Default(false) bool isThumbnail,
    @Default(0) int displayOrder,
    DateTime? createdAt,
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
