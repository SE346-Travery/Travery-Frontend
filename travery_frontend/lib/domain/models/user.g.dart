// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: json['id'] as String?,
  email: json['email'] as String?,
  passwordHashed: json['passwordHashed'] as String?,
  fullName: json['fullName'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  avatarUrl: json['avatarUrl'] as String?,
  role: $enumDecode(_$UserRoleEnumMap, json['role']),
  authProvider: $enumDecode(_$AuthProviderEnumMap, json['authProvider']),
  cometchatUid: json['cometchatUid'] as String?,
  status: $enumDecode(_$UserStatusEnumMap, json['status']),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'passwordHashed': instance.passwordHashed,
      'fullName': instance.fullName,
      'phoneNumber': instance.phoneNumber,
      'avatarUrl': instance.avatarUrl,
      'role': _$UserRoleEnumMap[instance.role]!,
      'authProvider': _$AuthProviderEnumMap[instance.authProvider]!,
      'cometchatUid': instance.cometchatUid,
      'status': _$UserStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
