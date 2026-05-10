import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'coordinator.freezed.dart';
part 'coordinator.g.dart';

/// Office-based staff responsible for operational management and customer care.
@freezed
class Coordinator with _$Coordinator {
  const factory Coordinator({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'employee_code') required String employeeCode,

    @JsonKey(name: 'department') CoordinatorDepartment? department,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    User? user,
  }) = _Coordinator;

  factory Coordinator.fromJson(Map<String, dynamic> json) =>
      _$CoordinatorFromJson(json);
}

@JsonEnum()
enum CoordinatorDepartment {
  @JsonValue('TOUR')
  tour,
  @JsonValue('HOTEL')
  hotel,
  @JsonValue('COACH')
  coach,
}
