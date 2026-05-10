import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'admin.freezed.dart';
part 'admin.g.dart';

/// System administrators with oversight of the entire platform.
@freezed
class Admin with _$Admin {
  const factory Admin({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    User? user,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
