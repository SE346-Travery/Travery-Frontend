import 'package:freezed_annotation/freezed_annotation.dart';

import 'refund_policy_rule.dart';

part 'refund_policy.freezed.dart';
part 'refund_policy.g.dart';

/// Defines named sets of cancellation rules for different services or periods.
@freezed
class RefundPolicy with _$RefundPolicy {
  const factory RefundPolicy({
    String? id,

    required String name,

    @JsonKey(name: 'service_type') required ServiceType serviceType,

    String? description,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
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
