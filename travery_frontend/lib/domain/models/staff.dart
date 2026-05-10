import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'staff.freezed.dart';
part 'staff.g.dart';

/// Generic staff entity combining all staff roles.
@freezed
class Staff with _$Staff {
  const factory Staff({
    String? id,

    @JsonKey(name: 'hotel_id') String? hotelId,

    @JsonKey(name: 'full_name') required String fullName,

    required String email,

    @JsonKey(name: 'phone_number') String? phoneNumber,

    @JsonKey(name: 'password_hash') String? passwordHash,

    required StaffRole role,

    required StaffStatus status,

    @JsonKey(name: 'cometchat_uid') String? cometchatUid,

    @JsonKey(name: 'employee_code') String? employeeCode,

    @JsonKey(name: 'department') String? department,

    @JsonKey(name: 'guide_license') String? guideLicense,

    @JsonKey(name: 'languages') List<String>? languages,

    @JsonKey(name: 'years_experience') int? yearsExperience,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
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
