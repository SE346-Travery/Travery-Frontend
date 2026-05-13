import 'package:freezed_annotation/freezed_annotation.dart';

import 'refund_policy_rule.dart';

part 'refund_policy.freezed.dart';
part 'refund_policy.g.dart';
@freezed
class RefundPolicy with _$RefundPolicy {
  const factory RefundPolicy({
    String? id,

    required String name,

    required ServiceType serviceType,

    String? description,

    @Default(true) bool isActive,

    DateTime? createdAt,

    DateTime? updatedAt,
    List<RefundPolicyRule>? rules,
  }) = _RefundPolicy;

  factory RefundPolicy.fromJson(Map<String, dynamic> json) =>
      _$RefundPolicyFromJson(json);
}

@JsonEnum()
enum ServiceType {
  @JsonValue('TOUR')
  tour,
  @JsonValue('HOTEL')
  hotel,
  @JsonValue('COACH')
  coach,
}
