import 'package:freezed_annotation/freezed_annotation.dart';

import 'refund_policy.dart';

part 'refund_policy_rule.freezed.dart';
part 'refund_policy_rule.g.dart';
@freezed
class RefundPolicyRule with _$RefundPolicyRule {
  const factory RefundPolicyRule({
    String? id,
    required String refundPolicyId,
    required int daysBefore,
    required double refundPercentage,
    DateTime? createdAt,
    DateTime? updatedAt,
    RefundPolicy? refundPolicy,
  }) = _RefundPolicyRule;

  factory RefundPolicyRule.fromJson(Map<String, dynamic> json) =>
      _$RefundPolicyRuleFromJson(json);
}
