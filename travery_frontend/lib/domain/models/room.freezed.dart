// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  String get hotelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_type_id')
  String get roomTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_number')
  String get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor')
  int? get floor => throw _privateConstructorUsedError;
  RoomStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  Hotel? get hotel => throw _privateConstructorUsedError;
  RoomType? get roomType => throw _privateConstructorUsedError;

  /// Serializes this Room to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_id') String hotelId,
    @JsonKey(name: 'room_type_id') String roomTypeId,
    @JsonKey(name: 'room_number') String roomNumber,
    @JsonKey(name: 'floor') int? floor,
    RoomStatus status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hotel? hotel,
    RoomType? roomType,
  });

  $HotelCopyWith<$Res>? get hotel;
  $RoomTypeCopyWith<$Res>? get roomType;
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? roomTypeId = null,
    Object? roomNumber = null,
    Object? floor = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
    Object? roomType = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelId: null == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
                      as String,
            roomTypeId: null == roomTypeId
                ? _value.roomTypeId
                : roomTypeId // ignore: cast_nullable_to_non_nullable
                      as String,
            roomNumber: null == roomNumber
                ? _value.roomNumber
                : roomNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            floor: freezed == floor
                ? _value.floor
                : floor // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as RoomStatus,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            hotel: freezed == hotel
                ? _value.hotel
                : hotel // ignore: cast_nullable_to_non_nullable
                      as Hotel?,
            roomType: freezed == roomType
                ? _value.roomType
                : roomType // ignore: cast_nullable_to_non_nullable
                      as RoomType?,
          )
          as $Val,
    );
  }

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res>? get hotel {
    if (_value.hotel == null) {
      return null;
    }

    return $HotelCopyWith<$Res>(_value.hotel!, (value) {
      return _then(_value.copyWith(hotel: value) as $Val);
    });
  }

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomTypeCopyWith<$Res>? get roomType {
    if (_value.roomType == null) {
      return null;
    }

    return $RoomTypeCopyWith<$Res>(_value.roomType!, (value) {
      return _then(_value.copyWith(roomType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
    _$RoomImpl value,
    $Res Function(_$RoomImpl) then,
  ) = __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_id') String hotelId,
    @JsonKey(name: 'room_type_id') String roomTypeId,
    @JsonKey(name: 'room_number') String roomNumber,
    @JsonKey(name: 'floor') int? floor,
    RoomStatus status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hotel? hotel,
    RoomType? roomType,
  });

  @override
  $HotelCopyWith<$Res>? get hotel;
  @override
  $RoomTypeCopyWith<$Res>? get roomType;
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
    : super(_value, _then);

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? roomTypeId = null,
    Object? roomNumber = null,
    Object? floor = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
    Object? roomType = freezed,
  }) {
    return _then(
      _$RoomImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelId: null == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String,
        roomTypeId: null == roomTypeId
            ? _value.roomTypeId
            : roomTypeId // ignore: cast_nullable_to_non_nullable
                  as String,
        roomNumber: null == roomNumber
            ? _value.roomNumber
            : roomNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        floor: freezed == floor
            ? _value.floor
            : floor // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as RoomStatus,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        hotel: freezed == hotel
            ? _value.hotel
            : hotel // ignore: cast_nullable_to_non_nullable
                  as Hotel?,
        roomType: freezed == roomType
            ? _value.roomType
            : roomType // ignore: cast_nullable_to_non_nullable
                  as RoomType?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomImpl implements _Room {
  const _$RoomImpl({
    this.id,
    @JsonKey(name: 'hotel_id') required this.hotelId,
    @JsonKey(name: 'room_type_id') required this.roomTypeId,
    @JsonKey(name: 'room_number') required this.roomNumber,
    @JsonKey(name: 'floor') this.floor,
    required this.status,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.hotel,
    this.roomType,
  });

  factory _$RoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_id')
  final String hotelId;
  @override
  @JsonKey(name: 'room_type_id')
  final String roomTypeId;
  @override
  @JsonKey(name: 'room_number')
  final String roomNumber;
  @override
  @JsonKey(name: 'floor')
  final int? floor;
  @override
  final RoomStatus status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
  @override
  final Hotel? hotel;
  @override
  final RoomType? roomType;

  @override
  String toString() {
    return 'Room(id: $id, hotelId: $hotelId, roomTypeId: $roomTypeId, roomNumber: $roomNumber, floor: $floor, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, hotel: $hotel, roomType: $roomType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.roomTypeId, roomTypeId) ||
                other.roomTypeId == roomTypeId) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.floor, floor) || other.floor == floor) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hotel, hotel) || other.hotel == hotel) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hotelId,
    roomTypeId,
    roomNumber,
    floor,
    status,
    createdAt,
    updatedAt,
    hotel,
    roomType,
  );

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomImplToJson(this);
  }
}

abstract class _Room implements Room {
  const factory _Room({
    final String? id,
    @JsonKey(name: 'hotel_id') required final String hotelId,
    @JsonKey(name: 'room_type_id') required final String roomTypeId,
    @JsonKey(name: 'room_number') required final String roomNumber,
    @JsonKey(name: 'floor') final int? floor,
    required final RoomStatus status,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final Hotel? hotel,
    final RoomType? roomType,
  }) = _$RoomImpl;

  factory _Room.fromJson(Map<String, dynamic> json) = _$RoomImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_id')
  String get hotelId;
  @override
  @JsonKey(name: 'room_type_id')
  String get roomTypeId;
  @override
  @JsonKey(name: 'room_number')
  String get roomNumber;
  @override
  @JsonKey(name: 'floor')
  int? get floor;
  @override
  RoomStatus get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
  @override
  Hotel? get hotel;
  @override
  RoomType? get roomType;

  /// Create a copy of Room
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
