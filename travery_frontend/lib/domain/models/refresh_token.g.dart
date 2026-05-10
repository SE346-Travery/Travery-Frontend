// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshTokenImpl _$$RefreshTokenImplFromJson(Map<String, dynamic> json) =>
    _$RefreshTokenImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      token: json['token'] as String,
      expiryDate: DateTime.parse(json['expiry_date'] as String),
      revoked: json['revoked'] as bool? ?? false,
      deviceInfo: json['device_info'] as String?,
      ipAddress: json['ip_address'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$RefreshTokenImplToJson(_$RefreshTokenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'token': instance.token,
      'expiry_date': instance.expiryDate.toIso8601String(),
      'revoked': instance.revoked,
      'device_info': instance.deviceInfo,
      'ip_address': instance.ipAddress,
      'created_at': instance.createdAt?.toIso8601String(),
    };
