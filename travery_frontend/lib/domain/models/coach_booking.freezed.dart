// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachBooking _$CoachBookingFromJson(Map<String, dynamic> json) {
  return _CoachBooking.fromJson(json);
}

/// @nodoc
mixin _$CoachBooking {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get coachTripId => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  DateTime? get paymentDeadline => throw _privateConstructorUsedError;
  CoachBookingStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  CoachTrip? get coachTrip => throw _privateConstructorUsedError;
  Station? get pickupStation => throw _privateConstructorUsedError;
  Station? get dropoffStation => throw _privateConstructorUsedError;
  List<CoachTicket>? get tickets => throw _privateConstructorUsedError;
  List<PaymentTransaction>? get payments => throw _privateConstructorUsedError;
  RefundRequest? get refundRequest => throw _privateConstructorUsedError;

  /// Serializes this CoachBooking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachBookingCopyWith<CoachBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachBookingCopyWith<$Res> {
  factory $CoachBookingCopyWith(
    CoachBooking value,
    $Res Function(CoachBooking) then,
  ) = _$CoachBookingCopyWithImpl<$Res, CoachBooking>;
  @useResult
  $Res call({
    String? id,
    String userId,
    String coachTripId,
    double totalPrice,
    DateTime? paymentDeadline,
    CoachBookingStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    CoachTrip? coachTrip,
    Station? pickupStation,
    Station? dropoffStation,
    List<CoachTicket>? tickets,
    List<PaymentTransaction>? payments,
    RefundRequest? refundRequest,
  });

  $UserCopyWith<$Res>? get user;
  $CoachTripCopyWith<$Res>? get coachTrip;
  $StationCopyWith<$Res>? get pickupStation;
  $StationCopyWith<$Res>? get dropoffStation;
  $RefundRequestCopyWith<$Res>? get refundRequest;
}

/// @nodoc
class _$CoachBookingCopyWithImpl<$Res, $Val extends CoachBooking>
    implements $CoachBookingCopyWith<$Res> {
  _$CoachBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? coachTripId = null,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? coachTrip = freezed,
    Object? pickupStation = freezed,
    Object? dropoffStation = freezed,
    Object? tickets = freezed,
    Object? payments = freezed,
    Object? refundRequest = freezed,
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
            coachTripId: null == coachTripId
                ? _value.coachTripId
                : coachTripId // ignore: cast_nullable_to_non_nullable
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
                      as CoachBookingStatus,
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
            coachTrip: freezed == coachTrip
                ? _value.coachTrip
                : coachTrip // ignore: cast_nullable_to_non_nullable
                      as CoachTrip?,
            pickupStation: freezed == pickupStation
                ? _value.pickupStation
                : pickupStation // ignore: cast_nullable_to_non_nullable
                      as Station?,
            dropoffStation: freezed == dropoffStation
                ? _value.dropoffStation
                : dropoffStation // ignore: cast_nullable_to_non_nullable
                      as Station?,
            tickets: freezed == tickets
                ? _value.tickets
                : tickets // ignore: cast_nullable_to_non_nullable
                      as List<CoachTicket>?,
            payments: freezed == payments
                ? _value.payments
                : payments // ignore: cast_nullable_to_non_nullable
                      as List<PaymentTransaction>?,
            refundRequest: freezed == refundRequest
                ? _value.refundRequest
                : refundRequest // ignore: cast_nullable_to_non_nullable
                      as RefundRequest?,
          )
          as $Val,
    );
  }

  /// Create a copy of CoachBooking
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

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachTripCopyWith<$Res>? get coachTrip {
    if (_value.coachTrip == null) {
      return null;
    }

    return $CoachTripCopyWith<$Res>(_value.coachTrip!, (value) {
      return _then(_value.copyWith(coachTrip: value) as $Val);
    });
  }

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res>? get pickupStation {
    if (_value.pickupStation == null) {
      return null;
    }

    return $StationCopyWith<$Res>(_value.pickupStation!, (value) {
      return _then(_value.copyWith(pickupStation: value) as $Val);
    });
  }

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StationCopyWith<$Res>? get dropoffStation {
    if (_value.dropoffStation == null) {
      return null;
    }

    return $StationCopyWith<$Res>(_value.dropoffStation!, (value) {
      return _then(_value.copyWith(dropoffStation: value) as $Val);
    });
  }

  /// Create a copy of CoachBooking
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
}

/// @nodoc
abstract class _$$CoachBookingImplCopyWith<$Res>
    implements $CoachBookingCopyWith<$Res> {
  factory _$$CoachBookingImplCopyWith(
    _$CoachBookingImpl value,
    $Res Function(_$CoachBookingImpl) then,
  ) = __$$CoachBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String userId,
    String coachTripId,
    double totalPrice,
    DateTime? paymentDeadline,
    CoachBookingStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    CoachTrip? coachTrip,
    Station? pickupStation,
    Station? dropoffStation,
    List<CoachTicket>? tickets,
    List<PaymentTransaction>? payments,
    RefundRequest? refundRequest,
  });

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $CoachTripCopyWith<$Res>? get coachTrip;
  @override
  $StationCopyWith<$Res>? get pickupStation;
  @override
  $StationCopyWith<$Res>? get dropoffStation;
  @override
  $RefundRequestCopyWith<$Res>? get refundRequest;
}

