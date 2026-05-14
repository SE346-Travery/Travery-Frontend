// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoordinatorImpl _$$CoordinatorImplFromJson(Map<String, dynamic> json) =>
    _$CoordinatorImpl(
      id: json['id'] as String?,
      employeeCode: json['employeeCode'] as String,
      department: $enumDecodeNullable(
        _$CoordinatorDepartmentEnumMap,
        json['department'],
      ),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoordinatorImplToJson(_$CoordinatorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeCode': instance.employeeCode,
      'department': _$CoordinatorDepartmentEnumMap[instance.department],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

const _$CoordinatorDepartmentEnumMap = {
  CoordinatorDepartment.tour: 'TOUR',
  CoordinatorDepartment.hotel: 'HOTEL',
  CoordinatorDepartment.coach: 'COACH',
};
