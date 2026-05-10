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
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'passport_number')
  String? get passportNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'gender')
  TouristGender? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
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
    String? id,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'passport_number') String? passportNumber,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'gender') TouristGender? gender,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    Object? id = freezed,
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
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
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
    String? id,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'passport_number') String? passportNumber,
    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,
    @JsonKey(name: 'gender') TouristGender? gender,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    Object? id = freezed,
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
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
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
    this.id,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'passport_number') this.passportNumber,
    @JsonKey(name: 'date_of_birth') this.dateOfBirth,
    @JsonKey(name: 'gender') this.gender,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.user,
  });

  factory _$TouristImpl.fromJson(Map<String, dynamic> json) =>
      _$$TouristImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'passport_number')
  final String? passportNumber;
  @override
  @JsonKey(name: 'date_of_birth')
  final DateTime? dateOfBirth;
  @override
  @JsonKey(name: 'gender')
  final TouristGender? gender;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATION
  @override
  final User? user;

  @override
  String toString() {
    return 'Tourist(id: $id, userId: $userId, passportNumber: $passportNumber, dateOfBirth: $dateOfBirth, gender: $gender, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TouristImpl &&
            (identical(other.id, id) || other.id == id) &&
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
    id,
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
    final String? id,
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'passport_number') final String? passportNumber,
    @JsonKey(name: 'date_of_birth') final DateTime? dateOfBirth,
    @JsonKey(name: 'gender') final TouristGender? gender,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final User? user,
  }) = _$TouristImpl;

  factory _Tourist.fromJson(Map<String, dynamic> json) = _$TouristImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'passport_number')
  String? get passportNumber;
  @override
  @JsonKey(name: 'date_of_birth')
  DateTime? get dateOfBirth;
  @override
  @JsonKey(name: 'gender')
  TouristGender? get gender;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  User? get user;

  /// Create a copy of Tourist
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TouristImplCopyWith<_$TouristImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
