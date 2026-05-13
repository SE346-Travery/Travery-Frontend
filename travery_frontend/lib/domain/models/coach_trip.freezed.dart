// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachTrip _$CoachTripFromJson(Map<String, dynamic> json) {
  return _CoachTrip.fromJson(json);
}

/// @nodoc
mixin _$CoachTrip {
  String? get id => throw _privateConstructorUsedError;
  String get routeId => throw _privateConstructorUsedError;
  String get coachId => throw _privateConstructorUsedError;
  String? get driverId => throw _privateConstructorUsedError;
  String? get coordinatorId => throw _privateConstructorUsedError;
  DateTime get departureTime => throw _privateConstructorUsedError;
  DateTime? get arrivalTime => throw _privateConstructorUsedError;
  CoachTripStatus get status => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Route? get route => throw _privateConstructorUsedError;
  Coach? get coach => throw _privateConstructorUsedError;
  Driver? get driver => throw _privateConstructorUsedError;
  User? get coordinator => throw _privateConstructorUsedError;
  List<CoachBooking>? get bookings => throw _privateConstructorUsedError;

  /// Serializes this CoachTrip to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachTripCopyWith<CoachTrip> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachTripCopyWith<$Res> {
  factory $CoachTripCopyWith(CoachTrip value, $Res Function(CoachTrip) then) =
      _$CoachTripCopyWithImpl<$Res, CoachTrip>;
  @useResult
  $Res call({
    String? id,
    String routeId,
    String coachId,
    String? driverId,
    String? coordinatorId,
    DateTime departureTime,
    DateTime? arrivalTime,
    CoachTripStatus status,
    DateTime? cancelledAt,
    String? cancellationReason,
    String? cancelledBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    Route? route,
    Coach? coach,
    Driver? driver,
    User? coordinator,
    List<CoachBooking>? bookings,
  });

  $RouteCopyWith<$Res>? get route;
  $CoachCopyWith<$Res>? get coach;
  $DriverCopyWith<$Res>? get driver;
  $UserCopyWith<$Res>? get coordinator;
}

