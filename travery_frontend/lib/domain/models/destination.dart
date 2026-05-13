import 'package:freezed_annotation/freezed_annotation.dart';

part 'destination.freezed.dart';
part 'destination.g.dart';
@freezed
class Destination with _$Destination {
  const factory Destination({
    String? id,

    required String code,

    required String name,

    required DestinationRegion region,

    String? description,

    String? imageUrl,

    double? latitude,

    double? longitude,

    @Default(true) bool isActive,

    DateTime? createdAt,

    DateTime? updatedAt,
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
