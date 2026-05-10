// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_booking_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourBookingMember _$TourBookingMemberFromJson(Map<String, dynamic> json) {
  return _TourBookingMember.fromJson(json);
}

/// @nodoc
mixin _$TourBookingMember {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_id')
  String get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_type')
  String get bookingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_number')
  String? get passportNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_child')
  bool get isChild => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
  TourBooking? get booking => throw _privateConstructorUsedError;

  /// Serializes this TourBookingMember to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourBookingMemberCopyWith<TourBookingMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourBookingMemberCopyWith<$Res> {
  factory $TourBookingMemberCopyWith(
    TourBookingMember value,
    $Res Function(TourBookingMember) then,
  ) = _$TourBookingMemberCopyWithImpl<$Res, TourBookingMember>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'booking_id') String bookingId,
    @JsonKey(name: 'booking_type') String bookingType,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'passport_number') String? passportNumber,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'is_child') bool isChild,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    TourBooking? booking,
  });

  $TourBookingCopyWith<$Res>? get booking;
}

/// @nodoc
class _$TourBookingMemberCopyWithImpl<$Res, $Val extends TourBookingMember>
    implements $TourBookingMemberCopyWith<$Res> {
  _$TourBookingMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = null,
    Object? bookingType = null,
    Object? fullName = null,
    Object? passportNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? isChild = null,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookingId: null == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            bookingType: null == bookingType
                ? _value.bookingType
                : bookingType // ignore: cast_nullable_to_non_nullable
                      as String,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            passportNumber: freezed == passportNumber
                ? _value.passportNumber
                : passportNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            dateOfBirth: freezed == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            gender: freezed == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as String?,
            isChild: null == isChild
                ? _value.isChild
                : isChild // ignore: cast_nullable_to_non_nullable
                      as bool,
            cancelledAt: freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            booking: freezed == booking
                ? _value.booking
                : booking // ignore: cast_nullable_to_non_nullable
                      as TourBooking?,
          )
          as $Val,
    );
  }

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourBookingCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $TourBookingCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourBookingMemberImplCopyWith<$Res>
    implements $TourBookingMemberCopyWith<$Res> {
  factory _$$TourBookingMemberImplCopyWith(
    _$TourBookingMemberImpl value,
    $Res Function(_$TourBookingMemberImpl) then,
  ) = __$$TourBookingMemberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'booking_id') String bookingId,
    @JsonKey(name: 'booking_type') String bookingType,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'passport_number') String? passportNumber,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'is_child') bool isChild,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    TourBooking? booking,
  });

  @override
  $TourBookingCopyWith<$Res>? get booking;
}

/// @nodoc
class __$$TourBookingMemberImplCopyWithImpl<$Res>
    extends _$TourBookingMemberCopyWithImpl<$Res, _$TourBookingMemberImpl>
    implements _$$TourBookingMemberImplCopyWith<$Res> {
  __$$TourBookingMemberImplCopyWithImpl(
    _$TourBookingMemberImpl _value,
    $Res Function(_$TourBookingMemberImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? bookingId = null,
    Object? bookingType = null,
    Object? fullName = null,
    Object? passportNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? isChild = null,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
  }) {
    return _then(
      _$TourBookingMemberImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookingId: null == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        bookingType: null == bookingType
            ? _value.bookingType
            : bookingType // ignore: cast_nullable_to_non_nullable
                  as String,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        passportNumber: freezed == passportNumber
            ? _value.passportNumber
            : passportNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        dateOfBirth: freezed == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        gender: freezed == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as String?,
        isChild: null == isChild
            ? _value.isChild
            : isChild // ignore: cast_nullable_to_non_nullable
                  as bool,
        cancelledAt: freezed == cancelledAt
            ? _value.cancelledAt
            : cancelledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        booking: freezed == booking
            ? _value.booking
            : booking // ignore: cast_nullable_to_non_nullable
                  as TourBooking?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourBookingMemberImpl implements _TourBookingMember {
  const _$TourBookingMemberImpl({
    this.id,
    @JsonKey(name: 'booking_id') required this.bookingId,
    @JsonKey(name: 'booking_type') required this.bookingType,
    @JsonKey(name: 'full_name') required this.fullName,
    @JsonKey(name: 'passport_number') this.passportNumber,
    @JsonKey(name: 'date_of_birth') this.dateOfBirth,
    @JsonKey(name: 'gender') this.gender,
    @JsonKey(name: 'is_child') this.isChild = false,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.booking,
  });

  factory _$TourBookingMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourBookingMemberImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'booking_id')
  final String bookingId;
  @override
  @JsonKey(name: 'booking_type')
  final String bookingType;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'passport_number')
  final String? passportNumber;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth;
  @override
  @JsonKey(name: 'gender')
  final String? gender;
  @override
  @JsonKey(name: 'is_child')
  final bool isChild;
  @override
  @JsonKey(name: 'cancelled_at')
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATION
  @override
  final TourBooking? booking;

  @override
  String toString() {
    return 'TourBookingMember(id: $id, bookingId: $bookingId, bookingType: $bookingType, fullName: $fullName, passportNumber: $passportNumber, dateOfBirth: $dateOfBirth, gender: $gender, isChild: $isChild, cancelledAt: $cancelledAt, createdAt: $createdAt, updatedAt: $updatedAt, booking: $booking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourBookingMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isChild, isChild) || other.isChild == isChild) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    bookingId,
    bookingType,
    fullName,
    passportNumber,
    dateOfBirth,
    gender,
    isChild,
    cancelledAt,
    createdAt,
    updatedAt,
    booking,
  );

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourBookingMemberImplCopyWith<_$TourBookingMemberImpl> get copyWith =>
      __$$TourBookingMemberImplCopyWithImpl<_$TourBookingMemberImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TourBookingMemberImplToJson(this);
  }
}

abstract class _TourBookingMember implements TourBookingMember {
  const factory _TourBookingMember({
    final String? id,
    @JsonKey(name: 'booking_id') required final String bookingId,
    @JsonKey(name: 'booking_type') required final String bookingType,
    @JsonKey(name: 'full_name') required final String fullName,
    @JsonKey(name: 'passport_number') final String? passportNumber,
    @JsonKey(name: 'date_of_birth') final DateTime? dateOfBirth,
    @JsonKey(name: 'gender') final String? gender,
    @JsonKey(name: 'is_child') final bool isChild,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final TourBooking? booking,
  }) = _$TourBookingMemberImpl;

  factory _TourBookingMember.fromJson(Map<String, dynamic> json) =
      _$TourBookingMemberImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'booking_id')
  String get bookingId;
  @override
  @JsonKey(name: 'booking_type')
  String get bookingType;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'passport_number')
  String? get passportNumber;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth;
  @override
  @JsonKey(name: 'gender')
  String? get gender;
  @override
  @JsonKey(name: 'is_child')
  bool get isChild;
  @override
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  TourBooking? get booking;

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourBookingMemberImplCopyWith<_$TourBookingMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
