import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';
@freezed
class Admin with _$Admin {
  const factory Admin({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
