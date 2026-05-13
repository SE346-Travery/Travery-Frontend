// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String?,
  email: json['email'] as String?,
  passwordHash: json['password_hash'] as String?,
  fullName: json['full_name'] as String,
  phoneNumber: json['phone_number'] as String?,
  avatarUrl: json['avatar_url'] as String?,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  authProvider: $enumDecode(_$AuthProviderEnumMap, json['auth_provider']),
  cometchatUid: json['cometchat_uid'] as String?,
  status: $enumDecode(_$UserStatusEnumMap, json['status']),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'password_hash': instance.passwordHash,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'avatar_url': instance.avatarUrl,
      'role': _$UserRoleEnumMap[instance.role]!,
      'auth_provider': _$AuthProviderEnumMap[instance.authProvider]!,
      'cometchat_uid': instance.cometchatUid,
      'status': _$UserStatusEnumMap[instance.status]!,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$UserRoleEnumMap = {
  UserRole.tourist: 'TOURIST',
  UserRole.admin: 'ADMIN',
  UserRole.coordinator: 'COORDINATOR',
  UserRole.guide: 'GUIDE',
  UserRole.receptionist: 'RECEPTIONIST',
};

const _$AuthProviderEnumMap = {
  AuthProvider.local: 'LOCAL',
  AuthProvider.google: 'GOOGLE',
};

const _$UserStatusEnumMap = {
  UserStatus.pending: 'PENDING',
  UserStatus.active: 'ACTIVE',
  UserStatus.banned: 'BANNED',
};