/// @nodoc
class __$$CoachBookingImplCopyWithImpl<$Res>
    extends _$CoachBookingCopyWithImpl<$Res, _$CoachBookingImpl>
    implements _$$CoachBookingImplCopyWith<$Res> {
  __$$CoachBookingImplCopyWithImpl(
    _$CoachBookingImpl _value,
    $Res Function(_$CoachBookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? coachTripId = null,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? coachTrip = freezed,
    Object? pickupStation = freezed,
    Object? dropoffStation = freezed,
    Object? tickets = freezed,
    Object? payments = freezed,
    Object? refundRequest = freezed,
  }) {
    return _then(
      _$CoachBookingImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        coachTripId: null == coachTripId
            ? _value.coachTripId
            : coachTripId // ignore: cast_nullable_to_non_nullable
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
                  as CoachBookingStatus,
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
        coachTrip: freezed == coachTrip
            ? _value.coachTrip
            : coachTrip // ignore: cast_nullable_to_non_nullable
                  as CoachTrip?,
        pickupStation: freezed == pickupStation
            ? _value.pickupStation
            : pickupStation // ignore: cast_nullable_to_non_nullable
                  as Station?,
        dropoffStation: freezed == dropoffStation
            ? _value.dropoffStation
            : dropoffStation // ignore: cast_nullable_to_non_nullable
                  as Station?,
        tickets: freezed == tickets
            ? _value._tickets
            : tickets // ignore: cast_nullable_to_non_nullable
                  as List<CoachTicket>?,
        payments: freezed == payments
            ? _value._payments
            : payments // ignore: cast_nullable_to_non_nullable
                  as List<PaymentTransaction>?,
        refundRequest: freezed == refundRequest
            ? _value.refundRequest
            : refundRequest // ignore: cast_nullable_to_non_nullable
                  as RefundRequest?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachBookingImpl implements _CoachBooking {
  const _$CoachBookingImpl({
    this.id,
    required this.userId,
    required this.coachTripId,
    required this.totalPrice,
    this.paymentDeadline,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.coachTrip,
    this.pickupStation,
    this.dropoffStation,
    final List<CoachTicket>? tickets,
    final List<PaymentTransaction>? payments,
    this.refundRequest,
  }) : _tickets = tickets,
       _payments = payments;

  factory _$CoachBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachBookingImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final String coachTripId;
  @override
  final double totalPrice;
  @override
  final DateTime? paymentDeadline;
  @override
  final CoachBookingStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;
  @override
  final CoachTrip? coachTrip;
  @override
  final Station? pickupStation;
  @override
  final Station? dropoffStation;
  final List<CoachTicket>? _tickets;
  @override
  List<CoachTicket>? get tickets {
    final value = _tickets;
    if (value == null) return null;
    if (_tickets is EqualUnmodifiableListView) return _tickets;
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
  String toString() {
    return 'CoachBooking(id: $id, userId: $userId, coachTripId: $coachTripId, totalPrice: $totalPrice, paymentDeadline: $paymentDeadline, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, coachTrip: $coachTrip, pickupStation: $pickupStation, dropoffStation: $dropoffStation, tickets: $tickets, payments: $payments, refundRequest: $refundRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coachTripId, coachTripId) ||
                other.coachTripId == coachTripId) &&
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
            (identical(other.coachTrip, coachTrip) ||
                other.coachTrip == coachTrip) &&
            (identical(other.pickupStation, pickupStation) ||
                other.pickupStation == pickupStation) &&
            (identical(other.dropoffStation, dropoffStation) ||
                other.dropoffStation == dropoffStation) &&
            const DeepCollectionEquality().equals(other._tickets, _tickets) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            (identical(other.refundRequest, refundRequest) ||
                other.refundRequest == refundRequest));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    coachTripId,
    totalPrice,
    paymentDeadline,
    status,
    createdAt,
    updatedAt,
    user,
    coachTrip,
    pickupStation,
    dropoffStation,
    const DeepCollectionEquality().hash(_tickets),
    const DeepCollectionEquality().hash(_payments),
    refundRequest,
  );

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachBookingImplCopyWith<_$CoachBookingImpl> get copyWith =>
      __$$CoachBookingImplCopyWithImpl<_$CoachBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachBookingImplToJson(this);
  }
}

abstract class _CoachBooking implements CoachBooking {
  const factory _CoachBooking({
    final String? id,
    required final String userId,
    required final String coachTripId,
    required final double totalPrice,
    final DateTime? paymentDeadline,
    required final CoachBookingStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
    final CoachTrip? coachTrip,
    final Station? pickupStation,
    final Station? dropoffStation,
    final List<CoachTicket>? tickets,
    final List<PaymentTransaction>? payments,
    final RefundRequest? refundRequest,
  }) = _$CoachBookingImpl;

  factory _CoachBooking.fromJson(Map<String, dynamic> json) =
      _$CoachBookingImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  String get coachTripId;
  @override
  double get totalPrice;
  @override
  DateTime? get paymentDeadline;
  @override
  CoachBookingStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;
  @override
  CoachTrip? get coachTrip;
  @override
  Station? get pickupStation;
  @override
  Station? get dropoffStation;
  @override
  List<CoachTicket>? get tickets;
  @override
  List<PaymentTransaction>? get payments;
  @override
  RefundRequest? get refundRequest;

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachBookingImplCopyWith<_$CoachBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
