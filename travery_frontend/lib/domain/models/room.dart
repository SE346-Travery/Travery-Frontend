import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';
import 'room_type.dart';

part 'room.freezed.dart';
part 'room.g.dart';

/// A physical, uniquely numbered room within a Hotel.
@freezed
class Room with _$Room {
  const factory Room({
    String? id,

    @JsonKey(name: 'hotel_id') required String hotelId,

    @JsonKey(name: 'room_type_id') required String roomTypeId,

    @JsonKey(name: 'room_number') required String roomNumber,

    @JsonKey(name: 'floor') int? floor,

    required RoomStatus status,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    Hotel? hotel,
    RoomType? roomType,
  }) = _Room;

  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}

@JsonEnum()
enum RoomStatus {
  @JsonValue('AVAILABLE')
  available,
  @JsonValue('OCCUPIED')
  occupied,
  @JsonValue('MAINTENANCE')
  maintenance,
}
