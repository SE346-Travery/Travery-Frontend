import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'guide.freezed.dart';
part 'guide.g.dart';

/// Field-based staff who interact directly with customers during tours.
@freezed
class Guide with _$Guide {
  const factory Guide({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'employee_code') required String employeeCode,

    @JsonKey(name: 'guide_license') required String guideLicense,

    @JsonKey(name: 'languages') List<String>? languages,

    @JsonKey(name: 'years_experience') @Default(0) int yearsExperience,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    User? user,
  }) = _Guide;

  factory Guide.fromJson(Map<String, dynamic> json) => _$GuideFromJson(json);
}
