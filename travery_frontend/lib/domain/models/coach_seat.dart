import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach.dart';

part 'coach_seat.freezed.dart';
part 'coach_seat.g.dart';

/// Logical seat location within a physical Coach.
@freezed
class CoachSeat with _$CoachSeat {
  const factory CoachSeat({
    String? id,

    @JsonKey(name: 'coach_id') required String coachId,

    @JsonKey(name: 'seat_name') required String seatName,

    required SeatTier tier,

    required SeatPosition position,

    @JsonKey(name: 'floor_number') int? floorNumber,

    @JsonKey(name: 'is_available') @Default(true) bool isAvailable,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    Coach? coach,
  }) = _CoachSeat;

  factory CoachSeat.fromJson(Map<String, dynamic> json) =>
      _$CoachSeatFromJson(json);
}

@JsonEnum()
enum SeatTier {
  @JsonValue('UPPER')
  upper,
  @JsonValue('LOWER')
  lower,
}

@JsonEnum()
enum SeatPosition {
  @JsonValue('FRONT')
  front,
  @JsonValue('MIDDLE')
  middle,
  @JsonValue('BACK')
  back,
}
