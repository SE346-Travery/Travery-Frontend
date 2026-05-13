// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_booking_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HotelBookingMember _$HotelBookingMemberFromJson(Map<String, dynamic> json) {
  return _HotelBookingMember.fromJson(json);
}

/// @nodoc
mixin _$HotelBookingMember {
  String? get id => throw _privateConstructorUsedError;
  String get hotelBookingId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get passportNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  HotelBooking? get hotelBooking => throw _privateConstructorUsedError;

  /// Serializes this HotelBookingMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelBookingMemberCopyWith<HotelBookingMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBookingMemberCopyWith<$Res> {
  factory $HotelBookingMemberCopyWith(
    HotelBookingMember value,
    $Res Function(HotelBookingMember) then,
  ) = _$HotelBookingMemberCopyWithImpl<$Res, HotelBookingMember>;
  @useResult
  $Res call({
    String? id,
    String hotelBookingId,
    String fullName,
    String passportNumber,
    DateTime? dateOfBirth,
    String? gender,
    DateTime? createdAt,
    DateTime? updatedAt,
    HotelBooking? hotelBooking,
  });

  $HotelBookingCopyWith<$Res>? get hotelBooking;
}

/// @nodoc
class _$HotelBookingMemberCopyWithImpl<$Res, $Val extends HotelBookingMember>
    implements $HotelBookingMemberCopyWith<$Res> {
  _$HotelBookingMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? fullName = null,
    Object? passportNumber = null,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotelBooking = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: null == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            passportNumber: null == passportNumber
                ? _value.passportNumber
                : passportNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            hotelBooking: freezed == hotelBooking
                ? _value.hotelBooking
                : hotelBooking // ignore: cast_nullable_to_non_nullable
                      as HotelBooking?,
          )
          as $Val,
    );
  }

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelBookingCopyWith<$Res>? get hotelBooking {
    if (_value.hotelBooking == null) {
      return null;
    }

    return $HotelBookingCopyWith<$Res>(_value.hotelBooking!, (value) {
      return _then(_value.copyWith(hotelBooking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelBookingMemberImplCopyWith<$Res>
    implements $HotelBookingMemberCopyWith<$Res> {
  factory _$$HotelBookingMemberImplCopyWith(
    _$HotelBookingMemberImpl value,
    $Res Function(_$HotelBookingMemberImpl) then,
  ) = __$$HotelBookingMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String hotelBookingId,
    String fullName,
    String passportNumber,
    DateTime? dateOfBirth,
    String? gender,
    DateTime? createdAt,
    DateTime? updatedAt,
    HotelBooking? hotelBooking,
  });

  @override
  $HotelBookingCopyWith<$Res>? get hotelBooking;
}

/// @nodoc
class __$$HotelBookingMemberImplCopyWithImpl<$Res>
    extends _$HotelBookingMemberCopyWithImpl<$Res, _$HotelBookingMemberImpl>
    implements _$$HotelBookingMemberImplCopyWith<$Res> {
  __$$HotelBookingMemberImplCopyWithImpl(
    _$HotelBookingMemberImpl _value,
    $Res Function(_$HotelBookingMemberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? fullName = null,
    Object? passportNumber = null,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotelBooking = freezed,
  }) {
    return _then(
      _$HotelBookingMemberImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: null == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        passportNumber: null == passportNumber
            ? _value.passportNumber
            : passportNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        hotelBooking: freezed == hotelBooking
            ? _value.hotelBooking
            : hotelBooking // ignore: cast_nullable_to_non_nullable
                  as HotelBooking?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelBookingMemberImpl implements _HotelBookingMember {
  const _$HotelBookingMemberImpl({
    this.id,
    required this.hotelBookingId,
    required this.fullName,
    required this.passportNumber,
    this.dateOfBirth,
    this.gender,
    this.createdAt,
    this.updatedAt,
    this.hotelBooking,
  });

  factory _$HotelBookingMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelBookingMemberImplFromJson(json);

  @override
  final String? id;
  @override
  final String hotelBookingId;
  @override
  final String fullName;
  @override
  final String passportNumber;
  @override
  final DateTime? dateOfBirth;
  @override
  final String? gender;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final HotelBooking? hotelBooking;

  @override
  String toString() {
    return 'HotelBookingMember(id: $id, hotelBookingId: $hotelBookingId, fullName: $fullName, passportNumber: $passportNumber, dateOfBirth: $dateOfBirth, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, hotelBooking: $hotelBooking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelBookingMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hotelBooking, hotelBooking) ||
                other.hotelBooking == hotelBooking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hotelBookingId,
    fullName,
    passportNumber,
    dateOfBirth,
    gender,
    createdAt,
    updatedAt,
    hotelBooking,
  );

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelBookingMemberImplCopyWith<_$HotelBookingMemberImpl> get copyWith =>
      __$$HotelBookingMemberImplCopyWithImpl<_$HotelBookingMemberImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelBookingMemberImplToJson(this);
  }
}

abstract class _HotelBookingMember implements HotelBookingMember {
  const factory _HotelBookingMember({
    final String? id,
    required final String hotelBookingId,
    required final String fullName,
    required final String passportNumber,
    final DateTime? dateOfBirth,
    final String? gender,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final HotelBooking? hotelBooking,
  }) = _$HotelBookingMemberImpl;

  factory _HotelBookingMember.fromJson(Map<String, dynamic> json) =
      _$HotelBookingMemberImpl.fromJson;

  @override
  String? get id;
  @override
  String get hotelBookingId;
  @override
  String get fullName;
  @override
  String get passportNumber;
  @override
  DateTime? get dateOfBirth;
  @override
  String? get gender;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  HotelBooking? get hotelBooking;

  /// Create a copy of HotelBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelBookingMemberImplCopyWith<_$HotelBookingMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
