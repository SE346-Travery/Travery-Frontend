// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receptionist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Receptionist _$ReceptionistFromJson(Map<String, dynamic> json) {
  return _Receptionist.fromJson(json);
}

/// @nodoc
mixin _$Receptionist {
  String get userId => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;
  String get employeeCode => throw _privateConstructorUsedError;
  ShiftType? get shiftType => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Hotel? get hotel => throw _privateConstructorUsedError;

  /// Serializes this Receptionist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Receptionist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceptionistCopyWith<Receptionist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceptionistCopyWith<$Res> {
  factory $ReceptionistCopyWith(
    Receptionist value,
    $Res Function(Receptionist) then,
  ) = _$ReceptionistCopyWithImpl<$Res, Receptionist>;
  @useResult
  $Res call({
    String userId,
    String hotelId,
    String employeeCode,
    ShiftType? shiftType,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    Hotel? hotel,
  });

  $UserCopyWith<$Res>? get user;
  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class _$ReceptionistCopyWithImpl<$Res, $Val extends Receptionist>
    implements $ReceptionistCopyWith<$Res> {
  _$ReceptionistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Receptionist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hotelId = null,
    Object? employeeCode = null,
    Object? shiftType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            hotelId: null == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
                      as String,
            employeeCode: null == employeeCode
                ? _value.employeeCode
                : employeeCode // ignore: cast_nullable_to_non_nullable
                      as String,
            shiftType: freezed == shiftType
                ? _value.shiftType
                : shiftType // ignore: cast_nullable_to_non_nullable
                      as ShiftType?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
            hotel: freezed == hotel
                ? _value.hotel
                : hotel // ignore: cast_nullable_to_non_nullable
                      as Hotel?,
          )
          as $Val,
    );
  }

  /// Create a copy of Receptionist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Receptionist
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
}

/// @nodoc
abstract class _$$ReceptionistImplCopyWith<$Res>
    implements $ReceptionistCopyWith<$Res> {
  factory _$$ReceptionistImplCopyWith(
    _$ReceptionistImpl value,
    $Res Function(_$ReceptionistImpl) then,
  ) = __$$ReceptionistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String hotelId,
    String employeeCode,
    ShiftType? shiftType,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    Hotel? hotel,
  });

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class __$$ReceptionistImplCopyWithImpl<$Res>
    extends _$ReceptionistCopyWithImpl<$Res, _$ReceptionistImpl>
    implements _$$ReceptionistImplCopyWith<$Res> {
  __$$ReceptionistImplCopyWithImpl(
    _$ReceptionistImpl _value,
    $Res Function(_$ReceptionistImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Receptionist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hotelId = null,
    Object? employeeCode = null,
    Object? shiftType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _$ReceptionistImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        hotelId: null == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String,
        employeeCode: null == employeeCode
            ? _value.employeeCode
            : employeeCode // ignore: cast_nullable_to_non_nullable
                  as String,
        shiftType: freezed == shiftType
            ? _value.shiftType
            : shiftType // ignore: cast_nullable_to_non_nullable
                  as ShiftType?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        hotel: freezed == hotel
            ? _value.hotel
            : hotel // ignore: cast_nullable_to_non_nullable
                  as Hotel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReceptionistImpl implements _Receptionist {
  const _$ReceptionistImpl({
    required this.userId,
    required this.hotelId,
    required this.employeeCode,
    this.shiftType,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.hotel,
  });

  factory _$ReceptionistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReceptionistImplFromJson(json);

  @override
  final String userId;
  @override
  final String hotelId;
  @override
  final String employeeCode;
  @override
  final ShiftType? shiftType;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;
  @override
  final Hotel? hotel;

  @override
  String toString() {
    return 'Receptionist(userId: $userId, hotelId: $hotelId, employeeCode: $employeeCode, shiftType: $shiftType, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceptionistImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.shiftType, shiftType) ||
                other.shiftType == shiftType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    hotelId,
    employeeCode,
    shiftType,
    createdAt,
    updatedAt,
    user,
    hotel,
  );

  /// Create a copy of Receptionist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceptionistImplCopyWith<_$ReceptionistImpl> get copyWith =>
      __$$ReceptionistImplCopyWithImpl<_$ReceptionistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReceptionistImplToJson(this);
  }
}

abstract class _Receptionist implements Receptionist {
  const factory _Receptionist({
    required final String userId,
    required final String hotelId,
    required final String employeeCode,
    final ShiftType? shiftType,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
    final Hotel? hotel,
  }) = _$ReceptionistImpl;

  factory _Receptionist.fromJson(Map<String, dynamic> json) =
      _$ReceptionistImpl.fromJson;

  @override
  String get userId;
  @override
  String get hotelId;
  @override
  String get employeeCode;
  @override
  ShiftType? get shiftType;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;
  @override
  Hotel? get hotel;

  /// Create a copy of Receptionist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceptionistImplCopyWith<_$ReceptionistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
