// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tourist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Tourist _$TouristFromJson(Map<String, dynamic> json) {
  return _Tourist.fromJson(json);
}

/// @nodoc
mixin _$Tourist {
  String get userId => throw _privateConstructorUsedError;
  String? get passportNumber => throw _privateConstructorUsedError;
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  TouristGender? get gender => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Serializes this Tourist to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tourist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TouristCopyWith<Tourist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TouristCopyWith<$Res> {
  factory $TouristCopyWith(Tourist value, $Res Function(Tourist) then) =
      _$TouristCopyWithImpl<$Res, Tourist>;
  @useResult
  $Res call({
    String userId,
    String? passportNumber,
    DateTime? dateOfBirth,
    TouristGender? gender,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$TouristCopyWithImpl<$Res, $Val extends Tourist>
    implements $TouristCopyWith<$Res> {
  _$TouristCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tourist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? passportNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
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
                      as TouristGender?,
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
          )
          as $Val,
    );
  }

  /// Create a copy of Tourist
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
}

/// @nodoc
abstract class _$$TouristImplCopyWith<$Res> implements $TouristCopyWith<$Res> {
  factory _$$TouristImplCopyWith(
    _$TouristImpl value,
    $Res Function(_$TouristImpl) then,
  ) = __$$TouristImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String userId,
    String? passportNumber,
    DateTime? dateOfBirth,
    TouristGender? gender,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$TouristImplCopyWithImpl<$Res>
    extends _$TouristCopyWithImpl<$Res, _$TouristImpl>
    implements _$$TouristImplCopyWith<$Res> {
  __$$TouristImplCopyWithImpl(
    _$TouristImpl _value,
    $Res Function(_$TouristImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Tourist
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? passportNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$TouristImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
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
                  as TouristGender?,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TouristImpl implements _Tourist {
  const _$TouristImpl({
    required this.userId,
    this.passportNumber,
    this.dateOfBirth,
    this.gender,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory _$TouristImpl.fromJson(Map<String, dynamic> json) =>
      _$$TouristImplFromJson(json);

  @override
  final String userId;
  @override
  final String? passportNumber;
  @override
  final DateTime? dateOfBirth;
  @override
  final TouristGender? gender;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;

  @override
  String toString() {
    return 'Tourist(userId: $userId, passportNumber: $passportNumber, dateOfBirth: $dateOfBirth, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouristImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userId,
    passportNumber,
    dateOfBirth,
    gender,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of Tourist
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TouristImplCopyWith<_$TouristImpl> get copyWith =>
      __$$TouristImplCopyWithImpl<_$TouristImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TouristImplToJson(this);
  }
}

abstract class _Tourist implements Tourist {
  const factory _Tourist({
    required final String userId,
    final String? passportNumber,
    final DateTime? dateOfBirth,
    final TouristGender? gender,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
  }) = _$TouristImpl;

  factory _Tourist.fromJson(Map<String, dynamic> json) = _$TouristImpl.fromJson;

  @override
  String get userId;
  @override
  String? get passportNumber;
  @override
  DateTime? get dateOfBirth;
  @override
  TouristGender? get gender;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;

  /// Create a copy of Tourist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TouristImplCopyWith<_$TouristImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
