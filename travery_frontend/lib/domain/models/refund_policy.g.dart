// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_policy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundPolicyImpl _$$RefundPolicyImplFromJson(Map<String, dynamic> json) =>
    _$RefundPolicyImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      serviceType: $enumDecode(_$ServiceTypeEnumMap, json['serviceType']),
      isActive: json['isActive'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => RefundPolicyRule.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RefundPolicyImplToJson(_$RefundPolicyImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType]!,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'rules': instance.rules,
    };

const _$ServiceTypeEnumMap = {
  ServiceType.tour: 'TOUR',
  ServiceType.hotel: 'HOTEL',
  ServiceType.coach: 'COACH',
};
