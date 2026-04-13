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
  @JsonKey(name: 'tour_booking_id')
  String get tourBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_number')
  String? get identityNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_type')
  IdentityType? get identityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_child')
  bool get isChild => throw _privateConstructorUsedError;
  BookingMemberStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'tour_booking_id') String tourBookingId,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'identity_number') String? identityNumber,
    @JsonKey(name: 'identity_type') IdentityType? identityType,
    @JsonKey(name: 'is_child') bool isChild,
    BookingMemberStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? tourBookingId = null,
    Object? fullName = null,
    Object? identityNumber = freezed,
    Object? identityType = freezed,
    Object? isChild = null,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            tourBookingId: null == tourBookingId
                ? _value.tourBookingId
                : tourBookingId // ignore: cast_nullable_to_non_nullable
                      as String,
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
          )
          as $Val,
    );
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
    @JsonKey(name: 'tour_booking_id') String tourBookingId,
    @JsonKey(name: 'full_name') String fullName,
    @JsonKey(name: 'identity_number') String? identityNumber,
    @JsonKey(name: 'identity_type') IdentityType? identityType,
    @JsonKey(name: 'is_child') bool isChild,
    BookingMemberStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? tourBookingId = null,
    Object? fullName = null,
    Object? identityNumber = freezed,
    Object? identityType = freezed,
    Object? isChild = null,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$TourBookingMemberImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourBookingId: null == tourBookingId
            ? _value.tourBookingId
            : tourBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourBookingMemberImpl implements _TourBookingMember {
  const _$TourBookingMemberImpl({
    this.id,
    @JsonKey(name: 'tour_booking_id') required this.tourBookingId,
    @JsonKey(name: 'full_name') required this.fullName,
    @JsonKey(name: 'identity_number') this.identityNumber,
    @JsonKey(name: 'identity_type') this.identityType,
    @JsonKey(name: 'is_child') required this.isChild,
    required this.status,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$TourBookingMemberImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourBookingMemberImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'tour_booking_id')
  final String tourBookingId;
  @override
  @JsonKey(name: 'full_name')
  final String fullName;
  @override
  @JsonKey(name: 'identity_number')
  final String? identityNumber;
  @override
  @JsonKey(name: 'identity_type')
  final IdentityType? identityType;
  @override
  @JsonKey(name: 'is_child')
  final bool isChild;
  @override
  final BookingMemberStatus status;
  @override
  @JsonKey(name: 'cancelled_at')
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'TourBookingMember(id: $id, tourBookingId: $tourBookingId, fullName: $fullName, identityNumber: $identityNumber, identityType: $identityType, isChild: $isChild, status: $status, cancelledAt: $cancelledAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourBookingMemberImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourBookingId, tourBookingId) ||
                other.tourBookingId == tourBookingId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.identityType, identityType) ||
                other.identityType == identityType) &&
            (identical(other.isChild, isChild) || other.isChild == isChild) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
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
    tourBookingId,
    fullName,
    identityNumber,
    identityType,
    isChild,
    status,
    cancelledAt,
    createdAt,
    updatedAt,
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
    @JsonKey(name: 'tour_booking_id') required final String tourBookingId,
    @JsonKey(name: 'full_name') required final String fullName,
    @JsonKey(name: 'identity_number') final String? identityNumber,
    @JsonKey(name: 'identity_type') final IdentityType? identityType,
    @JsonKey(name: 'is_child') required final bool isChild,
    required final BookingMemberStatus status,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$TourBookingMemberImpl;

  factory _TourBookingMember.fromJson(Map<String, dynamic> json) =
      _$TourBookingMemberImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'tour_booking_id')
  String get tourBookingId;
  @override
  @JsonKey(name: 'full_name')
  String get fullName;
  @override
  @JsonKey(name: 'identity_number')
  String? get identityNumber;
  @override
  @JsonKey(name: 'identity_type')
  IdentityType? get identityType;
  @override
  @JsonKey(name: 'is_child')
  bool get isChild;
  @override
  BookingMemberStatus get status;
  @override
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of TourBookingMember
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourBookingMemberImplCopyWith<_$TourBookingMemberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
