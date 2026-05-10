import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';

/// Represents a geographical location or region served by Travery's tours.
@freezed
class Destination with _$Destination {
  const factory Destination({
    String? id,

    @JsonKey(name: 'code') required String code,

    @JsonKey(name: 'name') required String name,

    @JsonKey(name: 'region') required DestinationRegion region,

    @JsonKey(name: 'description') String? description,

    @JsonKey(name: 'image_url') String? imageUrl,

    @JsonKey(name: 'latitude') double? latitude,

    @JsonKey(name: 'longitude') double? longitude,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Destination;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);
}

@JsonEnum()
enum DestinationRegion {
  @JsonValue('NORTH')
  north,
  @JsonValue('CENTRAL')
  central,
  @JsonValue('SOUTH')
  south,
}
