// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_instance_seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachInstanceSeat _$CoachInstanceSeatFromJson(Map<String, dynamic> json) {
  return _CoachInstanceSeat.fromJson(json);
}

/// @nodoc
mixin _$CoachInstanceSeat {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'instance_id')
  String get instanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'seat_id')
  String get seatId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_id')
  String? get bookingId => throw _privateConstructorUsedError;
  SeatStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'locked_until')
  DateTime? get lockedUntil => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this CoachInstanceSeat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachInstanceSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachInstanceSeatCopyWith<CoachInstanceSeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachInstanceSeatCopyWith<$Res> {
  factory $CoachInstanceSeatCopyWith(
    CoachInstanceSeat value,
    $Res Function(CoachInstanceSeat) then,
  ) = _$CoachInstanceSeatCopyWithImpl<$Res, CoachInstanceSeat>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'instance_id') String instanceId,
    @JsonKey(name: 'seat_id') String seatId,
    @JsonKey(name: 'booking_id') String? bookingId,
    SeatStatus status,
    @JsonKey(name: 'locked_until') DateTime? lockedUntil,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$CoachInstanceSeatCopyWithImpl<$Res, $Val extends CoachInstanceSeat>
    implements $CoachInstanceSeatCopyWith<$Res> {
  _$CoachInstanceSeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachInstanceSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instanceId = null,
    Object? seatId = null,
    Object? bookingId = freezed,
    Object? status = null,
    Object? lockedUntil = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            instanceId: null == instanceId
                ? _value.instanceId
                : instanceId // ignore: cast_nullable_to_non_nullable
                      as String,
            seatId: null == seatId
                ? _value.seatId
                : seatId // ignore: cast_nullable_to_non_nullable
                      as String,
            bookingId: freezed == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SeatStatus,
            lockedUntil: freezed == lockedUntil
                ? _value.lockedUntil
                : lockedUntil // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CoachInstanceSeatImplCopyWith<$Res>
    implements $CoachInstanceSeatCopyWith<$Res> {
  factory _$$CoachInstanceSeatImplCopyWith(
    _$CoachInstanceSeatImpl value,
    $Res Function(_$CoachInstanceSeatImpl) then,
  ) = __$$CoachInstanceSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'instance_id') String instanceId,
    @JsonKey(name: 'seat_id') String seatId,
    @JsonKey(name: 'booking_id') String? bookingId,
    SeatStatus status,
    @JsonKey(name: 'locked_until') DateTime? lockedUntil,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$CoachInstanceSeatImplCopyWithImpl<$Res>
    extends _$CoachInstanceSeatCopyWithImpl<$Res, _$CoachInstanceSeatImpl>
    implements _$$CoachInstanceSeatImplCopyWith<$Res> {
  __$$CoachInstanceSeatImplCopyWithImpl(
    _$CoachInstanceSeatImpl _value,
    $Res Function(_$CoachInstanceSeatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachInstanceSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? instanceId = null,
    Object? seatId = null,
    Object? bookingId = freezed,
    Object? status = null,
    Object? lockedUntil = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$CoachInstanceSeatImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        instanceId: null == instanceId
            ? _value.instanceId
            : instanceId // ignore: cast_nullable_to_non_nullable
                  as String,
        seatId: null == seatId
            ? _value.seatId
            : seatId // ignore: cast_nullable_to_non_nullable
                  as String,
        bookingId: freezed == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SeatStatus,
        lockedUntil: freezed == lockedUntil
            ? _value.lockedUntil
            : lockedUntil // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachInstanceSeatImpl implements _CoachInstanceSeat {
  const _$CoachInstanceSeatImpl({
    this.id,
    @JsonKey(name: 'instance_id') required this.instanceId,
    @JsonKey(name: 'seat_id') required this.seatId,
    @JsonKey(name: 'booking_id') this.bookingId,
    required this.status,
    @JsonKey(name: 'locked_until') this.lockedUntil,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$CoachInstanceSeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachInstanceSeatImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'instance_id')
  final String instanceId;
  @override
  @JsonKey(name: 'seat_id')
  final String seatId;
  @override
  @JsonKey(name: 'booking_id')
  final String? bookingId;
  @override
  final SeatStatus status;
  @override
  @JsonKey(name: 'locked_until')
  final DateTime? lockedUntil;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CoachInstanceSeat(id: $id, instanceId: $instanceId, seatId: $seatId, bookingId: $bookingId, status: $status, lockedUntil: $lockedUntil, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachInstanceSeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.instanceId, instanceId) ||
                other.instanceId == instanceId) &&
            (identical(other.seatId, seatId) || other.seatId == seatId) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lockedUntil, lockedUntil) ||
                other.lockedUntil == lockedUntil) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    instanceId,
    seatId,
    bookingId,
    status,
    lockedUntil,
    createdAt,
    updatedAt,
  );

  /// Create a copy of CoachInstanceSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachInstanceSeatImplCopyWith<_$CoachInstanceSeatImpl> get copyWith =>
      __$$CoachInstanceSeatImplCopyWithImpl<_$CoachInstanceSeatImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachInstanceSeatImplToJson(this);
  }
}

abstract class _CoachInstanceSeat implements CoachInstanceSeat {
  const factory _CoachInstanceSeat({
    final String? id,
    @JsonKey(name: 'instance_id') required final String instanceId,
    @JsonKey(name: 'seat_id') required final String seatId,
    @JsonKey(name: 'booking_id') final String? bookingId,
    required final SeatStatus status,
    @JsonKey(name: 'locked_until') final DateTime? lockedUntil,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$CoachInstanceSeatImpl;

  factory _CoachInstanceSeat.fromJson(Map<String, dynamic> json) =
      _$CoachInstanceSeatImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'instance_id')
  String get instanceId;
  @override
  @JsonKey(name: 'seat_id')
  String get seatId;
  @override
  @JsonKey(name: 'booking_id')
  String? get bookingId;
  @override
  SeatStatus get status;
  @override
  @JsonKey(name: 'locked_until')
  DateTime? get lockedUntil;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of CoachInstanceSeat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachInstanceSeatImplCopyWith<_$CoachInstanceSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
