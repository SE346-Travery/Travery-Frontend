import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// Base user entity in the Travery system.
/// Uses Table-per-Type (Joined Inheritance) strategy to support specialized roles.
@freezed
class User with _$User {
  const factory User({
    String? id,

    @JsonKey(name: 'email') String? email,

    @JsonKey(name: 'password_hash') String? passwordHash,

    @JsonKey(name: 'full_name') required String fullName,

    @JsonKey(name: 'phone_number') String? phoneNumber,

    @JsonKey(name: 'avatar_url') String? avatarUrl,

    required UserRole role,

    required AuthProvider authProvider,

    @JsonKey(name: 'cometchat_uid') String? cometchatUid,

    required UserStatus status,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
