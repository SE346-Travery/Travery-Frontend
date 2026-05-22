// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_policy_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundPolicyRuleResponseImpl _$$RefundPolicyRuleResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RefundPolicyRuleResponseImpl(
  id: json['id'] as String,
  daysBefore: (json['daysBefore'] as num).toInt(),
  refundPercentage: (json['refundPercentage'] as num).toDouble(),
);

Map<String, dynamic> _$$RefundPolicyRuleResponseImplToJson(
  _$RefundPolicyRuleResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'daysBefore': instance.daysBefore,
  'refundPercentage': instance.refundPercentage,
};

_$RefundPolicyResponseImpl _$$RefundPolicyResponseImplFromJson(
  Map<String, dynamic> json,
) => _$RefundPolicyResponseImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  serviceType: json['serviceType'] as String,
  rules:
      (json['rules'] as List<dynamic>?)
          ?.map(
            (e) => RefundPolicyRuleResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$RefundPolicyResponseImplToJson(
  _$RefundPolicyResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'serviceType': instance.serviceType,
  'rules': instance.rules,
};
