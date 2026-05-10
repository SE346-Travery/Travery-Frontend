import 'package:freezed_annotation/freezed_annotation.dart';

part 'amenity.freezed.dart';
part 'amenity.g.dart';

/// Global catalog of facilities and services available at hotels or within rooms.
@freezed
class Amenity with _$Amenity {
  const factory Amenity({
    String? id,

    required String name,

    @JsonKey(name: 'icon_url') String? iconUrl,

    required AmenityType type,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Amenity;

  factory Amenity.fromJson(Map<String, dynamic> json) =>
      _$AmenityFromJson(json);
}

@JsonEnum()
enum AmenityType {
  @JsonValue('HOTEL_AMENITY')
  hotelAmenity,
  @JsonValue('ROOM_AMENITY')
  roomAmenity,
}
