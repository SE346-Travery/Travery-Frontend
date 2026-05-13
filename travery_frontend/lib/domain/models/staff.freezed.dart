// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return _Staff.fromJson(json);
}

/// @nodoc
mixin _$Staff {
  String? get id => throw _privateConstructorUsedError;
  String? get hotelId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get passwordHash => throw _privateConstructorUsedError;
  StaffRole get role => throw _privateConstructorUsedError;
  StaffStatus get status => throw _privateConstructorUsedError;
  String? get cometchatUid => throw _privateConstructorUsedError;
  String? get employeeCode => throw _privateConstructorUsedError;
  String? get department => throw _privateConstructorUsedError;
  String? get guideLicense => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  int? get yearsExperience => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this Staff to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call({
    String? id,
    String? hotelId,
    String fullName,
    String email,
    String? phoneNumber,
    String? passwordHash,
    StaffRole role,
    StaffStatus status,
    String? cometchatUid,
    String? employeeCode,
    String? department,
    String? guideLicense,
    List<String>? languages,
    int? yearsExperience,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  });
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = freezed,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? passwordHash = freezed,
    Object? role = null,
    Object? status = null,
    Object? cometchatUid = freezed,
    Object? employeeCode = freezed,
    Object? department = freezed,
    Object? guideLicense = freezed,
    Object? languages = freezed,
    Object? yearsExperience = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelId: freezed == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: null == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            passwordHash: freezed == passwordHash
                ? _value.passwordHash
                : passwordHash // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: null == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as StaffRole,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as StaffStatus,
            cometchatUid: freezed == cometchatUid
                ? _value.cometchatUid
                : cometchatUid // ignore: cast_nullable_to_non_nullable
                      as String?,
            employeeCode: freezed == employeeCode
                ? _value.employeeCode
                : employeeCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            department: freezed == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                      as String?,
            guideLicense: freezed == guideLicense
                ? _value.guideLicense
                : guideLicense // ignore: cast_nullable_to_non_nullable
                      as String?,
            languages: freezed == languages
                ? _value.languages
                : languages // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            yearsExperience: freezed == yearsExperience
                ? _value.yearsExperience
                : yearsExperience // ignore: cast_nullable_to_non_nullable
                      as int?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StaffImplCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$StaffImplCopyWith(
    _$StaffImpl value,
    $Res Function(_$StaffImpl) then,
  ) = __$$StaffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? hotelId,
    String fullName,
    String email,
    String? phoneNumber,
    String? passwordHash,
    StaffRole role,
    StaffStatus status,
    String? cometchatUid,
    String? employeeCode,
    String? department,
    String? guideLicense,
    List<String>? languages,
    int? yearsExperience,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  });
}

/// @nodoc
class __$$StaffImplCopyWithImpl<$Res>
    extends _$StaffCopyWithImpl<$Res, _$StaffImpl>
    implements _$$StaffImplCopyWith<$Res> {
  __$$StaffImplCopyWithImpl(
    _$StaffImpl _value,
    $Res Function(_$StaffImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = freezed,
    Object? fullName = null,
    Object? email = null,
    Object? phoneNumber = freezed,
    Object? passwordHash = freezed,
    Object? role = null,
    Object? status = null,
    Object? cometchatUid = freezed,
    Object? employeeCode = freezed,
    Object? department = freezed,
    Object? guideLicense = freezed,
    Object? languages = freezed,
    Object? yearsExperience = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
  }) {
    return _then(
      _$StaffImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelId: freezed == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: null == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        passwordHash: freezed == passwordHash
            ? _value.passwordHash
            : passwordHash // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: null == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as StaffRole,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as StaffStatus,
        cometchatUid: freezed == cometchatUid
            ? _value.cometchatUid
            : cometchatUid // ignore: cast_nullable_to_non_nullable
                  as String?,
        employeeCode: freezed == employeeCode
            ? _value.employeeCode
            : employeeCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        department: freezed == department
            ? _value.department
            : department // ignore: cast_nullable_to_non_nullable
                  as String?,
        guideLicense: freezed == guideLicense
            ? _value.guideLicense
            : guideLicense // ignore: cast_nullable_to_non_nullable
                  as String?,
        languages: freezed == languages
            ? _value._languages
            : languages // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        yearsExperience: freezed == yearsExperience
            ? _value.yearsExperience
            : yearsExperience // ignore: cast_nullable_to_non_nullable
                  as int?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffImpl implements _Staff {
  const _$StaffImpl({
    this.id,
    this.hotelId,
    required this.fullName,
    required this.email,
    this.phoneNumber,
    this.passwordHash,
    required this.role,
    required this.status,
    this.cometchatUid,
    this.employeeCode,
    this.department,
    this.guideLicense,
    final List<String>? languages,
    this.yearsExperience,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  }) : _languages = languages;

  factory _$StaffImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffImplFromJson(json);

  @override
  final String? id;
  @override
  final String? hotelId;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String? phoneNumber;
  @override
  final String? passwordHash;
  @override
  final StaffRole role;
  @override
  final StaffStatus status;
  @override
  final String? cometchatUid;
  @override
  final String? employeeCode;
  @override
  final String? department;
  @override
  final String? guideLicense;
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
  final int? yearsExperience;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? deletedAt;

  @override
  String toString() {
    return 'Staff(id: $id, hotelId: $hotelId, fullName: $fullName, email: $email, phoneNumber: $phoneNumber, passwordHash: $passwordHash, role: $role, status: $status, cometchatUid: $cometchatUid, employeeCode: $employeeCode, department: $department, guideLicense: $guideLicense, languages: $languages, yearsExperience: $yearsExperience, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.passwordHash, passwordHash) ||
                other.passwordHash == passwordHash) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cometchatUid, cometchatUid) ||
                other.cometchatUid == cometchatUid) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.department, department) ||
                other.department == department) &&
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
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hotelId,
    fullName,
    email,
    phoneNumber,
    passwordHash,
    role,
    status,
    cometchatUid,
    employeeCode,
    department,
    guideLicense,
    const DeepCollectionEquality().hash(_languages),
    yearsExperience,
    createdAt,
    updatedAt,
    deletedAt,
  );

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffImplCopyWith<_$StaffImpl> get copyWith =>
      __$$StaffImplCopyWithImpl<_$StaffImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffImplToJson(this);
  }
}

abstract class _Staff implements Staff {
  const factory _Staff({
    final String? id,
    final String? hotelId,
    required final String fullName,
    required final String email,
    final String? phoneNumber,
    final String? passwordHash,
    required final StaffRole role,
    required final StaffStatus status,
    final String? cometchatUid,
    final String? employeeCode,
    final String? department,
    final String? guideLicense,
    final List<String>? languages,
    final int? yearsExperience,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final DateTime? deletedAt,
  }) = _$StaffImpl;

  factory _Staff.fromJson(Map<String, dynamic> json) = _$StaffImpl.fromJson;

  @override
  String? get id;
  @override
  String? get hotelId;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String? get phoneNumber;
  @override
  String? get passwordHash;
  @override
  StaffRole get role;
  @override
  StaffStatus get status;
  @override
  String? get cometchatUid;
  @override
  String? get employeeCode;
  @override
  String? get department;
  @override
  String? get guideLicense;
  @override
  List<String>? get languages;
  @override
  int? get yearsExperience;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get deletedAt;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffImplCopyWith<_$StaffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
