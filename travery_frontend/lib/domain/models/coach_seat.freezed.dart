// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_seat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachSeat _$CoachSeatFromJson(Map<String, dynamic> json) {
  return _CoachSeat.fromJson(json);
}

/// @nodoc
mixin _$CoachSeat {
  String? get id => throw _privateConstructorUsedError;
  String get coachId => throw _privateConstructorUsedError;
  String get seatName => throw _privateConstructorUsedError;
  SeatTier get tier => throw _privateConstructorUsedError;
  SeatPosition get position => throw _privateConstructorUsedError;
  int? get floorNumber => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Coach? get coach => throw _privateConstructorUsedError;

  /// Serializes this CoachSeat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachSeatCopyWith<CoachSeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachSeatCopyWith<$Res> {
  factory $CoachSeatCopyWith(CoachSeat value, $Res Function(CoachSeat) then) =
      _$CoachSeatCopyWithImpl<$Res, CoachSeat>;
  @useResult
  $Res call({
    String? id,
    String coachId,
    String seatName,
    SeatTier tier,
    SeatPosition position,
    int? floorNumber,
    bool isAvailable,
    DateTime? createdAt,
    DateTime? updatedAt,
    Coach? coach,
  });

  $CoachCopyWith<$Res>? get coach;
}

/// @nodoc
class _$CoachSeatCopyWithImpl<$Res, $Val extends CoachSeat>
    implements $CoachSeatCopyWith<$Res> {
  _$CoachSeatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coachId = null,
    Object? seatName = null,
    Object? tier = null,
    Object? position = null,
    Object? floorNumber = freezed,
    Object? isAvailable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? coach = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            coachId: null == coachId
                ? _value.coachId
                : coachId // ignore: cast_nullable_to_non_nullable
                      as String,
            seatName: null == seatName
                ? _value.seatName
                : seatName // ignore: cast_nullable_to_non_nullable
                      as String,
            tier: null == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                      as SeatTier,
            position: null == position
                ? _value.position
                : position // ignore: cast_nullable_to_non_nullable
                      as SeatPosition,
            floorNumber: freezed == floorNumber
                ? _value.floorNumber
                : floorNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            coach: freezed == coach
                ? _value.coach
                : coach // ignore: cast_nullable_to_non_nullable
                      as Coach?,
          )
          as $Val,
    );
  }

  /// Create a copy of CoachSeat
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
}

/// @nodoc
abstract class _$$CoachSeatImplCopyWith<$Res>
    implements $CoachSeatCopyWith<$Res> {
  factory _$$CoachSeatImplCopyWith(
    _$CoachSeatImpl value,
    $Res Function(_$CoachSeatImpl) then,
  ) = __$$CoachSeatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String coachId,
    String seatName,
    SeatTier tier,
    SeatPosition position,
    int? floorNumber,
    bool isAvailable,
    DateTime? createdAt,
    DateTime? updatedAt,
    Coach? coach,
  });

  @override
  $CoachCopyWith<$Res>? get coach;
}

/// @nodoc
class __$$CoachSeatImplCopyWithImpl<$Res>
    extends _$CoachSeatCopyWithImpl<$Res, _$CoachSeatImpl>
    implements _$$CoachSeatImplCopyWith<$Res> {
  __$$CoachSeatImplCopyWithImpl(
    _$CoachSeatImpl _value,
    $Res Function(_$CoachSeatImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachSeat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coachId = null,
    Object? seatName = null,
    Object? tier = null,
    Object? position = null,
    Object? floorNumber = freezed,
    Object? isAvailable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? coach = freezed,
  }) {
    return _then(
      _$CoachSeatImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        coachId: null == coachId
            ? _value.coachId
            : coachId // ignore: cast_nullable_to_non_nullable
                  as String,
        seatName: null == seatName
            ? _value.seatName
            : seatName // ignore: cast_nullable_to_non_nullable
                  as String,
        tier: null == tier
            ? _value.tier
            : tier // ignore: cast_nullable_to_non_nullable
                  as SeatTier,
        position: null == position
            ? _value.position
            : position // ignore: cast_nullable_to_non_nullable
                  as SeatPosition,
        floorNumber: freezed == floorNumber
            ? _value.floorNumber
            : floorNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        coach: freezed == coach
            ? _value.coach
            : coach // ignore: cast_nullable_to_non_nullable
                  as Coach?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachSeatImpl implements _CoachSeat {
  const _$CoachSeatImpl({
    this.id,
    required this.coachId,
    required this.seatName,
    required this.tier,
    required this.position,
    this.floorNumber,
    this.isAvailable = true,
    this.createdAt,
    this.updatedAt,
    this.coach,
  });

  factory _$CoachSeatImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachSeatImplFromJson(json);

  @override
  final String? id;
  @override
  final String coachId;
  @override
  final String seatName;
  @override
  final SeatTier tier;
  @override
  final SeatPosition position;
  @override
  final int? floorNumber;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Coach? coach;

  @override
  String toString() {
    return 'CoachSeat(id: $id, coachId: $coachId, seatName: $seatName, tier: $tier, position: $position, floorNumber: $floorNumber, isAvailable: $isAvailable, createdAt: $createdAt, updatedAt: $updatedAt, coach: $coach)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachSeatImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coachId, coachId) || other.coachId == coachId) &&
            (identical(other.seatName, seatName) ||
                other.seatName == seatName) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.coach, coach) || other.coach == coach));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    coachId,
    seatName,
    tier,
    position,
    floorNumber,
    isAvailable,
    createdAt,
    updatedAt,
    coach,
  );

  /// Create a copy of CoachSeat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachSeatImplCopyWith<_$CoachSeatImpl> get copyWith =>
      __$$CoachSeatImplCopyWithImpl<_$CoachSeatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachSeatImplToJson(this);
  }
}

abstract class _CoachSeat implements CoachSeat {
  const factory _CoachSeat({
    final String? id,
    required final String coachId,
    required final String seatName,
    required final SeatTier tier,
    required final SeatPosition position,
    final int? floorNumber,
    final bool isAvailable,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Coach? coach,
  }) = _$CoachSeatImpl;

  factory _CoachSeat.fromJson(Map<String, dynamic> json) =
      _$CoachSeatImpl.fromJson;

  @override
  String? get id;
  @override
  String get coachId;
  @override
  String get seatName;
  @override
  SeatTier get tier;
  @override
  SeatPosition get position;
  @override
  int? get floorNumber;
  @override
  bool get isAvailable;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Coach? get coach;

  /// Create a copy of CoachSeat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachSeatImplCopyWith<_$CoachSeatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
