// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachRoute _$CoachRouteFromJson(Map<String, dynamic> json) {
  return _CoachRoute.fromJson(json);
}

/// @nodoc
mixin _$CoachRoute {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_code')
  String get originCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_code')
  String get destinationCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'departure_time')
  String get departureTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_duration_minutes')
  int get estimatedDurationMinutes => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_price')
  double get basePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this CoachRoute to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachRouteCopyWith<CoachRoute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachRouteCopyWith<$Res> {
  factory $CoachRouteCopyWith(
    CoachRoute value,
    $Res Function(CoachRoute) then,
  ) = _$CoachRouteCopyWithImpl<$Res, CoachRoute>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'origin_code') String originCode,
    @JsonKey(name: 'destination_code') String destinationCode,
    @JsonKey(name: 'departure_time') String departureTime,
    @JsonKey(name: 'estimated_duration_minutes') int estimatedDurationMinutes,
    @JsonKey(name: 'base_price') double basePrice,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  });
}

/// @nodoc
class _$CoachRouteCopyWithImpl<$Res, $Val extends CoachRoute>
    implements $CoachRouteCopyWith<$Res> {
  _$CoachRouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originCode = null,
    Object? destinationCode = null,
    Object? departureTime = null,
    Object? estimatedDurationMinutes = null,
    Object? basePrice = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            originCode: null == originCode
                ? _value.originCode
                : originCode // ignore: cast_nullable_to_non_nullable
                      as String,
            destinationCode: null == destinationCode
                ? _value.destinationCode
                : destinationCode // ignore: cast_nullable_to_non_nullable
                      as String,
            departureTime: null == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as String,
            estimatedDurationMinutes: null == estimatedDurationMinutes
                ? _value.estimatedDurationMinutes
                : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
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
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachRouteImplCopyWith<$Res>
    implements $CoachRouteCopyWith<$Res> {
  factory _$$CoachRouteImplCopyWith(
    _$CoachRouteImpl value,
    $Res Function(_$CoachRouteImpl) then,
  ) = __$$CoachRouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'origin_code') String originCode,
    @JsonKey(name: 'destination_code') String destinationCode,
    @JsonKey(name: 'departure_time') String departureTime,
    @JsonKey(name: 'estimated_duration_minutes') int estimatedDurationMinutes,
    @JsonKey(name: 'base_price') double basePrice,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
  });
}

/// @nodoc
class __$$CoachRouteImplCopyWithImpl<$Res>
    extends _$CoachRouteCopyWithImpl<$Res, _$CoachRouteImpl>
    implements _$$CoachRouteImplCopyWith<$Res> {
  __$$CoachRouteImplCopyWithImpl(
    _$CoachRouteImpl _value,
    $Res Function(_$CoachRouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachRoute
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originCode = null,
    Object? destinationCode = null,
    Object? departureTime = null,
    Object? estimatedDurationMinutes = null,
    Object? basePrice = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$CoachRouteImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        originCode: null == originCode
            ? _value.originCode
            : originCode // ignore: cast_nullable_to_non_nullable
                  as String,
        destinationCode: null == destinationCode
            ? _value.destinationCode
            : destinationCode // ignore: cast_nullable_to_non_nullable
                  as String,
        departureTime: null == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as String,
        estimatedDurationMinutes: null == estimatedDurationMinutes
            ? _value.estimatedDurationMinutes
            : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
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
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachRouteImpl implements _CoachRoute {
  const _$CoachRouteImpl({
    this.id,
    @JsonKey(name: 'origin_code') required this.originCode,
    @JsonKey(name: 'destination_code') required this.destinationCode,
    @JsonKey(name: 'departure_time') required this.departureTime,
    @JsonKey(name: 'estimated_duration_minutes')
    required this.estimatedDurationMinutes,
    @JsonKey(name: 'base_price') required this.basePrice,
    @JsonKey(name: 'is_active') required this.isActive,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'deleted_at') this.deletedAt,
  });

  factory _$CoachRouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachRouteImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'origin_code')
  final String originCode;
  @override
  @JsonKey(name: 'destination_code')
  final String destinationCode;
  @override
  @JsonKey(name: 'departure_time')
  final String departureTime;
  @override
  @JsonKey(name: 'estimated_duration_minutes')
  final int estimatedDurationMinutes;
  @override
  @JsonKey(name: 'base_price')
  final double basePrice;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'CoachRoute(id: $id, originCode: $originCode, destinationCode: $destinationCode, departureTime: $departureTime, estimatedDurationMinutes: $estimatedDurationMinutes, basePrice: $basePrice, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachRouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originCode, originCode) ||
                other.originCode == originCode) &&
            (identical(other.destinationCode, destinationCode) ||
                other.destinationCode == destinationCode) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(
                  other.estimatedDurationMinutes,
                  estimatedDurationMinutes,
                ) ||
                other.estimatedDurationMinutes == estimatedDurationMinutes) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    originCode,
    destinationCode,
    departureTime,
    estimatedDurationMinutes,
    basePrice,
    isActive,
    createdAt,
    updatedAt,
    deletedAt,
  );

  /// Create a copy of CoachRoute
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachRouteImplCopyWith<_$CoachRouteImpl> get copyWith =>
      __$$CoachRouteImplCopyWithImpl<_$CoachRouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachRouteImplToJson(this);
  }
}

abstract class _CoachRoute implements CoachRoute {
  const factory _CoachRoute({
    final String? id,
    @JsonKey(name: 'origin_code') required final String originCode,
    @JsonKey(name: 'destination_code') required final String destinationCode,
    @JsonKey(name: 'departure_time') required final String departureTime,
    @JsonKey(name: 'estimated_duration_minutes')
    required final int estimatedDurationMinutes,
    @JsonKey(name: 'base_price') required final double basePrice,
    @JsonKey(name: 'is_active') required final bool isActive,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
  }) = _$CoachRouteImpl;

  factory _CoachRoute.fromJson(Map<String, dynamic> json) =
      _$CoachRouteImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'origin_code')
  String get originCode;
  @override
  @JsonKey(name: 'destination_code')
  String get destinationCode;
  @override
  @JsonKey(name: 'departure_time')
  String get departureTime;
  @override
  @JsonKey(name: 'estimated_duration_minutes')
  int get estimatedDurationMinutes;
  @override
  @JsonKey(name: 'base_price')
  double get basePrice;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;

  /// Create a copy of CoachRoute
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachRouteImplCopyWith<_$CoachRouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
