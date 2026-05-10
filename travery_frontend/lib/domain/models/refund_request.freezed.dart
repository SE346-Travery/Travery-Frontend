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
  @JsonKey(name: 'payment_transaction_id')
  String get paymentTransactionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'processed_by_id')
  String? get processedById => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_amount')
  double get requestedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_refunded')
  double? get actualRefunded => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_reason')
  String? get customerReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_response')
  String? get adminResponse => throw _privateConstructorUsedError;
  RefundRequestStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'processed_at')
  DateTime? get processedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
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
    @JsonKey(name: 'payment_transaction_id') String paymentTransactionId,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'processed_by_id') String? processedById,
    @JsonKey(name: 'requested_amount') double requestedAmount,
    @JsonKey(name: 'actual_refunded') double? actualRefunded,
    @JsonKey(name: 'customer_reason') String? customerReason,
    @JsonKey(name: 'admin_response') String? adminResponse,
    RefundRequestStatus status,
    @JsonKey(name: 'processed_at') DateTime? processedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    @JsonKey(name: 'payment_transaction_id') String paymentTransactionId,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'processed_by_id') String? processedById,
    @JsonKey(name: 'requested_amount') double requestedAmount,
    @JsonKey(name: 'actual_refunded') double? actualRefunded,
    @JsonKey(name: 'customer_reason') String? customerReason,
    @JsonKey(name: 'admin_response') String? adminResponse,
    RefundRequestStatus status,
    @JsonKey(name: 'processed_at') DateTime? processedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    @JsonKey(name: 'payment_transaction_id') required this.paymentTransactionId,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'processed_by_id') this.processedById,
    @JsonKey(name: 'requested_amount') required this.requestedAmount,
    @JsonKey(name: 'actual_refunded') this.actualRefunded,
    @JsonKey(name: 'customer_reason') this.customerReason,
    @JsonKey(name: 'admin_response') this.adminResponse,
    required this.status,
    @JsonKey(name: 'processed_at') this.processedAt,
    @JsonKey(name: 'completed_at') this.completedAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.paymentTransaction,
    this.user,
    this.processedBy,
  });

  factory _$RefundRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefundRequestImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'payment_transaction_id')
  final String paymentTransactionId;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'processed_by_id')
  final String? processedById;
  @override
  @JsonKey(name: 'requested_amount')
  final double requestedAmount;
  @override
  @JsonKey(name: 'actual_refunded')
  final double? actualRefunded;
  @override
  @JsonKey(name: 'customer_reason')
  final String? customerReason;
  @override
  @JsonKey(name: 'admin_response')
  final String? adminResponse;
  @override
  final RefundRequestStatus status;
  @override
  @JsonKey(name: 'processed_at')
  final DateTime? processedAt;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
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
    @JsonKey(name: 'payment_transaction_id')
    required final String paymentTransactionId,
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'processed_by_id') final String? processedById,
    @JsonKey(name: 'requested_amount') required final double requestedAmount,
    @JsonKey(name: 'actual_refunded') final double? actualRefunded,
    @JsonKey(name: 'customer_reason') final String? customerReason,
    @JsonKey(name: 'admin_response') final String? adminResponse,
    required final RefundRequestStatus status,
    @JsonKey(name: 'processed_at') final DateTime? processedAt,
    @JsonKey(name: 'completed_at') final DateTime? completedAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final PaymentTransaction? paymentTransaction,
    final User? user,
    final User? processedBy,
  }) = _$RefundRequestImpl;

  factory _RefundRequest.fromJson(Map<String, dynamic> json) =
      _$RefundRequestImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'payment_transaction_id')
  String get paymentTransactionId;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'processed_by_id')
  String? get processedById;
  @override
  @JsonKey(name: 'requested_amount')
  double get requestedAmount;
  @override
  @JsonKey(name: 'actual_refunded')
  double? get actualRefunded;
  @override
  @JsonKey(name: 'customer_reason')
  String? get customerReason;
  @override
  @JsonKey(name: 'admin_response')
  String? get adminResponse;
  @override
  RefundRequestStatus get status;
  @override
  @JsonKey(name: 'processed_at')
  DateTime? get processedAt;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
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
