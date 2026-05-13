// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_policy_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundPolicyRuleImpl _$$RefundPolicyRuleImplFromJson(
  Map<String, dynamic> json,
) => _$RefundPolicyRuleImpl(
  id: json['id'] as String?,
  refundPolicyId: json['refund_policy_id'] as String,
  hoursBeforeDeparture: (json['hours_before_departure'] as num).toInt(),
  refundPercentage: (json['refund_percentage'] as num).toDouble(),
  description: json['description'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  refundPolicy: json['refund_policy'] == null
      ? null
      : RefundPolicy.fromJson(json['refund_policy'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RefundPolicyRuleImplToJson(
  _$RefundPolicyRuleImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'refund_policy_id': instance.refundPolicyId,
  'hours_before_departure': instance.hoursBeforeDeparture,
  'refund_percentage': instance.refundPercentage,
  'description': instance.description,
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'refund_policy': instance.refundPolicy,
};
