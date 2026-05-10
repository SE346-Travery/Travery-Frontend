// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_assignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RoomAssignment _$RoomAssignmentFromJson(Map<String, dynamic> json) {
  return _RoomAssignment.fromJson(json);
}

/// @nodoc
mixin _$RoomAssignment {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_booking_detail_id')
  String get hotelBookingDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in_time')
  DateTime? get checkInTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_out_time')
  DateTime? get checkOutTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RoomAssignment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomAssignmentCopyWith<RoomAssignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomAssignmentCopyWith<$Res> {
  factory $RoomAssignmentCopyWith(
    RoomAssignment value,
    $Res Function(RoomAssignment) then,
  ) = _$RoomAssignmentCopyWithImpl<$Res, RoomAssignment>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_detail_id') String hotelBookingDetailId,
    @JsonKey(name: 'room_id') String roomId,
    @JsonKey(name: 'check_in_time') DateTime? checkInTime,
    @JsonKey(name: 'check_out_time') DateTime? checkOutTime,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$RoomAssignmentCopyWithImpl<$Res, $Val extends RoomAssignment>
    implements $RoomAssignmentCopyWith<$Res> {
  _$RoomAssignmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingDetailId = null,
    Object? roomId = null,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingDetailId: null == hotelBookingDetailId
                ? _value.hotelBookingDetailId
                : hotelBookingDetailId // ignore: cast_nullable_to_non_nullable
                      as String,
            roomId: null == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                      as String,
            checkInTime: freezed == checkInTime
                ? _value.checkInTime
                : checkInTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            checkOutTime: freezed == checkOutTime
                ? _value.checkOutTime
                : checkOutTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RoomAssignmentImplCopyWith<$Res>
    implements $RoomAssignmentCopyWith<$Res> {
  factory _$$RoomAssignmentImplCopyWith(
    _$RoomAssignmentImpl value,
    $Res Function(_$RoomAssignmentImpl) then,
  ) = __$$RoomAssignmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_detail_id') String hotelBookingDetailId,
    @JsonKey(name: 'room_id') String roomId,
    @JsonKey(name: 'check_in_time') DateTime? checkInTime,
    @JsonKey(name: 'check_out_time') DateTime? checkOutTime,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$RoomAssignmentImplCopyWithImpl<$Res>
    extends _$RoomAssignmentCopyWithImpl<$Res, _$RoomAssignmentImpl>
    implements _$$RoomAssignmentImplCopyWith<$Res> {
  __$$RoomAssignmentImplCopyWithImpl(
    _$RoomAssignmentImpl _value,
    $Res Function(_$RoomAssignmentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoomAssignment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingDetailId = null,
    Object? roomId = null,
    Object? checkInTime = freezed,
    Object? checkOutTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$RoomAssignmentImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingDetailId: null == hotelBookingDetailId
            ? _value.hotelBookingDetailId
            : hotelBookingDetailId // ignore: cast_nullable_to_non_nullable
                  as String,
        roomId: null == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String,
        checkInTime: freezed == checkInTime
            ? _value.checkInTime
            : checkInTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        checkOutTime: freezed == checkOutTime
            ? _value.checkOutTime
            : checkOutTime // ignore: cast_nullable_to_non_nullable
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
class _$RoomAssignmentImpl implements _RoomAssignment {
  const _$RoomAssignmentImpl({
    this.id,
    @JsonKey(name: 'hotel_booking_detail_id')
    required this.hotelBookingDetailId,
    @JsonKey(name: 'room_id') required this.roomId,
    @JsonKey(name: 'check_in_time') this.checkInTime,
    @JsonKey(name: 'check_out_time') this.checkOutTime,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$RoomAssignmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomAssignmentImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_booking_detail_id')
  final String hotelBookingDetailId;
  @override
  @JsonKey(name: 'room_id')
  final String roomId;
  @override
  @JsonKey(name: 'check_in_time')
  final DateTime? checkInTime;
  @override
  @JsonKey(name: 'check_out_time')
  final DateTime? checkOutTime;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'RoomAssignment(id: $id, hotelBookingDetailId: $hotelBookingDetailId, roomId: $roomId, checkInTime: $checkInTime, checkOutTime: $checkOutTime, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomAssignmentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingDetailId, hotelBookingDetailId) ||
                other.hotelBookingDetailId == hotelBookingDetailId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.checkInTime, checkInTime) ||
                other.checkInTime == checkInTime) &&
            (identical(other.checkOutTime, checkOutTime) ||
                other.checkOutTime == checkOutTime) &&
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
    hotelBookingDetailId,
    roomId,
    checkInTime,
    checkOutTime,
    createdAt,
    updatedAt,
  );

  /// Create a copy of RoomAssignment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomAssignmentImplCopyWith<_$RoomAssignmentImpl> get copyWith =>
      __$$RoomAssignmentImplCopyWithImpl<_$RoomAssignmentImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomAssignmentImplToJson(this);
  }
}

abstract class _RoomAssignment implements RoomAssignment {
  const factory _RoomAssignment({
    final String? id,
    @JsonKey(name: 'hotel_booking_detail_id')
    required final String hotelBookingDetailId,
    @JsonKey(name: 'room_id') required final String roomId,
    @JsonKey(name: 'check_in_time') final DateTime? checkInTime,
    @JsonKey(name: 'check_out_time') final DateTime? checkOutTime,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$RoomAssignmentImpl;

  factory _RoomAssignment.fromJson(Map<String, dynamic> json) =
      _$RoomAssignmentImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_booking_detail_id')
  String get hotelBookingDetailId;
  @override
  @JsonKey(name: 'room_id')
  String get roomId;
  @override
  @JsonKey(name: 'check_in_time')
  DateTime? get checkInTime;
  @override
  @JsonKey(name: 'check_out_time')
  DateTime? get checkOutTime;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of RoomAssignment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomAssignmentImplCopyWith<_$RoomAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
