// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => _$StaffImpl(
  id: json['id'] as String?,
  hotelId: json['hotel_id'] as String?,
  fullName: json['full_name'] as String,
  email: json['email'] as String,
  phoneNumber: json['phone_number'] as String?,
  passwordHash: json['password_hash'] as String?,
  role: $enumDecode(_$StaffRoleEnumMap, json['role']),
  status: $enumDecode(_$StaffStatusEnumMap, json['status']),
  cometchatUid: json['cometchat_uid'] as String?,
  employeeCode: json['employee_code'] as String?,
  department: json['department'] as String?,
  guideLicense: json['guide_license'] as String?,
  languages: (json['languages'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  yearsExperience: (json['years_experience'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  deletedAt: json['deleted_at'] == null
      ? null
      : DateTime.parse(json['deleted_at'] as String),
);

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'password_hash': instance.passwordHash,
      'role': _$StaffRoleEnumMap[instance.role]!,
      'status': _$StaffStatusEnumMap[instance.status]!,
      'cometchat_uid': instance.cometchatUid,
      'employee_code': instance.employeeCode,
      'department': instance.department,
      'guide_license': instance.guideLicense,
      'languages': instance.languages,
      'years_experience': instance.yearsExperience,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
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
