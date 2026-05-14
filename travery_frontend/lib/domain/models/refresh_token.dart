import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'refresh_token.freezed.dart';
part 'refresh_token.g.dart';
@freezed
class RefreshToken with _$RefreshToken {
  const factory RefreshToken({
    String? id,
    required String userId,
    required String token,
    required DateTime expiryDate,
    @Default(false) bool revoked,
    DateTime? createdAt,
  }) = _RefreshToken;

  factory RefreshToken.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenFromJson(json);
}
