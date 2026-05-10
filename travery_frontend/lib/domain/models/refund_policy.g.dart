// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundPolicyImpl _$$RefundPolicyImplFromJson(Map<String, dynamic> json) =>
    _$RefundPolicyImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      serviceType: $enumDecode(_$ServiceTypeEnumMap, json['service_type']),
      description: json['description'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => RefundPolicyRule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RefundPolicyImplToJson(_$RefundPolicyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'service_type': _$ServiceTypeEnumMap[instance.serviceType]!,
      'description': instance.description,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'rules': instance.rules,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.tour: 'TOUR',
  ServiceType.hotel: 'HOTEL',
  ServiceType.coach: 'COACH',
};
