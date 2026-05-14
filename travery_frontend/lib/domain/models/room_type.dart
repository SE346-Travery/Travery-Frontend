import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_type.freezed.dart';
part 'room_type.g.dart';
@freezed
class RoomType with _$RoomType {
  const factory RoomType({
    String? id,
    required String hotelId,
    required String name,
    String? description,
    required double basePrice,
    required int capacityAdults,
    @Default(0) int capacityChildren,
    required BedType bedType,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RoomType;

  factory RoomType.fromJson(Map<String, dynamic> json) =>
      _$RoomTypeFromJson(json);
}

@JsonEnum()
enum BedType {
  @JsonValue('DOUBLE')
  doubleBed,
  @JsonValue('SINGLE')
  single,
  @JsonValue('TWIN')
  twin,
}
