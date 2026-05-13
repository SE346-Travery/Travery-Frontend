import 'package:freezed_annotation/freezed_annotation.dart';

part 'amenity.freezed.dart';
part 'amenity.g.dart';
@freezed
class Amenity with _$Amenity {
  const factory Amenity({
    String? id,

    required String name,

    String? iconUrl,

    required AmenityType type,

    @Default(true) bool isActive,

    DateTime? createdAt,

    DateTime? updatedAt,
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
