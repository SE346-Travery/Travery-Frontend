// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refund_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RefundRequest _$RefundRequestFromJson(Map<String, dynamic> json) {
  return _RefundRequest.fromJson(json);
}

/// @nodoc
mixin _$RefundRequest {
  String? get id => throw _privateConstructorUsedError;
  String get paymentTransactionId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get processedById => throw _privateConstructorUsedError;
  double get requestedAmount => throw _privateConstructorUsedError;
  double? get actualRefunded => throw _privateConstructorUsedError;
  String? get customerReason => throw _privateConstructorUsedError;
  String? get adminResponse => throw _privateConstructorUsedError;
  RefundRequestStatus get status => throw _privateConstructorUsedError;
  DateTime? get processedAt => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  PaymentTransaction? get paymentTransaction =>
      throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  User? get processedBy => throw _privateConstructorUsedError;

  /// Serializes this RefundRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefundRequestCopyWith<RefundRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefundRequestCopyWith<$Res> {
  factory $RefundRequestCopyWith(
    RefundRequest value,
    $Res Function(RefundRequest) then,
  ) = _$RefundRequestCopyWithImpl<$Res, RefundRequest>;
  @useResult
  $Res call({
    String? id,
    String paymentTransactionId,
    String userId,
    String? processedById,
    double requestedAmount,
    double? actualRefunded,
    String? customerReason,
    String? adminResponse,
    RefundRequestStatus status,
    DateTime? processedAt,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    PaymentTransaction? paymentTransaction,
    User? user,
    User? processedBy,
  });

  $PaymentTransactionCopyWith<$Res>? get paymentTransaction;
  $UserCopyWith<$Res>? get user;
  $UserCopyWith<$Res>? get processedBy;
}

