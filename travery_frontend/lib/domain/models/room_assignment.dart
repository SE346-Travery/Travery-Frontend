import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_assignment.freezed.dart';
part 'room_assignment.g.dart';

/// Matches a physical Room to a guest's HotelBookingDetail during check-in.
@freezed
class RoomAssignment with _$RoomAssignment {
  const factory RoomAssignment({
    String? id,

    @JsonKey(name: 'hotel_booking_detail_id')
    required String hotelBookingDetailId,

    @JsonKey(name: 'room_id') required String roomId,

    @JsonKey(name: 'check_in_time') DateTime? checkInTime,

    @JsonKey(name: 'check_out_time') DateTime? checkOutTime,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _RoomAssignment;

  factory RoomAssignment.fromJson(Map<String, dynamic> json) =>
      _$RoomAssignmentFromJson(json);
}
