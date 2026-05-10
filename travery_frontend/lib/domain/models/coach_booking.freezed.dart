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
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coach_trip_id')
  String get coachTripId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_station_id')
  String? get pickupStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dropoff_station_id')
  String? get dropoffStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_deadline')
  DateTime? get paymentDeadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'luggage_weight')
  double? get luggageWeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_requests')
  String? get specialRequests => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show_note')
  String? get noShowNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show_at')
  DateTime? get noShowAt => throw _privateConstructorUsedError;
  CoachBookingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_request_id')
  String? get refundRequestId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
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
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'coach_trip_id') String coachTripId,
    @JsonKey(name: 'pickup_station_id') String? pickupStationId,
    @JsonKey(name: 'dropoff_station_id') String? dropoffStationId,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'payment_deadline') DateTime? paymentDeadline,
    @JsonKey(name: 'luggage_weight') double? luggageWeight,
    @JsonKey(name: 'special_requests') String? specialRequests,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    CoachBookingStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'refund_request_id') String? refundRequestId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    Object? pickupStationId = freezed,
    Object? dropoffStationId = freezed,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? luggageWeight = freezed,
    Object? specialRequests = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? refundRequestId = freezed,
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
            pickupStationId: freezed == pickupStationId
                ? _value.pickupStationId
                : pickupStationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            dropoffStationId: freezed == dropoffStationId
                ? _value.dropoffStationId
                : dropoffStationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            paymentDeadline: freezed == paymentDeadline
                ? _value.paymentDeadline
                : paymentDeadline // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            luggageWeight: freezed == luggageWeight
                ? _value.luggageWeight
                : luggageWeight // ignore: cast_nullable_to_non_nullable
                      as double?,
            specialRequests: freezed == specialRequests
                ? _value.specialRequests
                : specialRequests // ignore: cast_nullable_to_non_nullable
                      as String?,
            noShowNote: freezed == noShowNote
                ? _value.noShowNote
                : noShowNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            noShowAt: freezed == noShowAt
                ? _value.noShowAt
                : noShowAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as CoachBookingStatus,
            cancelledAt: freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cancellationReason: freezed == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancelledBy: freezed == cancelledBy
                ? _value.cancelledBy
                : cancelledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            refundRequestId: freezed == refundRequestId
                ? _value.refundRequestId
                : refundRequestId // ignore: cast_nullable_to_non_nullable
                      as String?,
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
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'coach_trip_id') String coachTripId,
    @JsonKey(name: 'pickup_station_id') String? pickupStationId,
    @JsonKey(name: 'dropoff_station_id') String? dropoffStationId,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'payment_deadline') DateTime? paymentDeadline,
    @JsonKey(name: 'luggage_weight') double? luggageWeight,
    @JsonKey(name: 'special_requests') String? specialRequests,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    CoachBookingStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'refund_request_id') String? refundRequestId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    Object? pickupStationId = freezed,
    Object? dropoffStationId = freezed,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? luggageWeight = freezed,
    Object? specialRequests = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? refundRequestId = freezed,
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
        pickupStationId: freezed == pickupStationId
            ? _value.pickupStationId
            : pickupStationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        dropoffStationId: freezed == dropoffStationId
            ? _value.dropoffStationId
            : dropoffStationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        paymentDeadline: freezed == paymentDeadline
            ? _value.paymentDeadline
            : paymentDeadline // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        luggageWeight: freezed == luggageWeight
            ? _value.luggageWeight
            : luggageWeight // ignore: cast_nullable_to_non_nullable
                  as double?,
        specialRequests: freezed == specialRequests
            ? _value.specialRequests
            : specialRequests // ignore: cast_nullable_to_non_nullable
                  as String?,
        noShowNote: freezed == noShowNote
            ? _value.noShowNote
            : noShowNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        noShowAt: freezed == noShowAt
            ? _value.noShowAt
            : noShowAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as CoachBookingStatus,
        cancelledAt: freezed == cancelledAt
            ? _value.cancelledAt
            : cancelledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cancellationReason: freezed == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancelledBy: freezed == cancelledBy
            ? _value.cancelledBy
            : cancelledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        refundRequestId: freezed == refundRequestId
            ? _value.refundRequestId
            : refundRequestId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'coach_trip_id') required this.coachTripId,
    @JsonKey(name: 'pickup_station_id') this.pickupStationId,
    @JsonKey(name: 'dropoff_station_id') this.dropoffStationId,
    @JsonKey(name: 'total_price') required this.totalPrice,
    @JsonKey(name: 'payment_deadline') this.paymentDeadline,
    @JsonKey(name: 'luggage_weight') this.luggageWeight,
    @JsonKey(name: 'special_requests') this.specialRequests,
    @JsonKey(name: 'no_show_note') this.noShowNote,
    @JsonKey(name: 'no_show_at') this.noShowAt,
    required this.status,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'cancellation_reason') this.cancellationReason,
    @JsonKey(name: 'cancelled_by') this.cancelledBy,
    @JsonKey(name: 'refund_request_id') this.refundRequestId,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
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
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'coach_trip_id')
  final String coachTripId;
  @override
  @JsonKey(name: 'pickup_station_id')
  final String? pickupStationId;
  @override
  @JsonKey(name: 'dropoff_station_id')
  final String? dropoffStationId;
  @override
  @JsonKey(name: 'total_price')
  final double totalPrice;
  @override
  @JsonKey(name: 'payment_deadline')
  final DateTime? paymentDeadline;
  @override
  @JsonKey(name: 'luggage_weight')
  final double? luggageWeight;
  @override
  @JsonKey(name: 'special_requests')
  final String? specialRequests;
  @override
  @JsonKey(name: 'no_show_note')
  final String? noShowNote;
  @override
  @JsonKey(name: 'no_show_at')
  final DateTime? noShowAt;
  @override
  final CoachBookingStatus status;
  @override
  @JsonKey(name: 'cancelled_at')
  final DateTime? cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  final String? cancellationReason;
  @override
  @JsonKey(name: 'cancelled_by')
  final String? cancelledBy;
  @override
  @JsonKey(name: 'refund_request_id')
  final String? refundRequestId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
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
    return 'CoachBooking(id: $id, userId: $userId, coachTripId: $coachTripId, pickupStationId: $pickupStationId, dropoffStationId: $dropoffStationId, totalPrice: $totalPrice, paymentDeadline: $paymentDeadline, luggageWeight: $luggageWeight, specialRequests: $specialRequests, noShowNote: $noShowNote, noShowAt: $noShowAt, status: $status, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, refundRequestId: $refundRequestId, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, coachTrip: $coachTrip, pickupStation: $pickupStation, dropoffStation: $dropoffStation, tickets: $tickets, payments: $payments, refundRequest: $refundRequest)';
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
            (identical(other.pickupStationId, pickupStationId) ||
                other.pickupStationId == pickupStationId) &&
            (identical(other.dropoffStationId, dropoffStationId) ||
                other.dropoffStationId == dropoffStationId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paymentDeadline, paymentDeadline) ||
                other.paymentDeadline == paymentDeadline) &&
            (identical(other.luggageWeight, luggageWeight) ||
                other.luggageWeight == luggageWeight) &&
            (identical(other.specialRequests, specialRequests) ||
                other.specialRequests == specialRequests) &&
            (identical(other.noShowNote, noShowNote) ||
                other.noShowNote == noShowNote) &&
            (identical(other.noShowAt, noShowAt) ||
                other.noShowAt == noShowAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.refundRequestId, refundRequestId) ||
                other.refundRequestId == refundRequestId) &&
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
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    coachTripId,
    pickupStationId,
    dropoffStationId,
    totalPrice,
    paymentDeadline,
    luggageWeight,
    specialRequests,
    noShowNote,
    noShowAt,
    status,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    refundRequestId,
    createdAt,
    updatedAt,
    user,
    coachTrip,
    pickupStation,
    dropoffStation,
    const DeepCollectionEquality().hash(_tickets),
    const DeepCollectionEquality().hash(_payments),
    refundRequest,
  ]);

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
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'coach_trip_id') required final String coachTripId,
    @JsonKey(name: 'pickup_station_id') final String? pickupStationId,
    @JsonKey(name: 'dropoff_station_id') final String? dropoffStationId,
    @JsonKey(name: 'total_price') required final double totalPrice,
    @JsonKey(name: 'payment_deadline') final DateTime? paymentDeadline,
    @JsonKey(name: 'luggage_weight') final double? luggageWeight,
    @JsonKey(name: 'special_requests') final String? specialRequests,
    @JsonKey(name: 'no_show_note') final String? noShowNote,
    @JsonKey(name: 'no_show_at') final DateTime? noShowAt,
    required final CoachBookingStatus status,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') final String? cancellationReason,
    @JsonKey(name: 'cancelled_by') final String? cancelledBy,
    @JsonKey(name: 'refund_request_id') final String? refundRequestId,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
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
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'coach_trip_id')
  String get coachTripId;
  @override
  @JsonKey(name: 'pickup_station_id')
  String? get pickupStationId;
  @override
  @JsonKey(name: 'dropoff_station_id')
  String? get dropoffStationId;
  @override
  @JsonKey(name: 'total_price')
  double get totalPrice;
  @override
  @JsonKey(name: 'payment_deadline')
  DateTime? get paymentDeadline;
  @override
  @JsonKey(name: 'luggage_weight')
  double? get luggageWeight;
  @override
  @JsonKey(name: 'special_requests')
  String? get specialRequests;
  @override
  @JsonKey(name: 'no_show_note')
  String? get noShowNote;
  @override
  @JsonKey(name: 'no_show_at')
  DateTime? get noShowAt;
  @override
  CoachBookingStatus get status;
  @override
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt;
  @override
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason;
  @override
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy;
  @override
  @JsonKey(name: 'refund_request_id')
  String? get refundRequestId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
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
