import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';
import 'room_type.dart';

part 'room.freezed.dart';
part 'room.g.dart';
@freezed
class Room with _$Room {
  const factory Room({
    String? id,
    required String hotelId,
    required String roomTypeId,
    required String roomNumber,
    required RoomStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
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
