// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_tour_booking_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateTourBookingRequest _$CreateTourBookingRequestFromJson(
  Map<String, dynamic> json,
) {
  return _CreateTourBookingRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTourBookingRequest {
  List<BookingMemberRequest> get members => throw _privateConstructorUsedError;
  String get specialRequests => throw _privateConstructorUsedError;

  /// Serializes this CreateTourBookingRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTourBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTourBookingRequestCopyWith<CreateTourBookingRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTourBookingRequestCopyWith<$Res> {
  factory $CreateTourBookingRequestCopyWith(
    CreateTourBookingRequest value,
    $Res Function(CreateTourBookingRequest) then,
  ) = _$CreateTourBookingRequestCopyWithImpl<$Res, CreateTourBookingRequest>;
  @useResult
  $Res call({List<BookingMemberRequest> members, String specialRequests});
}

/// @nodoc
class _$CreateTourBookingRequestCopyWithImpl<
  $Res,
  $Val extends CreateTourBookingRequest
>
    implements $CreateTourBookingRequestCopyWith<$Res> {
  _$CreateTourBookingRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTourBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? members = null, Object? specialRequests = null}) {
    return _then(
      _value.copyWith(
            members: null == members
                ? _value.members
                : members // ignore: cast_nullable_to_non_nullable
                      as List<BookingMemberRequest>,
            specialRequests: null == specialRequests
                ? _value.specialRequests
                : specialRequests // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateTourBookingRequestImplCopyWith<$Res>
    implements $CreateTourBookingRequestCopyWith<$Res> {
  factory _$$CreateTourBookingRequestImplCopyWith(
    _$CreateTourBookingRequestImpl value,
    $Res Function(_$CreateTourBookingRequestImpl) then,
  ) = __$$CreateTourBookingRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookingMemberRequest> members, String specialRequests});
}

/// @nodoc
class __$$CreateTourBookingRequestImplCopyWithImpl<$Res>
    extends
        _$CreateTourBookingRequestCopyWithImpl<
          $Res,
          _$CreateTourBookingRequestImpl
        >
    implements _$$CreateTourBookingRequestImplCopyWith<$Res> {
  __$$CreateTourBookingRequestImplCopyWithImpl(
    _$CreateTourBookingRequestImpl _value,
    $Res Function(_$CreateTourBookingRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateTourBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? members = null, Object? specialRequests = null}) {
    return _then(
      _$CreateTourBookingRequestImpl(
        members: null == members
            ? _value._members
            : members // ignore: cast_nullable_to_non_nullable
                  as List<BookingMemberRequest>,
        specialRequests: null == specialRequests
            ? _value.specialRequests
            : specialRequests // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTourBookingRequestImpl implements _CreateTourBookingRequest {
  const _$CreateTourBookingRequestImpl({
    required final List<BookingMemberRequest> members,
    this.specialRequests = '',
  }) : _members = members;

  factory _$CreateTourBookingRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTourBookingRequestImplFromJson(json);

  final List<BookingMemberRequest> _members;
  @override
  List<BookingMemberRequest> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  @JsonKey()
  final String specialRequests;

  @override
  String toString() {
    return 'CreateTourBookingRequest(members: $members, specialRequests: $specialRequests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTourBookingRequestImpl &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.specialRequests, specialRequests) ||
                other.specialRequests == specialRequests));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_members),
    specialRequests,
  );

  /// Create a copy of CreateTourBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTourBookingRequestImplCopyWith<_$CreateTourBookingRequestImpl>
  get copyWith =>
      __$$CreateTourBookingRequestImplCopyWithImpl<
        _$CreateTourBookingRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTourBookingRequestImplToJson(this);
  }
}

abstract class _CreateTourBookingRequest implements CreateTourBookingRequest {
  const factory _CreateTourBookingRequest({
    required final List<BookingMemberRequest> members,
    final String specialRequests,
  }) = _$CreateTourBookingRequestImpl;

  factory _CreateTourBookingRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTourBookingRequestImpl.fromJson;

  @override
  List<BookingMemberRequest> get members;
  @override
  String get specialRequests;

  /// Create a copy of CreateTourBookingRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTourBookingRequestImplCopyWith<_$CreateTourBookingRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BookingMemberRequest _$BookingMemberRequestFromJson(Map<String, dynamic> json) {
  return _BookingMemberRequest.fromJson(json);
}

