import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'refresh_token.freezed.dart';
part 'refresh_token.g.dart';

/// Used for maintaining user sessions and issuing new access tokens.
@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    required String token,

    @JsonKey(name: 'expiry_date') required DateTime expiryDate,

    @JsonKey(name: 'revoked') @Default(false) bool revoked,

    @JsonKey(name: 'device_info') String? deviceInfo,

    @JsonKey(name: 'ip_address') String? ipAddress,

    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);
}
