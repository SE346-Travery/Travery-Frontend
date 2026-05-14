// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenImpl _$$RefreshTokenImplFromJson(Map<String, dynamic> json) =>
    _$RefreshTokenImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      token: json['token'] as String,
      expiryDate: DateTime.parse(json['expiryDate'] as String),
      revoked: json['revoked'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$RefreshTokenImplToJson(_$RefreshTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'token': instance.token,
      'expiryDate': instance.expiryDate.toIso8601String(),
      'revoked': instance.revoked,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
