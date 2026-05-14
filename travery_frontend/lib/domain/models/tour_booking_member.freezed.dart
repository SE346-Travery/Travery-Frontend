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
  String get fullName => throw _privateConstructorUsedError;
  String? get identityNumber => throw _privateConstructorUsedError;
  IdentityType? get identityType => throw _privateConstructorUsedError;
  bool get isChild => throw _privateConstructorUsedError;
  BookingMemberStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
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
    String fullName,
    String? identityNumber,
    IdentityType? identityType,
    bool isChild,
    BookingMemberStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    Object? fullName = null,
    Object? identityNumber = freezed,
    Object? identityType = freezed,
    Object? isChild = null,
    Object? status = null,
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
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            identityNumber: freezed == identityNumber
                ? _value.identityNumber
                : identityNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            identityType: freezed == identityType
                ? _value.identityType
                : identityType // ignore: cast_nullable_to_non_nullable
                      as IdentityType?,
            isChild: null == isChild
                ? _value.isChild
                : isChild // ignore: cast_nullable_to_non_nullable
                      as bool,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as BookingMemberStatus,
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
    String fullName,
    String? identityNumber,
    IdentityType? identityType,
    bool isChild,
    BookingMemberStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    Object? fullName = null,
    Object? identityNumber = freezed,
    Object? identityType = freezed,
    Object? isChild = null,
    Object? status = null,
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
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        identityNumber: freezed == identityNumber
            ? _value.identityNumber
            : identityNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        identityType: freezed == identityType
            ? _value.identityType
            : identityType // ignore: cast_nullable_to_non_nullable
                  as IdentityType?,
        isChild: null == isChild
            ? _value.isChild
            : isChild // ignore: cast_nullable_to_non_nullable
                  as bool,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as BookingMemberStatus,
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
    required this.fullName,
    this.identityNumber,
    this.identityType,
    this.isChild = false,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.booking,
  });

  factory _$TourBookingMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourBookingMemberImplFromJson(json);

  @override
  final String? id;
  @override
  final String fullName;
  @override
  final String? identityNumber;
  @override
  final IdentityType? identityType;
  @override
  @JsonKey()
  final bool isChild;
  @override
  final BookingMemberStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final TourBooking? booking;

  @override
  String toString() {
    return 'TourBookingMember(id: $id, fullName: $fullName, identityNumber: $identityNumber, identityType: $identityType, isChild: $isChild, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, booking: $booking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourBookingMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.identityType, identityType) ||
                other.identityType == identityType) &&
            (identical(other.isChild, isChild) || other.isChild == isChild) &&
            (identical(other.status, status) || other.status == status) &&
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
    fullName,
    identityNumber,
    identityType,
    isChild,
    status,
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
    required final String fullName,
    final String? identityNumber,
    final IdentityType? identityType,
    final bool isChild,
    required final BookingMemberStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final TourBooking? booking,
  }) = _$TourBookingMemberImpl;

  factory _TourBookingMember.fromJson(Map<String, dynamic> json) =
      _$TourBookingMemberImpl.fromJson;

  @override
  String? get id;
  @override
  String get fullName;
  @override
  String? get identityNumber;
  @override
  IdentityType? get identityType;
  @override
  bool get isChild;
  @override
  BookingMemberStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  TourBooking? get booking;

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourBookingMemberImplCopyWith<_$TourBookingMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
