// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guide.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Guide _$GuideFromJson(Map<String, dynamic> json) {
  return _Guide.fromJson(json);
}

/// @nodoc
mixin _$Guide {
  String? get id => throw _privateConstructorUsedError;
  String get employeeCode => throw _privateConstructorUsedError;
  String get guideLicense => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  int get yearsExperience => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Serializes this Guide to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GuideCopyWith<Guide> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuideCopyWith<$Res> {
  factory $GuideCopyWith(Guide value, $Res Function(Guide) then) =
      _$GuideCopyWithImpl<$Res, Guide>;
  @useResult
  $Res call({
    String? id,
    String employeeCode,
    String guideLicense,
    List<String>? languages,
    int yearsExperience,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$GuideCopyWithImpl<$Res, $Val extends Guide>
    implements $GuideCopyWith<$Res> {
  _$GuideCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeCode = null,
    Object? guideLicense = null,
    Object? languages = freezed,
    Object? yearsExperience = null,
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
            employeeCode: null == employeeCode
                ? _value.employeeCode
                : employeeCode // ignore: cast_nullable_to_non_nullable
                      as String,
            guideLicense: null == guideLicense
                ? _value.guideLicense
                : guideLicense // ignore: cast_nullable_to_non_nullable
                      as String,
            languages: freezed == languages
                ? _value.languages
                : languages // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            yearsExperience: null == yearsExperience
                ? _value.yearsExperience
                : yearsExperience // ignore: cast_nullable_to_non_nullable
                      as int,
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

  /// Create a copy of Guide
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
abstract class _$$GuideImplCopyWith<$Res> implements $GuideCopyWith<$Res> {
  factory _$$GuideImplCopyWith(
    _$GuideImpl value,
    $Res Function(_$GuideImpl) then,
  ) = __$$GuideImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String employeeCode,
    String guideLicense,
    List<String>? languages,
    int yearsExperience,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$GuideImplCopyWithImpl<$Res>
    extends _$GuideCopyWithImpl<$Res, _$GuideImpl>
    implements _$$GuideImplCopyWith<$Res> {
  __$$GuideImplCopyWithImpl(
    _$GuideImpl _value,
    $Res Function(_$GuideImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeCode = null,
    Object? guideLicense = null,
    Object? languages = freezed,
    Object? yearsExperience = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$GuideImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        employeeCode: null == employeeCode
            ? _value.employeeCode
            : employeeCode // ignore: cast_nullable_to_non_nullable
                  as String,
        guideLicense: null == guideLicense
            ? _value.guideLicense
            : guideLicense // ignore: cast_nullable_to_non_nullable
                  as String,
        languages: freezed == languages
            ? _value._languages
            : languages // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        yearsExperience: null == yearsExperience
            ? _value.yearsExperience
            : yearsExperience // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$GuideImpl implements _Guide {
  const _$GuideImpl({
    this.id,
    required this.employeeCode,
    required this.guideLicense,
    final List<String>? languages,
    this.yearsExperience = 0,
    this.createdAt,
    this.updatedAt,
    this.user,
  }) : _languages = languages;

  factory _$GuideImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuideImplFromJson(json);

  @override
  final String? id;
  @override
  final String employeeCode;
  @override
  final String guideLicense;
  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int yearsExperience;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;

  @override
  String toString() {
    return 'Guide(id: $id, employeeCode: $employeeCode, guideLicense: $guideLicense, languages: $languages, yearsExperience: $yearsExperience, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuideImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.guideLicense, guideLicense) ||
                other.guideLicense == guideLicense) &&
            const DeepCollectionEquality().equals(
              other._languages,
              _languages,
            ) &&
            (identical(other.yearsExperience, yearsExperience) ||
                other.yearsExperience == yearsExperience) &&
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
    employeeCode,
    guideLicense,
    const DeepCollectionEquality().hash(_languages),
    yearsExperience,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GuideImplCopyWith<_$GuideImpl> get copyWith =>
      __$$GuideImplCopyWithImpl<_$GuideImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuideImplToJson(this);
  }
}

abstract class _Guide implements Guide {
  const factory _Guide({
    final String? id,
    required final String employeeCode,
    required final String guideLicense,
    final List<String>? languages,
    final int yearsExperience,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
  }) = _$GuideImpl;

  factory _Guide.fromJson(Map<String, dynamic> json) = _$GuideImpl.fromJson;

  @override
  String? get id;
  @override
  String get employeeCode;
  @override
  String get guideLicense;
  @override
  List<String>? get languages;
  @override
  int get yearsExperience;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;

  /// Create a copy of Guide
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GuideImplCopyWith<_$GuideImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
