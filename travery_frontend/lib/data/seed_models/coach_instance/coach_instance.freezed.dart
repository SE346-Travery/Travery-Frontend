// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_instance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachInstance _$CoachInstanceFromJson(Map<String, dynamic> json) {
  return _CoachInstance.fromJson(json);
}

/// @nodoc
mixin _$CoachInstance {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'route_id')
  String get routeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'departure_date')
  DateTime get departureDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_id')
  String? get vehicleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'driver_id')
  String? get driverId => throw _privateConstructorUsedError;
  @JsonKey(name: 'guide_id')
  String? get guideId => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_by')
  String? get assignedBy => throw _privateConstructorUsedError;
  CoachInstanceStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  List<CoachBooking>? get bookings => throw _privateConstructorUsedError;
  List<CoachInstanceSeat>? get seats => throw _privateConstructorUsedError;

  /// Serializes this CoachInstance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachInstance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachInstanceCopyWith<CoachInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachInstanceCopyWith<$Res> {
  factory $CoachInstanceCopyWith(
    CoachInstance value,
    $Res Function(CoachInstance) then,
  ) = _$CoachInstanceCopyWithImpl<$Res, CoachInstance>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'route_id') String routeId,
    @JsonKey(name: 'departure_date') DateTime departureDate,
    @JsonKey(name: 'vehicle_id') String? vehicleId,
    @JsonKey(name: 'driver_id') String? driverId,
    @JsonKey(name: 'guide_id') String? guideId,
    @JsonKey(name: 'assigned_by') String? assignedBy,
    CoachInstanceStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<CoachBooking>? bookings,
    List<CoachInstanceSeat>? seats,
  });
}

/// @nodoc
class _$CoachInstanceCopyWithImpl<$Res, $Val extends CoachInstance>
    implements $CoachInstanceCopyWith<$Res> {
  _$CoachInstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachInstance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? routeId = null,
    Object? departureDate = null,
    Object? vehicleId = freezed,
    Object? driverId = freezed,
    Object? guideId = freezed,
    Object? assignedBy = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookings = freezed,
    Object? seats = freezed,
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
            departureDate: null == departureDate
                ? _value.departureDate
                : departureDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            vehicleId: freezed == vehicleId
                ? _value.vehicleId
                : vehicleId // ignore: cast_nullable_to_non_nullable
                      as String?,
            driverId: freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                      as String?,
            guideId: freezed == guideId
                ? _value.guideId
                : guideId // ignore: cast_nullable_to_non_nullable
                      as String?,
            assignedBy: freezed == assignedBy
                ? _value.assignedBy
                : assignedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as CoachInstanceStatus,
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
            bookings: freezed == bookings
                ? _value.bookings
                : bookings // ignore: cast_nullable_to_non_nullable
                      as List<CoachBooking>?,
            seats: freezed == seats
                ? _value.seats
                : seats // ignore: cast_nullable_to_non_nullable
                      as List<CoachInstanceSeat>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachInstanceImplCopyWith<$Res>
    implements $CoachInstanceCopyWith<$Res> {
  factory _$$CoachInstanceImplCopyWith(
    _$CoachInstanceImpl value,
    $Res Function(_$CoachInstanceImpl) then,
  ) = __$$CoachInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'route_id') String routeId,
    @JsonKey(name: 'departure_date') DateTime departureDate,
    @JsonKey(name: 'vehicle_id') String? vehicleId,
    @JsonKey(name: 'driver_id') String? driverId,
    @JsonKey(name: 'guide_id') String? guideId,
    @JsonKey(name: 'assigned_by') String? assignedBy,
    CoachInstanceStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<CoachBooking>? bookings,
    List<CoachInstanceSeat>? seats,
  });
}

/// @nodoc
class __$$CoachInstanceImplCopyWithImpl<$Res>
    extends _$CoachInstanceCopyWithImpl<$Res, _$CoachInstanceImpl>
    implements _$$CoachInstanceImplCopyWith<$Res> {
  __$$CoachInstanceImplCopyWithImpl(
    _$CoachInstanceImpl _value,
    $Res Function(_$CoachInstanceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachInstance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? routeId = null,
    Object? departureDate = null,
    Object? vehicleId = freezed,
    Object? driverId = freezed,
    Object? guideId = freezed,
    Object? assignedBy = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? bookings = freezed,
    Object? seats = freezed,
  }) {
    return _then(
      _$CoachInstanceImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        routeId: null == routeId
            ? _value.routeId
            : routeId // ignore: cast_nullable_to_non_nullable
                  as String,
        departureDate: null == departureDate
            ? _value.departureDate
            : departureDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        vehicleId: freezed == vehicleId
            ? _value.vehicleId
            : vehicleId // ignore: cast_nullable_to_non_nullable
                  as String?,
        driverId: freezed == driverId
            ? _value.driverId
            : driverId // ignore: cast_nullable_to_non_nullable
                  as String?,
        guideId: freezed == guideId
            ? _value.guideId
            : guideId // ignore: cast_nullable_to_non_nullable
                  as String?,
        assignedBy: freezed == assignedBy
            ? _value.assignedBy
            : assignedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as CoachInstanceStatus,
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
        bookings: freezed == bookings
            ? _value._bookings
            : bookings // ignore: cast_nullable_to_non_nullable
                  as List<CoachBooking>?,
        seats: freezed == seats
            ? _value._seats
            : seats // ignore: cast_nullable_to_non_nullable
                  as List<CoachInstanceSeat>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachInstanceImpl implements _CoachInstance {
  const _$CoachInstanceImpl({
    this.id,
    @JsonKey(name: 'route_id') required this.routeId,
    @JsonKey(name: 'departure_date') required this.departureDate,
    @JsonKey(name: 'vehicle_id') this.vehicleId,
    @JsonKey(name: 'driver_id') this.driverId,
    @JsonKey(name: 'guide_id') this.guideId,
    @JsonKey(name: 'assigned_by') this.assignedBy,
    required this.status,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'cancellation_reason') this.cancellationReason,
    @JsonKey(name: 'cancelled_by') this.cancelledBy,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    final List<CoachBooking>? bookings,
    final List<CoachInstanceSeat>? seats,
  }) : _bookings = bookings,
       _seats = seats;

  factory _$CoachInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachInstanceImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'route_id')
  final String routeId;
  @override
  @JsonKey(name: 'departure_date')
  final DateTime departureDate;
  @override
  @JsonKey(name: 'vehicle_id')
  final String? vehicleId;
  @override
  @JsonKey(name: 'driver_id')
  final String? driverId;
  @override
  @JsonKey(name: 'guide_id')
  final String? guideId;
  @override
  @JsonKey(name: 'assigned_by')
  final String? assignedBy;
  @override
  final CoachInstanceStatus status;
  @override
  @JsonKey(name: 'cancelled_at')
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  final String? cancellationReason;
  @override
  @JsonKey(name: 'cancelled_by')
  final String? cancelledBy;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
  final List<CoachBooking>? _bookings;

  /// RELATIONS
  @override
  List<CoachBooking>? get bookings {
    final value = _bookings;
    if (value == null) return null;
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CoachInstanceSeat>? _seats;
  @override
  List<CoachInstanceSeat>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CoachInstance(id: $id, routeId: $routeId, departureDate: $departureDate, vehicleId: $vehicleId, driverId: $driverId, guideId: $guideId, assignedBy: $assignedBy, status: $status, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt, bookings: $bookings, seats: $seats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.routeId, routeId) || other.routeId == routeId) &&
            (identical(other.departureDate, departureDate) ||
                other.departureDate == departureDate) &&
            (identical(other.vehicleId, vehicleId) ||
                other.vehicleId == vehicleId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.guideId, guideId) || other.guideId == guideId) &&
            (identical(other.assignedBy, assignedBy) ||
                other.assignedBy == assignedBy) &&
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
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality().equals(other._seats, _seats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    routeId,
    departureDate,
    vehicleId,
    driverId,
    guideId,
    assignedBy,
    status,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_bookings),
    const DeepCollectionEquality().hash(_seats),
  );

  /// Create a copy of CoachInstance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachInstanceImplCopyWith<_$CoachInstanceImpl> get copyWith =>
      __$$CoachInstanceImplCopyWithImpl<_$CoachInstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachInstanceImplToJson(this);
  }
}

abstract class _CoachInstance implements CoachInstance {
  const factory _CoachInstance({
    final String? id,
    @JsonKey(name: 'route_id') required final String routeId,
    @JsonKey(name: 'departure_date') required final DateTime departureDate,
    @JsonKey(name: 'vehicle_id') final String? vehicleId,
    @JsonKey(name: 'driver_id') final String? driverId,
    @JsonKey(name: 'guide_id') final String? guideId,
    @JsonKey(name: 'assigned_by') final String? assignedBy,
    required final CoachInstanceStatus status,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') final String? cancellationReason,
    @JsonKey(name: 'cancelled_by') final String? cancelledBy,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final List<CoachBooking>? bookings,
    final List<CoachInstanceSeat>? seats,
  }) = _$CoachInstanceImpl;

  factory _CoachInstance.fromJson(Map<String, dynamic> json) =
      _$CoachInstanceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'route_id')
  String get routeId;
  @override
  @JsonKey(name: 'departure_date')
  DateTime get departureDate;
  @override
  @JsonKey(name: 'vehicle_id')
  String? get vehicleId;
  @override
  @JsonKey(name: 'driver_id')
  String? get driverId;
  @override
  @JsonKey(name: 'guide_id')
  String? get guideId;
  @override
  @JsonKey(name: 'assigned_by')
  String? get assignedBy;
  @override
  CoachInstanceStatus get status;
  @override
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason;
  @override
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
  @override
  List<CoachBooking>? get bookings;
  @override
  List<CoachInstanceSeat>? get seats;

  /// Create a copy of CoachInstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachInstanceImplCopyWith<_$CoachInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
