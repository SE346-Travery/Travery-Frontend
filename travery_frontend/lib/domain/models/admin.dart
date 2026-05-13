import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';
@freezed
class Admin with _$Admin {
  const factory Admin({
    String? id,

    required String userId,

    DateTime? createdAt,

    DateTime? updatedAt,
    User? user,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
