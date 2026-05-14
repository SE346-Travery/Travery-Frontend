// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => _$StaffImpl(
  id: json['id'] as String?,
  hotelId: json['hotelId'] as String?,
  fullName: json['fullName'] as String,
  email: json['email'] as String,
  phoneNumber: json['phoneNumber'] as String?,
  passwordHash: json['passwordHash'] as String?,
  role: $enumDecode(_$StaffRoleEnumMap, json['role']),
  status: $enumDecode(_$StaffStatusEnumMap, json['status']),
  cometchatUid: json['cometchatUid'] as String?,
  employeeCode: json['employeeCode'] as String?,
  department: json['department'] as String?,
  guideLicense: json['guideLicense'] as String?,
  languages: (json['languages'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  yearsExperience: (json['yearsExperience'] as num?)?.toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  deletedAt: json['deletedAt'] == null
      ? null
      : DateTime.parse(json['deletedAt'] as String),
);

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelId': instance.hotelId,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'passwordHash': instance.passwordHash,
      'role': _$StaffRoleEnumMap[instance.role]!,
      'status': _$StaffStatusEnumMap[instance.status]!,
      'cometchatUid': instance.cometchatUid,
      'employeeCode': instance.employeeCode,
      'department': instance.department,
      'guideLicense': instance.guideLicense,
      'languages': instance.languages,
      'yearsExperience': instance.yearsExperience,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

const _$StaffRoleEnumMap = {
  StaffRole.admin: 'ADMIN',
  StaffRole.coordinator: 'COORDINATOR',
  StaffRole.guide: 'GUIDE',
  StaffRole.receptionist: 'RECEPTIONIST',
};

const _$StaffStatusEnumMap = {
  StaffStatus.active: 'ACTIVE',
  StaffStatus.disabled: 'DISABLED',
};