/// @nodoc
class _$RefundRequestCopyWithImpl<$Res, $Val extends RefundRequest>
    implements $RefundRequestCopyWith<$Res> {
  _$RefundRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentTransactionId = null,
    Object? userId = null,
    Object? processedById = freezed,
    Object? requestedAmount = null,
    Object? actualRefunded = freezed,
    Object? customerReason = freezed,
    Object? adminResponse = freezed,
    Object? status = null,
    Object? processedAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? paymentTransaction = freezed,
    Object? user = freezed,
    Object? processedBy = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentTransactionId: null == paymentTransactionId
                ? _value.paymentTransactionId
                : paymentTransactionId // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            processedById: freezed == processedById
                ? _value.processedById
                : processedById // ignore: cast_nullable_to_non_nullable
                      as String?,
            requestedAmount: null == requestedAmount
                ? _value.requestedAmount
                : requestedAmount // ignore: cast_nullable_to_non_nullable
                      as double,
            actualRefunded: freezed == actualRefunded
                ? _value.actualRefunded
                : actualRefunded // ignore: cast_nullable_to_non_nullable
                      as double?,
            customerReason: freezed == customerReason
                ? _value.customerReason
                : customerReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            adminResponse: freezed == adminResponse
                ? _value.adminResponse
                : adminResponse // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as RefundRequestStatus,
            processedAt: freezed == processedAt
                ? _value.processedAt
                : processedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            paymentTransaction: freezed == paymentTransaction
                ? _value.paymentTransaction
                : paymentTransaction // ignore: cast_nullable_to_non_nullable
                      as PaymentTransaction?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
            processedBy: freezed == processedBy
                ? _value.processedBy
                : processedBy // ignore: cast_nullable_to_non_nullable
                      as User?,
          )
          as $Val,
    );
  }

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentTransactionCopyWith<$Res>? get paymentTransaction {
    if (_value.paymentTransaction == null) {
      return null;
    }

    return $PaymentTransactionCopyWith<$Res>(_value.paymentTransaction!, (
      value,
    ) {
      return _then(_value.copyWith(paymentTransaction: value) as $Val);
    });
  }

  /// Create a copy of RefundRequest
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

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get processedBy {
    if (_value.processedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.processedBy!, (value) {
      return _then(_value.copyWith(processedBy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RefundRequestImplCopyWith<$Res>
    implements $RefundRequestCopyWith<$Res> {
  factory _$$RefundRequestImplCopyWith(
    _$RefundRequestImpl value,
    $Res Function(_$RefundRequestImpl) then,
  ) = __$$RefundRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String paymentTransactionId,
    String userId,
    String? processedById,
    double requestedAmount,
    double? actualRefunded,
    String? customerReason,
    String? adminResponse,
    RefundRequestStatus status,
    DateTime? processedAt,
    DateTime? completedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    PaymentTransaction? paymentTransaction,
    User? user,
    User? processedBy,
  });

  @override
  $PaymentTransactionCopyWith<$Res>? get paymentTransaction;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserCopyWith<$Res>? get processedBy;
}

/// @nodoc
class __$$RefundRequestImplCopyWithImpl<$Res>
    extends _$RefundRequestCopyWithImpl<$Res, _$RefundRequestImpl>
    implements _$$RefundRequestImplCopyWith<$Res> {
  __$$RefundRequestImplCopyWithImpl(
    _$RefundRequestImpl _value,
    $Res Function(_$RefundRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? paymentTransactionId = null,
    Object? userId = null,
    Object? processedById = freezed,
    Object? requestedAmount = null,
    Object? actualRefunded = freezed,
    Object? customerReason = freezed,
    Object? adminResponse = freezed,
    Object? status = null,
    Object? processedAt = freezed,
    Object? completedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? paymentTransaction = freezed,
    Object? user = freezed,
    Object? processedBy = freezed,
  }) {
    return _then(
      _$RefundRequestImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentTransactionId: null == paymentTransactionId
            ? _value.paymentTransactionId
            : paymentTransactionId // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        processedById: freezed == processedById
            ? _value.processedById
            : processedById // ignore: cast_nullable_to_non_nullable
                  as String?,
        requestedAmount: null == requestedAmount
            ? _value.requestedAmount
            : requestedAmount // ignore: cast_nullable_to_non_nullable
                  as double,
        actualRefunded: freezed == actualRefunded
            ? _value.actualRefunded
            : actualRefunded // ignore: cast_nullable_to_non_nullable
                  as double?,
        customerReason: freezed == customerReason
            ? _value.customerReason
            : customerReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminResponse: freezed == adminResponse
            ? _value.adminResponse
            : adminResponse // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as RefundRequestStatus,
        processedAt: freezed == processedAt
            ? _value.processedAt
            : processedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        paymentTransaction: freezed == paymentTransaction
            ? _value.paymentTransaction
            : paymentTransaction // ignore: cast_nullable_to_non_nullable
                  as PaymentTransaction?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
        processedBy: freezed == processedBy
            ? _value.processedBy
            : processedBy // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefundRequestImpl implements _RefundRequest {
  const _$RefundRequestImpl({
    this.id,
    required this.paymentTransactionId,
    required this.userId,
    this.processedById,
    required this.requestedAmount,
    this.actualRefunded,
    this.customerReason,
    this.adminResponse,
    required this.status,
    this.processedAt,
    this.completedAt,
    this.createdAt,
    this.updatedAt,
    this.paymentTransaction,
    this.user,
    this.processedBy,
  });

  factory _$RefundRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundRequestImplFromJson(json);

  @override
  final String? id;
  @override
  final String paymentTransactionId;
  @override
  final String userId;
  @override
  final String? processedById;
  @override
  final double requestedAmount;
  @override
  final double? actualRefunded;
  @override
  final String? customerReason;
  @override
  final String? adminResponse;
  @override
  final RefundRequestStatus status;
  @override
  final DateTime? processedAt;
  @override
  final DateTime? completedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final PaymentTransaction? paymentTransaction;
  @override
  final User? user;
  @override
  final User? processedBy;

  @override
  String toString() {
    return 'RefundRequest(id: $id, paymentTransactionId: $paymentTransactionId, userId: $userId, processedById: $processedById, requestedAmount: $requestedAmount, actualRefunded: $actualRefunded, customerReason: $customerReason, adminResponse: $adminResponse, status: $status, processedAt: $processedAt, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt, paymentTransaction: $paymentTransaction, user: $user, processedBy: $processedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefundRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.paymentTransactionId, paymentTransactionId) ||
                other.paymentTransactionId == paymentTransactionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.processedById, processedById) ||
                other.processedById == processedById) &&
            (identical(other.requestedAmount, requestedAmount) ||
                other.requestedAmount == requestedAmount) &&
            (identical(other.actualRefunded, actualRefunded) ||
                other.actualRefunded == actualRefunded) &&
            (identical(other.customerReason, customerReason) ||
                other.customerReason == customerReason) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.processedAt, processedAt) ||
                other.processedAt == processedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.paymentTransaction, paymentTransaction) ||
                other.paymentTransaction == paymentTransaction) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.processedBy, processedBy) ||
                other.processedBy == processedBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    paymentTransactionId,
    userId,
    processedById,
    requestedAmount,
    actualRefunded,
    customerReason,
    adminResponse,
    status,
    processedAt,
    completedAt,
    createdAt,
    updatedAt,
    paymentTransaction,
    user,
    processedBy,
  );

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefundRequestImplCopyWith<_$RefundRequestImpl> get copyWith =>
      __$$RefundRequestImplCopyWithImpl<_$RefundRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefundRequestImplToJson(this);
  }
}

abstract class _RefundRequest implements RefundRequest {
  const factory _RefundRequest({
    final String? id,
    required final String paymentTransactionId,
    required final String userId,
    final String? processedById,
    required final double requestedAmount,
    final double? actualRefunded,
    final String? customerReason,
    final String? adminResponse,
    required final RefundRequestStatus status,
    final DateTime? processedAt,
    final DateTime? completedAt,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final PaymentTransaction? paymentTransaction,
    final User? user,
    final User? processedBy,
  }) = _$RefundRequestImpl;

  factory _RefundRequest.fromJson(Map<String, dynamic> json) =
      _$RefundRequestImpl.fromJson;

  @override
  String? get id;
  @override
  String get paymentTransactionId;
  @override
  String get userId;
  @override
  String? get processedById;
  @override
  double get requestedAmount;
  @override
  double? get actualRefunded;
  @override
  String? get customerReason;
  @override
  String? get adminResponse;
  @override
  RefundRequestStatus get status;
  @override
  DateTime? get processedAt;
  @override
  DateTime? get completedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  PaymentTransaction? get paymentTransaction;
  @override
  User? get user;
  @override
  User? get processedBy;

  /// Create a copy of RefundRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefundRequestImplCopyWith<_$RefundRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
