import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'guide.freezed.dart';
part 'guide.g.dart';
@freezed
class Guide with _$Guide {
  const factory Guide({
    String? id,
    required String employeeCode,
    required String guideLicense,
    List<String>? languages,
    @Default(0) int yearsExperience,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  }) = _Guide;

  factory Guide.fromJson(Map<String, dynamic> json) => _$GuideFromJson(json);
}
