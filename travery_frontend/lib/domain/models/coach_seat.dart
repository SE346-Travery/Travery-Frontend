import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach.dart';

part 'coach_seat.freezed.dart';
part 'coach_seat.g.dart';
@freezed
class CoachSeat with _$CoachSeat {
  const factory CoachSeat({
    String? id,

    required String coachId,

    required String seatName,

    required SeatTier tier,

    required SeatPosition position,

    int? floorNumber,

    @Default(true) bool isAvailable,

    DateTime? createdAt,

    DateTime? updatedAt,
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
