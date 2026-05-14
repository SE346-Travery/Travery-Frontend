// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourBooking _$TourBookingFromJson(Map<String, dynamic> json) {
  return _TourBooking.fromJson(json);
}

/// @nodoc
mixin _$TourBooking {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get tourInstanceId => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  DateTime? get paymentDeadline => throw _privateConstructorUsedError;
  TourBookingStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  TourInstance? get tourInstance => throw _privateConstructorUsedError;
  List<TourBookingMember>? get members => throw _privateConstructorUsedError;
  List<PaymentTransaction>? get payments => throw _privateConstructorUsedError;
  RefundRequest? get refundRequest => throw _privateConstructorUsedError;
  TourReview? get review => throw _privateConstructorUsedError;

  /// Serializes this TourBooking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourBookingCopyWith<TourBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourBookingCopyWith<$Res> {
  factory $TourBookingCopyWith(
    TourBooking value,
    $Res Function(TourBooking) then,
  ) = _$TourBookingCopyWithImpl<$Res, TourBooking>;
  @useResult
  $Res call({
    String? id,
    String userId,
    String tourInstanceId,
    double totalPrice,
    DateTime? paymentDeadline,
    TourBookingStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    TourInstance? tourInstance,
    List<TourBookingMember>? members,
    List<PaymentTransaction>? payments,
    RefundRequest? refundRequest,
    TourReview? review,
  });

  $UserCopyWith<$Res>? get user;
  $TourInstanceCopyWith<$Res>? get tourInstance;
  $RefundRequestCopyWith<$Res>? get refundRequest;
  $TourReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$TourBookingCopyWithImpl<$Res, $Val extends TourBooking>
    implements $TourBookingCopyWith<$Res> {
  _$TourBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? tourInstanceId = null,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? tourInstance = freezed,
    Object? members = freezed,
    Object? payments = freezed,
    Object? refundRequest = freezed,
    Object? review = freezed,
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
            tourInstanceId: null == tourInstanceId
                ? _value.tourInstanceId
                : tourInstanceId // ignore: cast_nullable_to_non_nullable
                      as String,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            paymentDeadline: freezed == paymentDeadline
                ? _value.paymentDeadline
                : paymentDeadline // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TourBookingStatus,
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
            tourInstance: freezed == tourInstance
                ? _value.tourInstance
                : tourInstance // ignore: cast_nullable_to_non_nullable
                      as TourInstance?,
            members: freezed == members
                ? _value.members
                : members // ignore: cast_nullable_to_non_nullable
                      as List<TourBookingMember>?,
            payments: freezed == payments
                ? _value.payments
                : payments // ignore: cast_nullable_to_non_nullable
                      as List<PaymentTransaction>?,
            refundRequest: freezed == refundRequest
                ? _value.refundRequest
                : refundRequest // ignore: cast_nullable_to_non_nullable
                      as RefundRequest?,
            review: freezed == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                      as TourReview?,
          )
          as $Val,
    );
  }

  /// Create a copy of TourBooking
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

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourInstanceCopyWith<$Res>? get tourInstance {
    if (_value.tourInstance == null) {
      return null;
    }

    return $TourInstanceCopyWith<$Res>(_value.tourInstance!, (value) {
      return _then(_value.copyWith(tourInstance: value) as $Val);
    });
  }

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundRequestCopyWith<$Res>? get refundRequest {
    if (_value.refundRequest == null) {
      return null;
    }

    return $RefundRequestCopyWith<$Res>(_value.refundRequest!, (value) {
      return _then(_value.copyWith(refundRequest: value) as $Val);
    });
  }

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $TourReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourBookingImplCopyWith<$Res>
    implements $TourBookingCopyWith<$Res> {
  factory _$$TourBookingImplCopyWith(
    _$TourBookingImpl value,
    $Res Function(_$TourBookingImpl) then,
  ) = __$$TourBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String userId,
    String tourInstanceId,
    double totalPrice,
    DateTime? paymentDeadline,
    TourBookingStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    TourInstance? tourInstance,
    List<TourBookingMember>? members,
    List<PaymentTransaction>? payments,
    RefundRequest? refundRequest,
    TourReview? review,
  });

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $TourInstanceCopyWith<$Res>? get tourInstance;
  @override
  $RefundRequestCopyWith<$Res>? get refundRequest;
  @override
  $TourReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$TourBookingImplCopyWithImpl<$Res>
    extends _$TourBookingCopyWithImpl<$Res, _$TourBookingImpl>
    implements _$$TourBookingImplCopyWith<$Res> {
  __$$TourBookingImplCopyWithImpl(
    _$TourBookingImpl _value,
    $Res Function(_$TourBookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? tourInstanceId = null,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? tourInstance = freezed,
    Object? members = freezed,
    Object? payments = freezed,
    Object? refundRequest = freezed,
    Object? review = freezed,
  }) {
    return _then(
      _$TourBookingImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        tourInstanceId: null == tourInstanceId
            ? _value.tourInstanceId
            : tourInstanceId // ignore: cast_nullable_to_non_nullable
                  as String,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        paymentDeadline: freezed == paymentDeadline
            ? _value.paymentDeadline
            : paymentDeadline // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TourBookingStatus,
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
        tourInstance: freezed == tourInstance
            ? _value.tourInstance
            : tourInstance // ignore: cast_nullable_to_non_nullable
                  as TourInstance?,
        members: freezed == members
            ? _value._members
            : members // ignore: cast_nullable_to_non_nullable
                  as List<TourBookingMember>?,
        payments: freezed == payments
            ? _value._payments
            : payments // ignore: cast_nullable_to_non_nullable
                  as List<PaymentTransaction>?,
        refundRequest: freezed == refundRequest
            ? _value.refundRequest
            : refundRequest // ignore: cast_nullable_to_non_nullable
                  as RefundRequest?,
        review: freezed == review
            ? _value.review
            : review // ignore: cast_nullable_to_non_nullable
                  as TourReview?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourBookingImpl implements _TourBooking {
  const _$TourBookingImpl({
    this.id,
    required this.userId,
    required this.tourInstanceId,
    required this.totalPrice,
    this.paymentDeadline,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.tourInstance,
    final List<TourBookingMember>? members,
    final List<PaymentTransaction>? payments,
    this.refundRequest,
    this.review,
  }) : _members = members,
       _payments = payments;

  factory _$TourBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourBookingImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final String tourInstanceId;
  @override
  final double totalPrice;
  @override
  final DateTime? paymentDeadline;
  @override
  final TourBookingStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;
  @override
  final TourInstance? tourInstance;
  final List<TourBookingMember>? _members;
  @override
  List<TourBookingMember>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PaymentTransaction>? _payments;
  @override
  List<PaymentTransaction>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RefundRequest? refundRequest;
  @override
  final TourReview? review;

  @override
  String toString() {
    return 'TourBooking(id: $id, userId: $userId, tourInstanceId: $tourInstanceId, totalPrice: $totalPrice, paymentDeadline: $paymentDeadline, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, tourInstance: $tourInstance, members: $members, payments: $payments, refundRequest: $refundRequest, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tourInstanceId, tourInstanceId) ||
                other.tourInstanceId == tourInstanceId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paymentDeadline, paymentDeadline) ||
                other.paymentDeadline == paymentDeadline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tourInstance, tourInstance) ||
                other.tourInstance == tourInstance) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.refundRequest, refundRequest) ||
                other.refundRequest == refundRequest) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    tourInstanceId,
    totalPrice,
    paymentDeadline,
    status,
    createdAt,
    updatedAt,
    user,
    tourInstance,
    const DeepCollectionEquality().hash(_members),
    const DeepCollectionEquality().hash(_payments),
    refundRequest,
    review,
  );

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourBookingImplCopyWith<_$TourBookingImpl> get copyWith =>
      __$$TourBookingImplCopyWithImpl<_$TourBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourBookingImplToJson(this);
  }
}

abstract class _TourBooking implements TourBooking {
  const factory _TourBooking({
    final String? id,
    required final String userId,
    required final String tourInstanceId,
    required final double totalPrice,
    final DateTime? paymentDeadline,
    required final TourBookingStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
    final TourInstance? tourInstance,
    final List<TourBookingMember>? members,
    final List<PaymentTransaction>? payments,
    final RefundRequest? refundRequest,
    final TourReview? review,
  }) = _$TourBookingImpl;

  factory _TourBooking.fromJson(Map<String, dynamic> json) =
      _$TourBookingImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  String get tourInstanceId;
  @override
  double get totalPrice;
  @override
  DateTime? get paymentDeadline;
  @override
  TourBookingStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;
  @override
  TourInstance? get tourInstance;
  @override
  List<TourBookingMember>? get members;
  @override
  List<PaymentTransaction>? get payments;
  @override
  RefundRequest? get refundRequest;
  @override
  TourReview? get review;

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourBookingImplCopyWith<_$TourBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
