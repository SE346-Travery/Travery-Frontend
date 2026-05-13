import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';
@freezed
class Location with _$Location {
  const factory Location({
    String? id,

    required String code,

    required String name,

    required LocationRegion region,

    String? description,

    @Default(true) bool isActive,

    DateTime? createdAt,

    DateTime? updatedAt,
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
