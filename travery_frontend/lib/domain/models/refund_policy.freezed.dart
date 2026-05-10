// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundPolicy _$RefundPolicyFromJson(Map<String, dynamic> json) {
  return _RefundPolicy.fromJson(json);
}

/// @nodoc
mixin _$RefundPolicy {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_type')
  ServiceType get serviceType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
  List<RefundPolicyRule>? get rules => throw _privateConstructorUsedError;

  /// Serializes this RefundPolicy to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundPolicyCopyWith<RefundPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundPolicyCopyWith<$Res> {
  factory $RefundPolicyCopyWith(
    RefundPolicy value,
    $Res Function(RefundPolicy) then,
  ) = _$RefundPolicyCopyWithImpl<$Res, RefundPolicy>;
  @useResult
  $Res call({
    String? id,
    String name,
    @JsonKey(name: 'service_type') ServiceType serviceType,
    String? description,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<RefundPolicyRule>? rules,
  });
}

/// @nodoc
class _$RefundPolicyCopyWithImpl<$Res, $Val extends RefundPolicy>
    implements $RefundPolicyCopyWith<$Res> {
  _$RefundPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? serviceType = null,
    Object? description = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rules = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            serviceType: null == serviceType
                ? _value.serviceType
                : serviceType // ignore: cast_nullable_to_non_nullable
                      as ServiceType,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            rules: freezed == rules
                ? _value.rules
                : rules // ignore: cast_nullable_to_non_nullable
                      as List<RefundPolicyRule>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RefundPolicyImplCopyWith<$Res>
    implements $RefundPolicyCopyWith<$Res> {
  factory _$$RefundPolicyImplCopyWith(
    _$RefundPolicyImpl value,
    $Res Function(_$RefundPolicyImpl) then,
  ) = __$$RefundPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String name,
    @JsonKey(name: 'service_type') ServiceType serviceType,
    String? description,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<RefundPolicyRule>? rules,
  });
}

/// @nodoc
class __$$RefundPolicyImplCopyWithImpl<$Res>
    extends _$RefundPolicyCopyWithImpl<$Res, _$RefundPolicyImpl>
    implements _$$RefundPolicyImplCopyWith<$Res> {
  __$$RefundPolicyImplCopyWithImpl(
    _$RefundPolicyImpl _value,
    $Res Function(_$RefundPolicyImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? serviceType = null,
    Object? description = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rules = freezed,
  }) {
    return _then(
      _$RefundPolicyImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        serviceType: null == serviceType
            ? _value.serviceType
            : serviceType // ignore: cast_nullable_to_non_nullable
                  as ServiceType,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        rules: freezed == rules
            ? _value._rules
            : rules // ignore: cast_nullable_to_non_nullable
                  as List<RefundPolicyRule>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundPolicyImpl implements _RefundPolicy {
  const _$RefundPolicyImpl({
    this.id,
    required this.name,
    @JsonKey(name: 'service_type') required this.serviceType,
    this.description,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    final List<RefundPolicyRule>? rules,
  }) : _rules = rules;

  factory _$RefundPolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundPolicyImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  @JsonKey(name: 'service_type')
  final ServiceType serviceType;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATION
  final List<RefundPolicyRule>? _rules;

  /// RELATION
  @override
  List<RefundPolicyRule>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RefundPolicy(id: $id, name: $name, serviceType: $serviceType, description: $description, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, rules: $rules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundPolicyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._rules, _rules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    serviceType,
    description,
    isActive,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_rules),
  );

  /// Create a copy of RefundPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundPolicyImplCopyWith<_$RefundPolicyImpl> get copyWith =>
      __$$RefundPolicyImplCopyWithImpl<_$RefundPolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundPolicyImplToJson(this);
  }
}

abstract class _RefundPolicy implements RefundPolicy {
  const factory _RefundPolicy({
    final String? id,
    required final String name,
    @JsonKey(name: 'service_type') required final ServiceType serviceType,
    final String? description,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final List<RefundPolicyRule>? rules,
  }) = _$RefundPolicyImpl;

  factory _RefundPolicy.fromJson(Map<String, dynamic> json) =
      _$RefundPolicyImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'service_type')
  ServiceType get serviceType;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  List<RefundPolicyRule>? get rules;

  /// Create a copy of RefundPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundPolicyImplCopyWith<_$RefundPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
