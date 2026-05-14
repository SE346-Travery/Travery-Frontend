// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coordinator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Coordinator _$CoordinatorFromJson(Map<String, dynamic> json) {
  return _Coordinator.fromJson(json);
}

/// @nodoc
mixin _$Coordinator {
  String? get id => throw _privateConstructorUsedError;
  String get employeeCode => throw _privateConstructorUsedError;
  CoordinatorDepartment? get department => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Serializes this Coordinator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Coordinator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoordinatorCopyWith<Coordinator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinatorCopyWith<$Res> {
  factory $CoordinatorCopyWith(
    Coordinator value,
    $Res Function(Coordinator) then,
  ) = _$CoordinatorCopyWithImpl<$Res, Coordinator>;
  @useResult
  $Res call({
    String? id,
    String employeeCode,
    CoordinatorDepartment? department,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CoordinatorCopyWithImpl<$Res, $Val extends Coordinator>
    implements $CoordinatorCopyWith<$Res> {
  _$CoordinatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Coordinator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeCode = null,
    Object? department = freezed,
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
            department: freezed == department
                ? _value.department
                : department // ignore: cast_nullable_to_non_nullable
                      as CoordinatorDepartment?,
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

  /// Create a copy of Coordinator
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
abstract class _$$CoordinatorImplCopyWith<$Res>
    implements $CoordinatorCopyWith<$Res> {
  factory _$$CoordinatorImplCopyWith(
    _$CoordinatorImpl value,
    $Res Function(_$CoordinatorImpl) then,
  ) = __$$CoordinatorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String employeeCode,
    CoordinatorDepartment? department,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CoordinatorImplCopyWithImpl<$Res>
    extends _$CoordinatorCopyWithImpl<$Res, _$CoordinatorImpl>
    implements _$$CoordinatorImplCopyWith<$Res> {
  __$$CoordinatorImplCopyWithImpl(
    _$CoordinatorImpl _value,
    $Res Function(_$CoordinatorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Coordinator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? employeeCode = null,
    Object? department = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$CoordinatorImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        employeeCode: null == employeeCode
            ? _value.employeeCode
            : employeeCode // ignore: cast_nullable_to_non_nullable
                  as String,
        department: freezed == department
            ? _value.department
            : department // ignore: cast_nullable_to_non_nullable
                  as CoordinatorDepartment?,
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
class _$CoordinatorImpl implements _Coordinator {
  const _$CoordinatorImpl({
    this.id,
    required this.employeeCode,
    this.department,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory _$CoordinatorImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoordinatorImplFromJson(json);

  @override
  final String? id;
  @override
  final String employeeCode;
  @override
  final CoordinatorDepartment? department;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;

  @override
  String toString() {
    return 'Coordinator(id: $id, employeeCode: $employeeCode, department: $department, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoordinatorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.employeeCode, employeeCode) ||
                other.employeeCode == employeeCode) &&
            (identical(other.department, department) ||
                other.department == department) &&
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
    department,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of Coordinator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoordinatorImplCopyWith<_$CoordinatorImpl> get copyWith =>
      __$$CoordinatorImplCopyWithImpl<_$CoordinatorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoordinatorImplToJson(this);
  }
}

abstract class _Coordinator implements Coordinator {
  const factory _Coordinator({
    final String? id,
    required final String employeeCode,
    final CoordinatorDepartment? department,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
  }) = _$CoordinatorImpl;

  factory _Coordinator.fromJson(Map<String, dynamic> json) =
      _$CoordinatorImpl.fromJson;

  @override
  String? get id;
  @override
  String get employeeCode;
  @override
  CoordinatorDepartment? get department;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;

  /// Create a copy of Coordinator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoordinatorImplCopyWith<_$CoordinatorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