/// @nodoc
class _$CoachTripCopyWithImpl<$Res, $Val extends CoachTrip>
    implements $CoachTripCopyWith<$Res> {
  _$CoachTripCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? routeId = null,
    Object? coachId = null,
    Object? driverId = freezed,
    Object? coordinatorId = freezed,
    Object? departureTime = null,
    Object? arrivalTime = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? route = freezed,
    Object? coach = freezed,
    Object? driver = freezed,
    Object? coordinator = freezed,
    Object? bookings = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            routeId: null == routeId
                ? _value.routeId
                : routeId // ignore: cast_nullable_to_non_nullable
                      as String,
            coachId: null == coachId
                ? _value.coachId
                : coachId // ignore: cast_nullable_to_non_nullable
                      as String,
            driverId: freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            coordinatorId: freezed == coordinatorId
                ? _value.coordinatorId
                : coordinatorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            departureTime: null == departureTime
                ? _value.departureTime
                : departureTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            arrivalTime: freezed == arrivalTime
                ? _value.arrivalTime
                : arrivalTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as CoachTripStatus,
            cancelledAt: freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cancellationReason: freezed == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledBy: freezed == cancelledBy
                ? _value.cancelledBy
                : cancelledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            route: freezed == route
                ? _value.route
                : route // ignore: cast_nullable_to_non_nullable
                      as Route?,
            coach: freezed == coach
                ? _value.coach
                : coach // ignore: cast_nullable_to_non_nullable
                      as Coach?,
            driver: freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                      as Driver?,
            coordinator: freezed == coordinator
                ? _value.coordinator
                : coordinator // ignore: cast_nullable_to_non_nullable
                      as User?,
            bookings: freezed == bookings
                ? _value.bookings
                : bookings // ignore: cast_nullable_to_non_nullable
                      as List<CoachBooking>?,
          )
          as $Val,
    );
  }

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouteCopyWith<$Res>? get route {
    if (_value.route == null) {
      return null;
    }

    return $RouteCopyWith<$Res>(_value.route!, (value) {
      return _then(_value.copyWith(route: value) as $Val);
    });
  }

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachCopyWith<$Res>? get coach {
    if (_value.coach == null) {
      return null;
    }

    return $CoachCopyWith<$Res>(_value.coach!, (value) {
      return _then(_value.copyWith(coach: value) as $Val);
    });
  }

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get coordinator {
    if (_value.coordinator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.coordinator!, (value) {
      return _then(_value.copyWith(coordinator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachTripImplCopyWith<$Res>
    implements $CoachTripCopyWith<$Res> {
  factory _$$CoachTripImplCopyWith(
    _$CoachTripImpl value,
    $Res Function(_$CoachTripImpl) then,
  ) = __$$CoachTripImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String routeId,
    String coachId,
    String? driverId,
    String? coordinatorId,
    DateTime departureTime,
    DateTime? arrivalTime,
    CoachTripStatus status,
    DateTime? cancelledAt,
    String? cancellationReason,
    String? cancelledBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    Route? route,
    Coach? coach,
    Driver? driver,
    User? coordinator,
    List<CoachBooking>? bookings,
  });

  @override
  $RouteCopyWith<$Res>? get route;
  @override
  $CoachCopyWith<$Res>? get coach;
  @override
  $DriverCopyWith<$Res>? get driver;
  @override
  $UserCopyWith<$Res>? get coordinator;
}

/// @nodoc
class __$$CoachTripImplCopyWithImpl<$Res>
    extends _$CoachTripCopyWithImpl<$Res, _$CoachTripImpl>
    implements _$$CoachTripImplCopyWith<$Res> {
  __$$CoachTripImplCopyWithImpl(
    _$CoachTripImpl _value,
    $Res Function(_$CoachTripImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? routeId = null,
    Object? coachId = null,
    Object? driverId = freezed,
    Object? coordinatorId = freezed,
    Object? departureTime = null,
    Object? arrivalTime = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? route = freezed,
    Object? coach = freezed,
    Object? driver = freezed,
    Object? coordinator = freezed,
    Object? bookings = freezed,
  }) {
    return _then(
      _$CoachTripImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        routeId: null == routeId
            ? _value.routeId
            : routeId // ignore: cast_nullable_to_non_nullable
                  as String,
        coachId: null == coachId
            ? _value.coachId
            : coachId // ignore: cast_nullable_to_non_nullable
                  as String,
        driverId: freezed == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        coordinatorId: freezed == coordinatorId
            ? _value.coordinatorId
            : coordinatorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        departureTime: null == departureTime
            ? _value.departureTime
            : departureTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        arrivalTime: freezed == arrivalTime
            ? _value.arrivalTime
            : arrivalTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as CoachTripStatus,
        cancelledAt: freezed == cancelledAt
            ? _value.cancelledAt
            : cancelledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cancellationReason: freezed == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledBy: freezed == cancelledBy
            ? _value.cancelledBy
            : cancelledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        route: freezed == route
            ? _value.route
            : route // ignore: cast_nullable_to_non_nullable
                  as Route?,
        coach: freezed == coach
            ? _value.coach
            : coach // ignore: cast_nullable_to_non_nullable
                  as Coach?,
        driver: freezed == driver
            ? _value.driver
            : driver // ignore: cast_nullable_to_non_nullable
                  as Driver?,
        coordinator: freezed == coordinator
            ? _value.coordinator
            : coordinator // ignore: cast_nullable_to_non_nullable
                  as User?,
        bookings: freezed == bookings
            ? _value._bookings
            : bookings // ignore: cast_nullable_to_non_nullable
                  as List<CoachBooking>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachTripImpl implements _CoachTrip {
  const _$CoachTripImpl({
    this.id,
    required this.routeId,
    required this.coachId,
    this.driverId,
    this.coordinatorId,
    required this.departureTime,
    this.arrivalTime,
    required this.status,
    this.cancelledAt,
    this.cancellationReason,
    this.cancelledBy,
    this.createdAt,
    this.updatedAt,
    this.route,
    this.coach,
    this.driver,
    this.coordinator,
    final List<CoachBooking>? bookings,
  }) : _bookings = bookings;

  factory _$CoachTripImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachTripImplFromJson(json);

  @override
  final String? id;
  @override
  final String routeId;
  @override
  final String coachId;
  @override
  final String? driverId;
  @override
  final String? coordinatorId;
  @override
  final DateTime departureTime;
  @override
  final DateTime? arrivalTime;
  @override
  final CoachTripStatus status;
  @override
  final DateTime? cancelledAt;
  @override
  final String? cancellationReason;
  @override
  final String? cancelledBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Route? route;
  @override
  final Coach? coach;
  @override
  final Driver? driver;
  @override
  final User? coordinator;
  final List<CoachBooking>? _bookings;
  @override
  List<CoachBooking>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoachTrip(id: $id, routeId: $routeId, coachId: $coachId, driverId: $driverId, coordinatorId: $coordinatorId, departureTime: $departureTime, arrivalTime: $arrivalTime, status: $status, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt, route: $route, coach: $coach, driver: $driver, coordinator: $coordinator, bookings: $bookings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTripImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.coordinatorId, coordinatorId) ||
                other.coordinatorId == coordinatorId) &&
            (identical(other.departureTime, departureTime) ||
                other.departureTime == departureTime) &&
            (identical(other.arrivalTime, arrivalTime) ||
                other.arrivalTime == arrivalTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.coach, coach) || other.coach == coach) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.coordinator, coordinator) ||
                other.coordinator == coordinator) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    routeId,
    coachId,
    driverId,
    coordinatorId,
    departureTime,
    arrivalTime,
    status,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    createdAt,
    updatedAt,
    route,
    coach,
    driver,
    coordinator,
    const DeepCollectionEquality().hash(_bookings),
  );

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTripImplCopyWith<_$CoachTripImpl> get copyWith =>
      __$$CoachTripImplCopyWithImpl<_$CoachTripImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachTripImplToJson(this);
  }
}

abstract class _CoachTrip implements CoachTrip {
  const factory _CoachTrip({
    final String? id,
    required final String routeId,
    required final String coachId,
    final String? driverId,
    final String? coordinatorId,
    required final DateTime departureTime,
    final DateTime? arrivalTime,
    required final CoachTripStatus status,
    final DateTime? cancelledAt,
    final String? cancellationReason,
    final String? cancelledBy,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Route? route,
    final Coach? coach,
    final Driver? driver,
    final User? coordinator,
    final List<CoachBooking>? bookings,
  }) = _$CoachTripImpl;

  factory _CoachTrip.fromJson(Map<String, dynamic> json) =
      _$CoachTripImpl.fromJson;

  @override
  String? get id;
  @override
  String get routeId;
  @override
  String get coachId;
  @override
  String? get driverId;
  @override
  String? get coordinatorId;
  @override
  DateTime get departureTime;
  @override
  DateTime? get arrivalTime;
  @override
  CoachTripStatus get status;
  @override
  DateTime? get cancelledAt;
  @override
  String? get cancellationReason;
  @override
  String? get cancelledBy;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Route? get route;
  @override
  Coach? get coach;
  @override
  Driver? get driver;
  @override
  User? get coordinator;
  @override
  List<CoachBooking>? get bookings;

  /// Create a copy of CoachTrip
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTripImplCopyWith<_$CoachTripImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
