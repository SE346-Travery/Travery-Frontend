import 'package:freezed_annotation/freezed_annotation.dart';

part 'refund_policy_response.freezed.dart';
part 'refund_policy_response.g.dart';

@freezed
class RefundPolicyRuleResponse with _$RefundPolicyRuleResponse {
  const factory RefundPolicyRuleResponse({
    required String id,
    required int daysBefore,
    required double refundPercentage,
  }) = _RefundPolicyRuleResponse;

  factory RefundPolicyRuleResponse.fromJson(Map<String, dynamic> json) =>
      _$RefundPolicyRuleResponseFromJson(json);
}

@freezed
class RefundPolicyResponse with _$RefundPolicyResponse {
  const factory RefundPolicyResponse({
    required String id,
    required String name,
    required String serviceType,
    @Default([]) List<RefundPolicyRuleResponse> rules,
  }) = _RefundPolicyResponse;

  factory RefundPolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$RefundPolicyResponseFromJson(json);
}
