// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentTransaction _$PaymentTransactionFromJson(Map<String, dynamic> json) {
  return _PaymentTransaction.fromJson(json);
}

/// @nodoc
mixin _$PaymentTransaction {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get bookingId => throw _privateConstructorUsedError;
  String? get bookingType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  TransactionType get transactionType => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  String? get gatewayTransId => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  Map<String, dynamic>? get gatewayResponse =>
      throw _privateConstructorUsedError;
  DateTime? get paidAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Serializes this PaymentTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentTransactionCopyWith<PaymentTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTransactionCopyWith<$Res> {
  factory $PaymentTransactionCopyWith(
    PaymentTransaction value,
    $Res Function(PaymentTransaction) then,
  ) = _$PaymentTransactionCopyWithImpl<$Res, PaymentTransaction>;
  @useResult
  $Res call({
    String? id,
    String userId,
    String? bookingId,
    String? bookingType,
    double amount,
    TransactionType transactionType,
    PaymentMethod paymentMethod,
    String? gatewayTransId,
    PaymentStatus status,
    Map<String, dynamic>? gatewayResponse,
    DateTime? paidAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$PaymentTransactionCopyWithImpl<$Res, $Val extends PaymentTransaction>
    implements $PaymentTransactionCopyWith<$Res> {
  _$PaymentTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? bookingId = freezed,
    Object? bookingType = freezed,
    Object? amount = null,
    Object? transactionType = null,
    Object? paymentMethod = null,
    Object? gatewayTransId = freezed,
    Object? status = null,
    Object? gatewayResponse = freezed,
    Object? paidAt = freezed,
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
            bookingId: freezed == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookingType: freezed == bookingType
                ? _value.bookingType
                : bookingType // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            transactionType: null == transactionType
                ? _value.transactionType
                : transactionType // ignore: cast_nullable_to_non_nullable
                      as TransactionType,
            paymentMethod: null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                      as PaymentMethod,
            gatewayTransId: freezed == gatewayTransId
                ? _value.gatewayTransId
                : gatewayTransId // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PaymentStatus,
            gatewayResponse: freezed == gatewayResponse
                ? _value.gatewayResponse
                : gatewayResponse // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            paidAt: freezed == paidAt
                ? _value.paidAt
                : paidAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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

  /// Create a copy of PaymentTransaction
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
abstract class _$$PaymentTransactionImplCopyWith<$Res>
    implements $PaymentTransactionCopyWith<$Res> {
  factory _$$PaymentTransactionImplCopyWith(
    _$PaymentTransactionImpl value,
    $Res Function(_$PaymentTransactionImpl) then,
  ) = __$$PaymentTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String userId,
    String? bookingId,
    String? bookingType,
    double amount,
    TransactionType transactionType,
    PaymentMethod paymentMethod,
    String? gatewayTransId,
    PaymentStatus status,
    Map<String, dynamic>? gatewayResponse,
    DateTime? paidAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
  });

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$PaymentTransactionImplCopyWithImpl<$Res>
    extends _$PaymentTransactionCopyWithImpl<$Res, _$PaymentTransactionImpl>
    implements _$$PaymentTransactionImplCopyWith<$Res> {
  __$$PaymentTransactionImplCopyWithImpl(
    _$PaymentTransactionImpl _value,
    $Res Function(_$PaymentTransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? bookingId = freezed,
    Object? bookingType = freezed,
    Object? amount = null,
    Object? transactionType = null,
    Object? paymentMethod = null,
    Object? gatewayTransId = freezed,
    Object? status = null,
    Object? gatewayResponse = freezed,
    Object? paidAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$PaymentTransactionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        bookingId: freezed == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookingType: freezed == bookingType
            ? _value.bookingType
            : bookingType // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        transactionType: null == transactionType
            ? _value.transactionType
            : transactionType // ignore: cast_nullable_to_non_nullable
                  as TransactionType,
        paymentMethod: null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                  as PaymentMethod,
        gatewayTransId: freezed == gatewayTransId
            ? _value.gatewayTransId
            : gatewayTransId // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PaymentStatus,
        gatewayResponse: freezed == gatewayResponse
            ? _value._gatewayResponse
            : gatewayResponse // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        paidAt: freezed == paidAt
            ? _value.paidAt
            : paidAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
class _$PaymentTransactionImpl implements _PaymentTransaction {
  const _$PaymentTransactionImpl({
    this.id,
    required this.userId,
    this.bookingId,
    this.bookingType,
    required this.amount,
    required this.transactionType,
    required this.paymentMethod,
    this.gatewayTransId,
    required this.status,
    final Map<String, dynamic>? gatewayResponse,
    this.paidAt,
    this.createdAt,
    this.updatedAt,
    this.user,
  }) : _gatewayResponse = gatewayResponse;

  factory _$PaymentTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentTransactionImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final String? bookingId;
  @override
  final String? bookingType;
  @override
  final double amount;
  @override
  final TransactionType transactionType;
  @override
  final PaymentMethod paymentMethod;
  @override
  final String? gatewayTransId;
  @override
  final PaymentStatus status;
  final Map<String, dynamic>? _gatewayResponse;
  @override
  Map<String, dynamic>? get gatewayResponse {
    final value = _gatewayResponse;
    if (value == null) return null;
    if (_gatewayResponse is EqualUnmodifiableMapView) return _gatewayResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime? paidAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;

  @override
  String toString() {
    return 'PaymentTransaction(id: $id, userId: $userId, bookingId: $bookingId, bookingType: $bookingType, amount: $amount, transactionType: $transactionType, paymentMethod: $paymentMethod, gatewayTransId: $gatewayTransId, status: $status, gatewayResponse: $gatewayResponse, paidAt: $paidAt, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentTransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.gatewayTransId, gatewayTransId) ||
                other.gatewayTransId == gatewayTransId) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._gatewayResponse,
              _gatewayResponse,
            ) &&
            (identical(other.paidAt, paidAt) || other.paidAt == paidAt) &&
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
    bookingId,
    bookingType,
    amount,
    transactionType,
    paymentMethod,
    gatewayTransId,
    status,
    const DeepCollectionEquality().hash(_gatewayResponse),
    paidAt,
    createdAt,
    updatedAt,
    user,
  );

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentTransactionImplCopyWith<_$PaymentTransactionImpl> get copyWith =>
      __$$PaymentTransactionImplCopyWithImpl<_$PaymentTransactionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentTransactionImplToJson(this);
  }
}

abstract class _PaymentTransaction implements PaymentTransaction {
  const factory _PaymentTransaction({
    final String? id,
    required final String userId,
    final String? bookingId,
    final String? bookingType,
    required final double amount,
    required final TransactionType transactionType,
    required final PaymentMethod paymentMethod,
    final String? gatewayTransId,
    required final PaymentStatus status,
    final Map<String, dynamic>? gatewayResponse,
    final DateTime? paidAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
  }) = _$PaymentTransactionImpl;

  factory _PaymentTransaction.fromJson(Map<String, dynamic> json) =
      _$PaymentTransactionImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  String? get bookingId;
  @override
  String? get bookingType;
  @override
  double get amount;
  @override
  TransactionType get transactionType;
  @override
  PaymentMethod get paymentMethod;
  @override
  String? get gatewayTransId;
  @override
  PaymentStatus get status;
  @override
  Map<String, dynamic>? get gatewayResponse;
  @override
  DateTime? get paidAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;

  /// Create a copy of PaymentTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentTransactionImplCopyWith<_$PaymentTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
