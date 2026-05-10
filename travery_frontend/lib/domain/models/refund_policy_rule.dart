import 'package:freezed_annotation/freezed_annotation.dart';

import 'refund_policy.dart';

part 'refund_policy_rule.freezed.dart';
part 'refund_policy_rule.g.dart';

/// Specific time-based threshold for refund calculations.
@freezed
class RefundPolicyRule with _$RefundPolicyRule {
  const factory RefundPolicyRule({
    String? id,

    @JsonKey(name: 'refund_policy_id') required String refundPolicyId,

    @JsonKey(name: 'hours_before_departure') required int hoursBeforeDeparture,

    @JsonKey(name: 'refund_percentage') required double refundPercentage,

    @JsonKey(name: 'description') String? description,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    RefundPolicy? refundPolicy,
  }) = _RefundPolicyRule;

  factory RefundPolicyRule.fromJson(Map<String, dynamic> json) =>
      _$RefundPolicyRuleFromJson(json);
}
