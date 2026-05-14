// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuideImpl _$$GuideImplFromJson(Map<String, dynamic> json) => _$GuideImpl(
  id: json['id'] as String?,
  employeeCode: json['employeeCode'] as String,
  guideLicense: json['guideLicense'] as String,
  languages: (json['languages'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  yearsExperience: (json['yearsExperience'] as num?)?.toInt() ?? 0,
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

Map<String, dynamic> _$$GuideImplToJson(_$GuideImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employeeCode': instance.employeeCode,
      'guideLicense': instance.guideLicense,
      'languages': instance.languages,
      'yearsExperience': instance.yearsExperience,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };
