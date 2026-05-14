// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Coach _$CoachFromJson(Map<String, dynamic> json) {
  return _Coach.fromJson(json);
}

/// @nodoc
mixin _$Coach {
  String? get id => throw _privateConstructorUsedError;
  String get licensePlate => throw _privateConstructorUsedError;
  CoachType get coachType => throw _privateConstructorUsedError;
  int get capacity => throw _privateConstructorUsedError;
  CoachStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  List<CoachSeat>? get seats => throw _privateConstructorUsedError;
  List<CoachTrip>? get trips => throw _privateConstructorUsedError;

  /// Serializes this Coach to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coach
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachCopyWith<Coach> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachCopyWith<$Res> {
  factory $CoachCopyWith(Coach value, $Res Function(Coach) then) =
      _$CoachCopyWithImpl<$Res, Coach>;
  @useResult
  $Res call({
    String? id,
    String licensePlate,
    CoachType coachType,
    int capacity,
    CoachStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<CoachSeat>? seats,
    List<CoachTrip>? trips,
  });
}

/// @nodoc
class _$CoachCopyWithImpl<$Res, $Val extends Coach>
    implements $CoachCopyWith<$Res> {
  _$CoachCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coach
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = null,
    Object? coachType = null,
    Object? capacity = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? seats = freezed,
    Object? trips = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            licensePlate: null == licensePlate
                ? _value.licensePlate
                : licensePlate // ignore: cast_nullable_to_non_nullable
                      as String,
            coachType: null == coachType
                ? _value.coachType
                : coachType // ignore: cast_nullable_to_non_nullable
                      as CoachType,
            capacity: null == capacity
                ? _value.capacity
                : capacity // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as CoachStatus,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            seats: freezed == seats
                ? _value.seats
                : seats // ignore: cast_nullable_to_non_nullable
                      as List<CoachSeat>?,
            trips: freezed == trips
                ? _value.trips
                : trips // ignore: cast_nullable_to_non_nullable
                      as List<CoachTrip>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachImplCopyWith<$Res> implements $CoachCopyWith<$Res> {
  factory _$$CoachImplCopyWith(
    _$CoachImpl value,
    $Res Function(_$CoachImpl) then,
  ) = __$$CoachImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String licensePlate,
    CoachType coachType,
    int capacity,
    CoachStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<CoachSeat>? seats,
    List<CoachTrip>? trips,
  });
}

/// @nodoc
class __$$CoachImplCopyWithImpl<$Res>
    extends _$CoachCopyWithImpl<$Res, _$CoachImpl>
    implements _$$CoachImplCopyWith<$Res> {
  __$$CoachImplCopyWithImpl(
    _$CoachImpl _value,
    $Res Function(_$CoachImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Coach
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? licensePlate = null,
    Object? coachType = null,
    Object? capacity = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? seats = freezed,
    Object? trips = freezed,
  }) {
    return _then(
      _$CoachImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        licensePlate: null == licensePlate
            ? _value.licensePlate
            : licensePlate // ignore: cast_nullable_to_non_nullable
                  as String,
        coachType: null == coachType
            ? _value.coachType
            : coachType // ignore: cast_nullable_to_non_nullable
                  as CoachType,
        capacity: null == capacity
            ? _value.capacity
            : capacity // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as CoachStatus,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        seats: freezed == seats
            ? _value._seats
            : seats // ignore: cast_nullable_to_non_nullable
                  as List<CoachSeat>?,
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
class _$CoachImpl implements _Coach {
  const _$CoachImpl({
    this.id,
    required this.licensePlate,
    required this.coachType,
    required this.capacity,
    required this.status,
    this.createdAt,
    this.updatedAt,
    final List<CoachSeat>? seats,
    final List<CoachTrip>? trips,
  }) : _seats = seats,
       _trips = trips;

  factory _$CoachImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachImplFromJson(json);

  @override
  final String? id;
  @override
  final String licensePlate;
  @override
  final CoachType coachType;
  @override
  final int capacity;
  @override
  final CoachStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final List<CoachSeat>? _seats;
  @override
  List<CoachSeat>? get seats {
    final value = _seats;
    if (value == null) return null;
    if (_seats is EqualUnmodifiableListView) return _seats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'Coach(id: $id, licensePlate: $licensePlate, coachType: $coachType, capacity: $capacity, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, seats: $seats, trips: $trips)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licensePlate, licensePlate) ||
                other.licensePlate == licensePlate) &&
            (identical(other.coachType, coachType) ||
                other.coachType == coachType) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._seats, _seats) &&
            const DeepCollectionEquality().equals(other._trips, _trips));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    licensePlate,
    coachType,
    capacity,
    status,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_seats),
    const DeepCollectionEquality().hash(_trips),
  );

  /// Create a copy of Coach
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      __$$CoachImplCopyWithImpl<_$CoachImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachImplToJson(this);
  }
}

abstract class _Coach implements Coach {
  const factory _Coach({
    final String? id,
    required final String licensePlate,
    required final CoachType coachType,
    required final int capacity,
    required final CoachStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final List<CoachSeat>? seats,
    final List<CoachTrip>? trips,
  }) = _$CoachImpl;

  factory _Coach.fromJson(Map<String, dynamic> json) = _$CoachImpl.fromJson;

  @override
  String? get id;
  @override
  String get licensePlate;
  @override
  CoachType get coachType;
  @override
  int get capacity;
  @override
  CoachStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  List<CoachSeat>? get seats;
  @override
  List<CoachTrip>? get trips;

  /// Create a copy of Coach
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachImplCopyWith<_$CoachImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
