import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'coordinator.freezed.dart';
part 'coordinator.g.dart';
@freezed
class Coordinator with _$Coordinator {
  const factory Coordinator({
    String? id,

    required String userId,

    required String employeeCode,

    CoordinatorDepartment? department,

    DateTime? createdAt,

    DateTime? updatedAt,
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
