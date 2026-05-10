import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

/// Represents a geographical region/location served by Travery.
@freezed
class Location with _$Location {
  const factory Location({
    String? id,

    required String code,

    required String name,

    required LocationRegion region,

    String? description,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@JsonEnum()
enum LocationRegion {
  @JsonValue('NORTH')
  north,
  @JsonValue('CENTRAL')
  central,
  @JsonValue('SOUTH')
  south,
}
