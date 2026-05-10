// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordinatorImpl _$$CoordinatorImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatorImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      employeeCode: json['employee_code'] as String,
      department: $enumDecodeNullable(
        _$CoordinatorDepartmentEnumMap,
        json['department'],
      ),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoordinatorImplToJson(_$CoordinatorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'employee_code': instance.employeeCode,
      'department': _$CoordinatorDepartmentEnumMap[instance.department],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

const _$CoordinatorDepartmentEnumMap = {
  CoordinatorDepartment.tour: 'TOUR',
  CoordinatorDepartment.hotel: 'HOTEL',
  CoordinatorDepartment.coach: 'COACH',
};
