// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundPolicyRuleImpl _$$RefundPolicyRuleImplFromJson(
  Map<String, dynamic> json,
) => _$RefundPolicyRuleImpl(
  id: json['id'] as String?,
  refundPolicyId: json['refundPolicyId'] as String,
  daysBefore: (json['daysBefore'] as num).toInt(),
  refundPercentage: (json['refundPercentage'] as num).toDouble(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  refundPolicy: json['refundPolicy'] == null
      ? null
      : RefundPolicy.fromJson(json['refundPolicy'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RefundPolicyRuleImplToJson(
  _$RefundPolicyRuleImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'refundPolicyId': instance.refundPolicyId,
  'daysBefore': instance.daysBefore,
  'refundPercentage': instance.refundPercentage,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'refundPolicy': instance.refundPolicy,
};
