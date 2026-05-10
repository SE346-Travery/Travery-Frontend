import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';
import 'user.dart';

part 'receptionist.freezed.dart';
part 'receptionist.g.dart';

/// Hotel-based staff responsible for check-ins and on-site service coordination.
@freezed
class Receptionist with _$Receptionist {
  const factory Receptionist({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'hotel_id') required String hotelId,

    @JsonKey(name: 'employee_code') required String employeeCode,

    @JsonKey(name: 'shift_type') ShiftType? shiftType,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    User? user,
    Hotel? hotel,
  }) = _Receptionist;

  factory Receptionist.fromJson(Map<String, dynamic> json) =>
      _$ReceptionistFromJson(json);
}

@JsonEnum()
enum ShiftType {
  @JsonValue('DAY')
  day,
  @JsonValue('NIGHT')
  night,
}