/// @nodoc
mixin _$BookingMemberRequest {
  String get fullName => throw _privateConstructorUsedError;
  String get identityNumber => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;
  String get memberType => throw _privateConstructorUsedError;

  /// Serializes this BookingMemberRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingMemberRequestCopyWith<BookingMemberRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingMemberRequestCopyWith<$Res> {
  factory $BookingMemberRequestCopyWith(
    BookingMemberRequest value,
    $Res Function(BookingMemberRequest) then,
  ) = _$BookingMemberRequestCopyWithImpl<$Res, BookingMemberRequest>;
  @useResult
  $Res call({
    String fullName,
    String identityNumber,
    String dateOfBirth,
    String memberType,
  });
}

/// @nodoc
class _$BookingMemberRequestCopyWithImpl<
  $Res,
  $Val extends BookingMemberRequest
>
    implements $BookingMemberRequestCopyWith<$Res> {
  _$BookingMemberRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? identityNumber = null,
    Object? dateOfBirth = null,
    Object? memberType = null,
  }) {
    return _then(
      _value.copyWith(
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            identityNumber: null == identityNumber
                ? _value.identityNumber
                : identityNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            dateOfBirth: null == dateOfBirth
                ? _value.dateOfBirth
                : dateOfBirth // ignore: cast_nullable_to_non_nullable
                      as String,
            memberType: null == memberType
                ? _value.memberType
                : memberType // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingMemberRequestImplCopyWith<$Res>
    implements $BookingMemberRequestCopyWith<$Res> {
  factory _$$BookingMemberRequestImplCopyWith(
    _$BookingMemberRequestImpl value,
    $Res Function(_$BookingMemberRequestImpl) then,
  ) = __$$BookingMemberRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String fullName,
    String identityNumber,
    String dateOfBirth,
    String memberType,
  });
}

/// @nodoc
class __$$BookingMemberRequestImplCopyWithImpl<$Res>
    extends _$BookingMemberRequestCopyWithImpl<$Res, _$BookingMemberRequestImpl>
    implements _$$BookingMemberRequestImplCopyWith<$Res> {
  __$$BookingMemberRequestImplCopyWithImpl(
    _$BookingMemberRequestImpl _value,
    $Res Function(_$BookingMemberRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookingMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? identityNumber = null,
    Object? dateOfBirth = null,
    Object? memberType = null,
  }) {
    return _then(
      _$BookingMemberRequestImpl(
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        identityNumber: null == identityNumber
            ? _value.identityNumber
            : identityNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        dateOfBirth: null == dateOfBirth
            ? _value.dateOfBirth
            : dateOfBirth // ignore: cast_nullable_to_non_nullable
                  as String,
        memberType: null == memberType
            ? _value.memberType
            : memberType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingMemberRequestImpl implements _BookingMemberRequest {
  const _$BookingMemberRequestImpl({
    required this.fullName,
    this.identityNumber = '',
    this.dateOfBirth = '',
    this.memberType = 'ADULT',
  });

  factory _$BookingMemberRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingMemberRequestImplFromJson(json);

  @override
  final String fullName;
  @override
  @JsonKey()
  final String identityNumber;
  @override
  @JsonKey()
  final String dateOfBirth;
  @override
  @JsonKey()
  final String memberType;

  @override
  String toString() {
    return 'BookingMemberRequest(fullName: $fullName, identityNumber: $identityNumber, dateOfBirth: $dateOfBirth, memberType: $memberType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingMemberRequestImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.identityNumber, identityNumber) ||
                other.identityNumber == identityNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.memberType, memberType) ||
                other.memberType == memberType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    fullName,
    identityNumber,
    dateOfBirth,
    memberType,
  );

  /// Create a copy of BookingMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingMemberRequestImplCopyWith<_$BookingMemberRequestImpl>
  get copyWith =>
      __$$BookingMemberRequestImplCopyWithImpl<_$BookingMemberRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingMemberRequestImplToJson(this);
  }
}

abstract class _BookingMemberRequest implements BookingMemberRequest {
  const factory _BookingMemberRequest({
    required final String fullName,
    final String identityNumber,
    final String dateOfBirth,
    final String memberType,
  }) = _$BookingMemberRequestImpl;

  factory _BookingMemberRequest.fromJson(Map<String, dynamic> json) =
      _$BookingMemberRequestImpl.fromJson;

  @override
  String get fullName;
  @override
  String get identityNumber;
  @override
  String get dateOfBirth;
  @override
  String get memberType;

  /// Create a copy of BookingMemberRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingMemberRequestImplCopyWith<_$BookingMemberRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}
