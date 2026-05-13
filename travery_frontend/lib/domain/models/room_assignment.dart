import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_assignment.freezed.dart';
part 'room_assignment.g.dart';
@freezed
class RoomAssignment with _$RoomAssignment {
  const factory RoomAssignment({
    String? id,

    required String hotelBookingDetailId,

    required String roomId,

    DateTime? checkInTime,

    DateTime? checkOutTime,

    DateTime? createdAt,

    DateTime? updatedAt,
  }) = _RoomAssignment;

  factory RoomAssignment.fromJson(Map<String, dynamic> json) =>
      _$RoomAssignmentFromJson(json);
}
