// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_booking_id')
  String? get tourBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coach_booking_id')
  String? get coachBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_booking_id')
  String? get hotelBookingId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  PaymentType get paymentType => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'vnpay_txn_id')
  String get vnpayTxnId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vnpay_response_code')
  String? get vnpayResponseCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_booking_id') String? tourBookingId,
    @JsonKey(name: 'coach_booking_id') String? coachBookingId,
    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,
    double amount,
    PaymentType paymentType,
    PaymentStatus status,
    @JsonKey(name: 'vnpay_txn_id') String vnpayTxnId,
    @JsonKey(name: 'vnpay_response_code') String? vnpayResponseCode,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourBookingId = freezed,
    Object? coachBookingId = freezed,
    Object? hotelBookingId = freezed,
    Object? amount = null,
    Object? paymentType = null,
    Object? status = null,
    Object? vnpayTxnId = null,
    Object? vnpayResponseCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            tourBookingId: freezed == tourBookingId
                ? _value.tourBookingId
                : tourBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            coachBookingId: freezed == coachBookingId
                ? _value.coachBookingId
                : coachBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: freezed == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            paymentType: null == paymentType
                ? _value.paymentType
                : paymentType // ignore: cast_nullable_to_non_nullable
                      as PaymentType,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as PaymentStatus,
            vnpayTxnId: null == vnpayTxnId
                ? _value.vnpayTxnId
                : vnpayTxnId // ignore: cast_nullable_to_non_nullable
                      as String,
            vnpayResponseCode: freezed == vnpayResponseCode
                ? _value.vnpayResponseCode
                : vnpayResponseCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
    _$PaymentImpl value,
    $Res Function(_$PaymentImpl) then,
  ) = __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_booking_id') String? tourBookingId,
    @JsonKey(name: 'coach_booking_id') String? coachBookingId,
    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,
    double amount,
    PaymentType paymentType,
    PaymentStatus status,
    @JsonKey(name: 'vnpay_txn_id') String vnpayTxnId,
    @JsonKey(name: 'vnpay_response_code') String? vnpayResponseCode,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
    _$PaymentImpl _value,
    $Res Function(_$PaymentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourBookingId = freezed,
    Object? coachBookingId = freezed,
    Object? hotelBookingId = freezed,
    Object? amount = null,
    Object? paymentType = null,
    Object? status = null,
    Object? vnpayTxnId = null,
    Object? vnpayResponseCode = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$PaymentImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourBookingId: freezed == tourBookingId
            ? _value.tourBookingId
            : tourBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        coachBookingId: freezed == coachBookingId
            ? _value.coachBookingId
            : coachBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: freezed == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        paymentType: null == paymentType
            ? _value.paymentType
            : paymentType // ignore: cast_nullable_to_non_nullable
                  as PaymentType,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as PaymentStatus,
        vnpayTxnId: null == vnpayTxnId
            ? _value.vnpayTxnId
            : vnpayTxnId // ignore: cast_nullable_to_non_nullable
                  as String,
        vnpayResponseCode: freezed == vnpayResponseCode
            ? _value.vnpayResponseCode
            : vnpayResponseCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl implements _Payment {
  const _$PaymentImpl({
    this.id,
    @JsonKey(name: 'tour_booking_id') this.tourBookingId,
    @JsonKey(name: 'coach_booking_id') this.coachBookingId,
    @JsonKey(name: 'hotel_booking_id') this.hotelBookingId,
    required this.amount,
    required this.paymentType,
    required this.status,
    @JsonKey(name: 'vnpay_txn_id') required this.vnpayTxnId,
    @JsonKey(name: 'vnpay_response_code') this.vnpayResponseCode,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'tour_booking_id')
  final String? tourBookingId;
  @override
  @JsonKey(name: 'coach_booking_id')
  final String? coachBookingId;
  @override
  @JsonKey(name: 'hotel_booking_id')
  final String? hotelBookingId;
  @override
  final double amount;
  @override
  final PaymentType paymentType;
  @override
  final PaymentStatus status;
  @override
  @JsonKey(name: 'vnpay_txn_id')
  final String vnpayTxnId;
  @override
  @JsonKey(name: 'vnpay_response_code')
  final String? vnpayResponseCode;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Payment(id: $id, tourBookingId: $tourBookingId, coachBookingId: $coachBookingId, hotelBookingId: $hotelBookingId, amount: $amount, paymentType: $paymentType, status: $status, vnpayTxnId: $vnpayTxnId, vnpayResponseCode: $vnpayResponseCode, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourBookingId, tourBookingId) ||
                other.tourBookingId == tourBookingId) &&
            (identical(other.coachBookingId, coachBookingId) ||
                other.coachBookingId == coachBookingId) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vnpayTxnId, vnpayTxnId) ||
                other.vnpayTxnId == vnpayTxnId) &&
            (identical(other.vnpayResponseCode, vnpayResponseCode) ||
                other.vnpayResponseCode == vnpayResponseCode) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    tourBookingId,
    coachBookingId,
    hotelBookingId,
    amount,
    paymentType,
    status,
    vnpayTxnId,
    vnpayResponseCode,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(this);
  }
}

abstract class _Payment implements Payment {
  const factory _Payment({
    final String? id,
    @JsonKey(name: 'tour_booking_id') final String? tourBookingId,
    @JsonKey(name: 'coach_booking_id') final String? coachBookingId,
    @JsonKey(name: 'hotel_booking_id') final String? hotelBookingId,
    required final double amount,
    required final PaymentType paymentType,
    required final PaymentStatus status,
    @JsonKey(name: 'vnpay_txn_id') required final String vnpayTxnId,
    @JsonKey(name: 'vnpay_response_code') final String? vnpayResponseCode,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'tour_booking_id')
  String? get tourBookingId;
  @override
  @JsonKey(name: 'coach_booking_id')
  String? get coachBookingId;
  @override
  @JsonKey(name: 'hotel_booking_id')
  String? get hotelBookingId;
  @override
  double get amount;
  @override
  PaymentType get paymentType;
  @override
  PaymentStatus get status;
  @override
  @JsonKey(name: 'vnpay_txn_id')
  String get vnpayTxnId;
  @override
  @JsonKey(name: 'vnpay_response_code')
  String? get vnpayResponseCode;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
