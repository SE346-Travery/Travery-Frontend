import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';
@freezed
class User with _$User {
  const factory User({
    String? id,

    String? email,

    String? passwordHash,

    required String fullName,

    String? phoneNumber,

    String? avatarUrl,

    required UserRole role,

    required AuthProvider authProvider,

    String? cometchatUid,

    required UserStatus status,

    DateTime? createdAt,

    DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonEnum()
enum UserRole {
  @JsonValue('TOURIST')
  tourist,
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
enum UserStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('ACTIVE')
  active,
  @JsonValue('BANNED')
  banned,
}

@JsonEnum()
enum AuthProvider {
  @JsonValue('LOCAL')
  local,
  @JsonValue('GOOGLE')
  google,
}
