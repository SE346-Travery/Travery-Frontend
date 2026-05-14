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
  String get refundPolicyId => throw _privateConstructorUsedError;
  int get daysBefore => throw _privateConstructorUsedError;
  double get refundPercentage => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
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
    String refundPolicyId,
    int daysBefore,
    double refundPercentage,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    Object? daysBefore = null,
    Object? refundPercentage = null,
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
            daysBefore: null == daysBefore
                ? _value.daysBefore
                : daysBefore // ignore: cast_nullable_to_non_nullable
                      as int,
            refundPercentage: null == refundPercentage
                ? _value.refundPercentage
                : refundPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
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
    String refundPolicyId,
    int daysBefore,
    double refundPercentage,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    Object? daysBefore = null,
    Object? refundPercentage = null,
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
        daysBefore: null == daysBefore
            ? _value.daysBefore
            : daysBefore // ignore: cast_nullable_to_non_nullable
                  as int,
        refundPercentage: null == refundPercentage
            ? _value.refundPercentage
            : refundPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
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
    required this.refundPolicyId,
    required this.daysBefore,
    required this.refundPercentage,
    this.createdAt,
    this.updatedAt,
    this.refundPolicy,
  });

  factory _$RefundPolicyRuleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundPolicyRuleImplFromJson(json);

  @override
  final String? id;
  @override
  final String refundPolicyId;
  @override
  final int daysBefore;
  @override
  final double refundPercentage;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final RefundPolicy? refundPolicy;

  @override
  String toString() {
    return 'RefundPolicyRule(id: $id, refundPolicyId: $refundPolicyId, daysBefore: $daysBefore, refundPercentage: $refundPercentage, createdAt: $createdAt, updatedAt: $updatedAt, refundPolicy: $refundPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundPolicyRuleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.refundPolicyId, refundPolicyId) ||
                other.refundPolicyId == refundPolicyId) &&
            (identical(other.daysBefore, daysBefore) ||
                other.daysBefore == daysBefore) &&
            (identical(other.refundPercentage, refundPercentage) ||
                other.refundPercentage == refundPercentage) &&
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
    daysBefore,
    refundPercentage,
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
    required final String refundPolicyId,
    required final int daysBefore,
    required final double refundPercentage,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final RefundPolicy? refundPolicy,
  }) = _$RefundPolicyRuleImpl;

  factory _RefundPolicyRule.fromJson(Map<String, dynamic> json) =
      _$RefundPolicyRuleImpl.fromJson;

  @override
  String? get id;
  @override
  String get refundPolicyId;
  @override
  int get daysBefore;
  @override
  double get refundPercentage;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  RefundPolicy? get refundPolicy;

  /// Create a copy of RefundPolicyRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundPolicyRuleImplCopyWith<_$RefundPolicyRuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
