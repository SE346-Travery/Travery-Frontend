// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_policy_rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundPolicyRule _$RefundPolicyRuleFromJson(Map<String, dynamic> json) {
  return _RefundPolicyRule.fromJson(json);
}

/// @nodoc
mixin _$RefundPolicyRule {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_policy_id')
  String get refundPolicyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hours_before_departure')
  int get hoursBeforeDeparture => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_percentage')
  double get refundPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
  RefundPolicy? get refundPolicy => throw _privateConstructorUsedError;

  /// Serializes this RefundPolicyRule to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundPolicyRuleCopyWith<RefundPolicyRule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundPolicyRuleCopyWith<$Res> {
  factory $RefundPolicyRuleCopyWith(
    RefundPolicyRule value,
    $Res Function(RefundPolicyRule) then,
  ) = _$RefundPolicyRuleCopyWithImpl<$Res, RefundPolicyRule>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'refund_policy_id') String refundPolicyId,
    @JsonKey(name: 'hours_before_departure') int hoursBeforeDeparture,
    @JsonKey(name: 'refund_percentage') double refundPercentage,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    RefundPolicy? refundPolicy,
  });

  $RefundPolicyCopyWith<$Res>? get refundPolicy;
}

/// @nodoc
class _$RefundPolicyRuleCopyWithImpl<$Res, $Val extends RefundPolicyRule>
    implements $RefundPolicyRuleCopyWith<$Res> {
  _$RefundPolicyRuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? refundPolicyId = null,
    Object? hoursBeforeDeparture = null,
    Object? refundPercentage = null,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? refundPolicy = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            refundPolicyId: null == refundPolicyId
                ? _value.refundPolicyId
                : refundPolicyId // ignore: cast_nullable_to_non_nullable
                      as String,
            hoursBeforeDeparture: null == hoursBeforeDeparture
                ? _value.hoursBeforeDeparture
                : hoursBeforeDeparture // ignore: cast_nullable_to_non_nullable
                      as int,
            refundPercentage: null == refundPercentage
                ? _value.refundPercentage
                : refundPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            refundPolicy: freezed == refundPolicy
                ? _value.refundPolicy
                : refundPolicy // ignore: cast_nullable_to_non_nullable
                      as RefundPolicy?,
          )
          as $Val,
    );
  }

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundPolicyCopyWith<$Res>? get refundPolicy {
    if (_value.refundPolicy == null) {
      return null;
    }

    return $RefundPolicyCopyWith<$Res>(_value.refundPolicy!, (value) {
      return _then(_value.copyWith(refundPolicy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundPolicyRuleImplCopyWith<$Res>
    implements $RefundPolicyRuleCopyWith<$Res> {
  factory _$$RefundPolicyRuleImplCopyWith(
    _$RefundPolicyRuleImpl value,
    $Res Function(_$RefundPolicyRuleImpl) then,
  ) = __$$RefundPolicyRuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'refund_policy_id') String refundPolicyId,
    @JsonKey(name: 'hours_before_departure') int hoursBeforeDeparture,
    @JsonKey(name: 'refund_percentage') double refundPercentage,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    RefundPolicy? refundPolicy,
  });

  @override
  $RefundPolicyCopyWith<$Res>? get refundPolicy;
}

/// @nodoc
class __$$RefundPolicyRuleImplCopyWithImpl<$Res>
    extends _$RefundPolicyRuleCopyWithImpl<$Res, _$RefundPolicyRuleImpl>
    implements _$$RefundPolicyRuleImplCopyWith<$Res> {
  __$$RefundPolicyRuleImplCopyWithImpl(
    _$RefundPolicyRuleImpl _value,
    $Res Function(_$RefundPolicyRuleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? refundPolicyId = null,
    Object? hoursBeforeDeparture = null,
    Object? refundPercentage = null,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? refundPolicy = freezed,
  }) {
    return _then(
      _$RefundPolicyRuleImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        refundPolicyId: null == refundPolicyId
            ? _value.refundPolicyId
            : refundPolicyId // ignore: cast_nullable_to_non_nullable
                  as String,
        hoursBeforeDeparture: null == hoursBeforeDeparture
            ? _value.hoursBeforeDeparture
            : hoursBeforeDeparture // ignore: cast_nullable_to_non_nullable
                  as int,
        refundPercentage: null == refundPercentage
            ? _value.refundPercentage
            : refundPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        refundPolicy: freezed == refundPolicy
            ? _value.refundPolicy
            : refundPolicy // ignore: cast_nullable_to_non_nullable
                  as RefundPolicy?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundPolicyRuleImpl implements _RefundPolicyRule {
  const _$RefundPolicyRuleImpl({
    this.id,
    @JsonKey(name: 'refund_policy_id') required this.refundPolicyId,
    @JsonKey(name: 'hours_before_departure') required this.hoursBeforeDeparture,
    @JsonKey(name: 'refund_percentage') required this.refundPercentage,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.refundPolicy,
  });

  factory _$RefundPolicyRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundPolicyRuleImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'refund_policy_id')
  final String refundPolicyId;
  @override
  @JsonKey(name: 'hours_before_departure')
  final int hoursBeforeDeparture;
  @override
  @JsonKey(name: 'refund_percentage')
  final double refundPercentage;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATION
  @override
  final RefundPolicy? refundPolicy;

  @override
  String toString() {
    return 'RefundPolicyRule(id: $id, refundPolicyId: $refundPolicyId, hoursBeforeDeparture: $hoursBeforeDeparture, refundPercentage: $refundPercentage, description: $description, createdAt: $createdAt, updatedAt: $updatedAt, refundPolicy: $refundPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundPolicyRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refundPolicyId, refundPolicyId) ||
                other.refundPolicyId == refundPolicyId) &&
            (identical(other.hoursBeforeDeparture, hoursBeforeDeparture) ||
                other.hoursBeforeDeparture == hoursBeforeDeparture) &&
            (identical(other.refundPercentage, refundPercentage) ||
                other.refundPercentage == refundPercentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.refundPolicy, refundPolicy) ||
                other.refundPolicy == refundPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    refundPolicyId,
    hoursBeforeDeparture,
    refundPercentage,
    description,
    createdAt,
    updatedAt,
    refundPolicy,
  );

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundPolicyRuleImplCopyWith<_$RefundPolicyRuleImpl> get copyWith =>
      __$$RefundPolicyRuleImplCopyWithImpl<_$RefundPolicyRuleImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundPolicyRuleImplToJson(this);
  }
}

abstract class _RefundPolicyRule implements RefundPolicyRule {
  const factory _RefundPolicyRule({
    final String? id,
    @JsonKey(name: 'refund_policy_id') required final String refundPolicyId,
    @JsonKey(name: 'hours_before_departure')
    required final int hoursBeforeDeparture,
    @JsonKey(name: 'refund_percentage') required final double refundPercentage,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final RefundPolicy? refundPolicy,
  }) = _$RefundPolicyRuleImpl;

  factory _RefundPolicyRule.fromJson(Map<String, dynamic> json) =
      _$RefundPolicyRuleImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'refund_policy_id')
  String get refundPolicyId;
  @override
  @JsonKey(name: 'hours_before_departure')
  int get hoursBeforeDeparture;
  @override
  @JsonKey(name: 'refund_percentage')
  double get refundPercentage;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  RefundPolicy? get refundPolicy;

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundPolicyRuleImplCopyWith<_$RefundPolicyRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
