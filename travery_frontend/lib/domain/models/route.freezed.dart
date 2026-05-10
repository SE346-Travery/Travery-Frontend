// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Route _$RouteFromJson(Map<String, dynamic> json) {
  return _Route.fromJson(json);
}

/// @nodoc
mixin _$Route {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_station_id')
  String get originStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_station_id')
  String get destinationStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'distance_km')
  double? get distanceKm => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_hours')
  double? get estimatedHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'base_price')
  double get basePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_policy_id')
  String? get refundPolicyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  Station? get originStation => throw _privateConstructorUsedError;
  Station? get destinationStation => throw _privateConstructorUsedError;
  RefundPolicy? get refundPolicy => throw _privateConstructorUsedError;
  List<CoachTrip>? get trips => throw _privateConstructorUsedError;

  /// Serializes this Route to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouteCopyWith<Route> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteCopyWith<$Res> {
  factory $RouteCopyWith(Route value, $Res Function(Route) then) =
      _$RouteCopyWithImpl<$Res, Route>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'origin_station_id') String originStationId,
    @JsonKey(name: 'destination_station_id') String destinationStationId,
    @JsonKey(name: 'distance_km') double? distanceKm,
    @JsonKey(name: 'estimated_hours') double? estimatedHours,
    @JsonKey(name: 'base_price') double basePrice,
    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Station? originStation,
    Station? destinationStation,
    RefundPolicy? refundPolicy,
    List<CoachTrip>? trips,
  });

  $StationCopyWith<$Res>? get originStation;
  $StationCopyWith<$Res>? get destinationStation;
  $RefundPolicyCopyWith<$Res>? get refundPolicy;
}

/// @nodoc
class _$RouteCopyWithImpl<$Res, $Val extends Route>
    implements $RouteCopyWith<$Res> {
  _$RouteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originStationId = null,
    Object? destinationStationId = null,
    Object? distanceKm = freezed,
    Object? estimatedHours = freezed,
    Object? basePrice = null,
    Object? refundPolicyId = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? originStation = freezed,
    Object? destinationStation = freezed,
    Object? refundPolicy = freezed,
    Object? trips = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            originStationId: null == originStationId
                ? _value.originStationId
                : originStationId // ignore: cast_nullable_to_non_nullable
                      as String,
            destinationStationId: null == destinationStationId
                ? _value.destinationStationId
                : destinationStationId // ignore: cast_nullable_to_non_nullable
                      as String,
            distanceKm: freezed == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                      as double?,
            estimatedHours: freezed == estimatedHours
                ? _value.estimatedHours
                : estimatedHours // ignore: cast_nullable_to_non_nullable
                      as double?,
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
            refundPolicyId: freezed == refundPolicyId
                ? _value.refundPolicyId
                : refundPolicyId // ignore: cast_nullable_to_non_nullable
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
            originStation: freezed == originStation
                ? _value.originStation
                : originStation // ignore: cast_nullable_to_non_nullable
                      as Station?,
            destinationStation: freezed == destinationStation
                ? _value.destinationStation
                : destinationStation // ignore: cast_nullable_to_non_nullable
                      as Station?,
            refundPolicy: freezed == refundPolicy
                ? _value.refundPolicy
                : refundPolicy // ignore: cast_nullable_to_non_nullable
                      as RefundPolicy?,
            trips: freezed == trips
                ? _value.trips
                : trips // ignore: cast_nullable_to_non_nullable
                      as List<CoachTrip>?,
          )
          as $Val,
    );
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res>? get originStation {
    if (_value.originStation == null) {
      return null;
    }

    return $StationCopyWith<$Res>(_value.originStation!, (value) {
      return _then(_value.copyWith(originStation: value) as $Val);
    });
  }

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res>? get destinationStation {
    if (_value.destinationStation == null) {
      return null;
    }

    return $StationCopyWith<$Res>(_value.destinationStation!, (value) {
      return _then(_value.copyWith(destinationStation: value) as $Val);
    });
  }

  /// Create a copy of Route
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
abstract class _$$RouteImplCopyWith<$Res> implements $RouteCopyWith<$Res> {
  factory _$$RouteImplCopyWith(
    _$RouteImpl value,
    $Res Function(_$RouteImpl) then,
  ) = __$$RouteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'origin_station_id') String originStationId,
    @JsonKey(name: 'destination_station_id') String destinationStationId,
    @JsonKey(name: 'distance_km') double? distanceKm,
    @JsonKey(name: 'estimated_hours') double? estimatedHours,
    @JsonKey(name: 'base_price') double basePrice,
    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Station? originStation,
    Station? destinationStation,
    RefundPolicy? refundPolicy,
    List<CoachTrip>? trips,
  });

  @override
  $StationCopyWith<$Res>? get originStation;
  @override
  $StationCopyWith<$Res>? get destinationStation;
  @override
  $RefundPolicyCopyWith<$Res>? get refundPolicy;
}

