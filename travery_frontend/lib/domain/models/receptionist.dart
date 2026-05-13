import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';
import 'user.dart';

part 'receptionist.freezed.dart';
part 'receptionist.g.dart';
@freezed
class Receptionist with _$Receptionist {
  const factory Receptionist({
    String? id,

    required String userId,

    required String hotelId,

    required String employeeCode,

    ShiftType? shiftType,

    DateTime? createdAt,

    DateTime? updatedAt,
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
