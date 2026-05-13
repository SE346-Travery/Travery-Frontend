import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';
@freezed
class Staff with _$Staff {
  const factory Staff({
    String? id,

    String? hotelId,

    required String fullName,

    required String email,

    String? phoneNumber,

    String? passwordHash,

    required StaffRole role,

    required StaffStatus status,

    String? cometchatUid,

    String? employeeCode,

    String? department,

    String? guideLicense,

    List<String>? languages,

    int? yearsExperience,

    DateTime? createdAt,

    DateTime? updatedAt,

    DateTime? deletedAt,
  }) = _Staff;

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}

@JsonEnum()
enum StaffRole {
  @JsonValue('ADMIN')
  admin,
  @JsonValue('COORDINATOR')
  coordinator,
  @JsonValue('GUIDE')
  guide,
  @JsonValue('RECEPTIONIST')
  receptionist,
}

@JsonEnum()
enum StaffStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('DISABLED')
  disabled,
}