/// @nodoc
class __$$RouteImplCopyWithImpl<$Res>
    extends _$RouteCopyWithImpl<$Res, _$RouteImpl>
    implements _$$RouteImplCopyWith<$Res> {
  __$$RouteImplCopyWithImpl(
    _$RouteImpl _value,
    $Res Function(_$RouteImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? originStationId = null,
    Object? destinationStationId = null,
    Object? distanceKm = freezed,
    Object? estimatedHours = freezed,
    Object? basePrice = null,
    Object? refundPolicyId = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? originStation = freezed,
    Object? destinationStation = freezed,
    Object? refundPolicy = freezed,
    Object? trips = freezed,
  }) {
    return _then(
      _$RouteImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        originStationId: null == originStationId
            ? _value.originStationId
            : originStationId // ignore: cast_nullable_to_non_nullable
                  as String,
        destinationStationId: null == destinationStationId
            ? _value.destinationStationId
            : destinationStationId // ignore: cast_nullable_to_non_nullable
                  as String,
        distanceKm: freezed == distanceKm
            ? _value.distanceKm
            : distanceKm // ignore: cast_nullable_to_non_nullable
                  as double?,
        estimatedHours: freezed == estimatedHours
            ? _value.estimatedHours
            : estimatedHours // ignore: cast_nullable_to_non_nullable
                  as double?,
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
        refundPolicyId: freezed == refundPolicyId
            ? _value.refundPolicyId
            : refundPolicyId // ignore: cast_nullable_to_non_nullable
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
        originStation: freezed == originStation
            ? _value.originStation
            : originStation // ignore: cast_nullable_to_non_nullable
                  as Station?,
        destinationStation: freezed == destinationStation
            ? _value.destinationStation
            : destinationStation // ignore: cast_nullable_to_non_nullable
                  as Station?,
        refundPolicy: freezed == refundPolicy
            ? _value.refundPolicy
            : refundPolicy // ignore: cast_nullable_to_non_nullable
                  as RefundPolicy?,
        trips: freezed == trips
            ? _value._trips
            : trips // ignore: cast_nullable_to_non_nullable
                  as List<CoachTrip>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteImpl implements _Route {
  const _$RouteImpl({
    this.id,
    @JsonKey(name: 'origin_station_id') required this.originStationId,
    @JsonKey(name: 'destination_station_id') required this.destinationStationId,
    @JsonKey(name: 'distance_km') this.distanceKm,
    @JsonKey(name: 'estimated_hours') this.estimatedHours,
    @JsonKey(name: 'base_price') required this.basePrice,
    @JsonKey(name: 'refund_policy_id') this.refundPolicyId,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.originStation,
    this.destinationStation,
    this.refundPolicy,
    final List<CoachTrip>? trips,
  }) : _trips = trips;

  factory _$RouteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'origin_station_id')
  final String originStationId;
  @override
  @JsonKey(name: 'destination_station_id')
  final String destinationStationId;
  @override
  @JsonKey(name: 'distance_km')
  final double? distanceKm;
  @override
  @JsonKey(name: 'estimated_hours')
  final double? estimatedHours;
  @override
  @JsonKey(name: 'base_price')
  final double basePrice;
  @override
  @JsonKey(name: 'refund_policy_id')
  final String? refundPolicyId;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
  @override
  final Station? originStation;
  @override
  final Station? destinationStation;
  @override
  final RefundPolicy? refundPolicy;
  final List<CoachTrip>? _trips;
  @override
  List<CoachTrip>? get trips {
    final value = _trips;
    if (value == null) return null;
    if (_trips is EqualUnmodifiableListView) return _trips;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Route(id: $id, originStationId: $originStationId, destinationStationId: $destinationStationId, distanceKm: $distanceKm, estimatedHours: $estimatedHours, basePrice: $basePrice, refundPolicyId: $refundPolicyId, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, originStation: $originStation, destinationStation: $destinationStation, refundPolicy: $refundPolicy, trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originStationId, originStationId) ||
                other.originStationId == originStationId) &&
            (identical(other.destinationStationId, destinationStationId) ||
                other.destinationStationId == destinationStationId) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            (identical(other.estimatedHours, estimatedHours) ||
                other.estimatedHours == estimatedHours) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.refundPolicyId, refundPolicyId) ||
                other.refundPolicyId == refundPolicyId) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.originStation, originStation) ||
                other.originStation == originStation) &&
            (identical(other.destinationStation, destinationStation) ||
                other.destinationStation == destinationStation) &&
            (identical(other.refundPolicy, refundPolicy) ||
                other.refundPolicy == refundPolicy) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    originStationId,
    destinationStationId,
    distanceKm,
    estimatedHours,
    basePrice,
    refundPolicyId,
    isActive,
    createdAt,
    updatedAt,
    originStation,
    destinationStation,
    refundPolicy,
    const DeepCollectionEquality().hash(_trips),
  );

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      __$$RouteImplCopyWithImpl<_$RouteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteImplToJson(this);
  }
}

abstract class _Route implements Route {
  const factory _Route({
    final String? id,
    @JsonKey(name: 'origin_station_id') required final String originStationId,
    @JsonKey(name: 'destination_station_id')
    required final String destinationStationId,
    @JsonKey(name: 'distance_km') final double? distanceKm,
    @JsonKey(name: 'estimated_hours') final double? estimatedHours,
    @JsonKey(name: 'base_price') required final double basePrice,
    @JsonKey(name: 'refund_policy_id') final String? refundPolicyId,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final Station? originStation,
    final Station? destinationStation,
    final RefundPolicy? refundPolicy,
    final List<CoachTrip>? trips,
  }) = _$RouteImpl;

  factory _Route.fromJson(Map<String, dynamic> json) = _$RouteImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'origin_station_id')
  String get originStationId;
  @override
  @JsonKey(name: 'destination_station_id')
  String get destinationStationId;
  @override
  @JsonKey(name: 'distance_km')
  double? get distanceKm;
  @override
  @JsonKey(name: 'estimated_hours')
  double? get estimatedHours;
  @override
  @JsonKey(name: 'base_price')
  double get basePrice;
  @override
  @JsonKey(name: 'refund_policy_id')
  String? get refundPolicyId;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
  @override
  Station? get originStation;
  @override
  Station? get destinationStation;
  @override
  RefundPolicy? get refundPolicy;
  @override
  List<CoachTrip>? get trips;

  /// Create a copy of Route
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouteImplCopyWith<_$RouteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
