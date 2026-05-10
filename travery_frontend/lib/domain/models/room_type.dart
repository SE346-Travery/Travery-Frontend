import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_type.freezed.dart';
part 'room_type.g.dart';

/// Categories of lodging offered by a Hotel (e.g., Standard, VIP, Suite).
@freezed
class RoomType with _$RoomType {
  const factory RoomType({
    String? id,

    @JsonKey(name: 'hotel_id') required String hotelId,

    @JsonKey(name: 'name') required String name,

    @JsonKey(name: 'description') String? description,

    @JsonKey(name: 'base_price') required double basePrice,

    @JsonKey(name: 'capacity_adults') required int capacityAdults,

    @JsonKey(name: 'capacity_children') @Default(0) int capacityChildren,

    @JsonKey(name: 'bed_type') required BedType bedType,

    @JsonKey(name: 'total_rooms') int? totalRooms,

    @JsonKey(name: 'available_rooms') int? availableRooms,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
