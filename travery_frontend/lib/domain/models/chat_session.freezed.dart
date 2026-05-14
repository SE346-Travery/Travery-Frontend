// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatSession _$ChatSessionFromJson(Map<String, dynamic> json) {
  return _ChatSession.fromJson(json);
}

/// @nodoc
mixin _$ChatSession {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get coordinatorId => throw _privateConstructorUsedError;
  String get cometchatGuid => throw _privateConstructorUsedError;
  String? get tourId => throw _privateConstructorUsedError;
  ChatSessionStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  User? get coordinator => throw _privateConstructorUsedError;

  /// Serializes this ChatSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSessionCopyWith<ChatSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSessionCopyWith<$Res> {
  factory $ChatSessionCopyWith(
    ChatSession value,
    $Res Function(ChatSession) then,
  ) = _$ChatSessionCopyWithImpl<$Res, ChatSession>;
  @useResult
  $Res call({
    String? id,
    String userId,
    String? coordinatorId,
    String cometchatGuid,
    String? tourId,
    ChatSessionStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    User? coordinator,
  });

  $UserCopyWith<$Res>? get user;
  $UserCopyWith<$Res>? get coordinator;
}

/// @nodoc
class _$ChatSessionCopyWithImpl<$Res, $Val extends ChatSession>
    implements $ChatSessionCopyWith<$Res> {
  _$ChatSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? coordinatorId = freezed,
    Object? cometchatGuid = null,
    Object? tourId = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? coordinator = freezed,
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
            coordinatorId: freezed == coordinatorId
                ? _value.coordinatorId
                : coordinatorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            cometchatGuid: null == cometchatGuid
                ? _value.cometchatGuid
                : cometchatGuid // ignore: cast_nullable_to_non_nullable
                      as String,
            tourId: freezed == tourId
                ? _value.tourId
                : tourId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ChatSessionStatus,
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
            coordinator: freezed == coordinator
                ? _value.coordinator
                : coordinator // ignore: cast_nullable_to_non_nullable
                      as User?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatSession
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

  /// Create a copy of ChatSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get coordinator {
    if (_value.coordinator == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.coordinator!, (value) {
      return _then(_value.copyWith(coordinator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatSessionImplCopyWith<$Res>
    implements $ChatSessionCopyWith<$Res> {
  factory _$$ChatSessionImplCopyWith(
    _$ChatSessionImpl value,
    $Res Function(_$ChatSessionImpl) then,
  ) = __$$ChatSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String userId,
    String? coordinatorId,
    String cometchatGuid,
    String? tourId,
    ChatSessionStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    User? coordinator,
  });

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserCopyWith<$Res>? get coordinator;
}

/// @nodoc
class __$$ChatSessionImplCopyWithImpl<$Res>
    extends _$ChatSessionCopyWithImpl<$Res, _$ChatSessionImpl>
    implements _$$ChatSessionImplCopyWith<$Res> {
  __$$ChatSessionImplCopyWithImpl(
    _$ChatSessionImpl _value,
    $Res Function(_$ChatSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? coordinatorId = freezed,
    Object? cometchatGuid = null,
    Object? tourId = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? coordinator = freezed,
  }) {
    return _then(
      _$ChatSessionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        coordinatorId: freezed == coordinatorId
            ? _value.coordinatorId
            : coordinatorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        cometchatGuid: null == cometchatGuid
            ? _value.cometchatGuid
            : cometchatGuid // ignore: cast_nullable_to_non_nullable
                  as String,
        tourId: freezed == tourId
            ? _value.tourId
            : tourId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatSessionStatus,
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
        coordinator: freezed == coordinator
            ? _value.coordinator
            : coordinator // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatSessionImpl implements _ChatSession {
  const _$ChatSessionImpl({
    this.id,
    required this.userId,
    this.coordinatorId,
    required this.cometchatGuid,
    this.tourId,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.coordinator,
  });

  factory _$ChatSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSessionImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final String? coordinatorId;
  @override
  final String cometchatGuid;
  @override
  final String? tourId;
  @override
  final ChatSessionStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;
  @override
  final User? coordinator;

  @override
  String toString() {
    return 'ChatSession(id: $id, userId: $userId, coordinatorId: $coordinatorId, cometchatGuid: $cometchatGuid, tourId: $tourId, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, coordinator: $coordinator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coordinatorId, coordinatorId) ||
                other.coordinatorId == coordinatorId) &&
            (identical(other.cometchatGuid, cometchatGuid) ||
                other.cometchatGuid == cometchatGuid) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.coordinator, coordinator) ||
                other.coordinator == coordinator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    coordinatorId,
    cometchatGuid,
    tourId,
    status,
    createdAt,
    updatedAt,
    user,
    coordinator,
  );

  /// Create a copy of ChatSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSessionImplCopyWith<_$ChatSessionImpl> get copyWith =>
      __$$ChatSessionImplCopyWithImpl<_$ChatSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSessionImplToJson(this);
  }
}

abstract class _ChatSession implements ChatSession {
  const factory _ChatSession({
    final String? id,
    required final String userId,
    final String? coordinatorId,
    required final String cometchatGuid,
    final String? tourId,
    required final ChatSessionStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
    final User? coordinator,
  }) = _$ChatSessionImpl;

  factory _ChatSession.fromJson(Map<String, dynamic> json) =
      _$ChatSessionImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  String? get coordinatorId;
  @override
  String get cometchatGuid;
  @override
  String? get tourId;
  @override
  ChatSessionStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;
  @override
  User? get coordinator;

  /// Create a copy of ChatSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSessionImplCopyWith<_$ChatSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
