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
  @JsonKey(name: 'coach_instance_id')
  String get coachInstanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'passenger_name')
  String get passengerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'passenger_phone')
  String get passengerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_station_id')
  String? get pickupStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'dropoff_station_id')
  String? get dropoffStationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_code')
  String get ticketCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'ticket_count')
  int get ticketCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_amount')
  double? get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_notes')
  String? get specialNotes => throw _privateConstructorUsedError;
  CoachBookingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_reason')
  String? get cancellationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_by')
  String? get cancelledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show_note')
  String? get noShowNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show_at')
  DateTime? get noShowAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'coach_instance_id') String coachInstanceId,
    @JsonKey(name: 'passenger_name') String passengerName,
    @JsonKey(name: 'passenger_phone') String passengerPhone,
    @JsonKey(name: 'pickup_station_id') String? pickupStationId,
    @JsonKey(name: 'dropoff_station_id') String? dropoffStationId,
    @JsonKey(name: 'ticket_code') String ticketCode,
    @JsonKey(name: 'ticket_count') int ticketCount,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'refund_amount') double? refundAmount,
    @JsonKey(name: 'special_notes') String? specialNotes,
    CoachBookingStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? coachInstanceId = null,
    Object? passengerName = null,
    Object? passengerPhone = null,
    Object? pickupStationId = freezed,
    Object? dropoffStationId = freezed,
    Object? ticketCode = null,
    Object? ticketCount = null,
    Object? totalPrice = null,
    Object? refundAmount = freezed,
    Object? specialNotes = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            coachInstanceId: null == coachInstanceId
                ? _value.coachInstanceId
                : coachInstanceId // ignore: cast_nullable_to_non_nullable
                      as String,
            passengerName: null == passengerName
                ? _value.passengerName
                : passengerName // ignore: cast_nullable_to_non_nullable
                      as String,
            passengerPhone: null == passengerPhone
                ? _value.passengerPhone
                : passengerPhone // ignore: cast_nullable_to_non_nullable
                      as String,
            pickupStationId: freezed == pickupStationId
                ? _value.pickupStationId
                : pickupStationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            dropoffStationId: freezed == dropoffStationId
                ? _value.dropoffStationId
                : dropoffStationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            ticketCode: null == ticketCode
                ? _value.ticketCode
                : ticketCode // ignore: cast_nullable_to_non_nullable
                      as String,
            ticketCount: null == ticketCount
                ? _value.ticketCount
                : ticketCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            refundAmount: freezed == refundAmount
                ? _value.refundAmount
                : refundAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            specialNotes: freezed == specialNotes
                ? _value.specialNotes
                : specialNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            noShowNote: freezed == noShowNote
                ? _value.noShowNote
                : noShowNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            noShowAt: freezed == noShowAt
                ? _value.noShowAt
                : noShowAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
    @JsonKey(name: 'coach_instance_id') String coachInstanceId,
    @JsonKey(name: 'passenger_name') String passengerName,
    @JsonKey(name: 'passenger_phone') String passengerPhone,
    @JsonKey(name: 'pickup_station_id') String? pickupStationId,
    @JsonKey(name: 'dropoff_station_id') String? dropoffStationId,
    @JsonKey(name: 'ticket_code') String ticketCode,
    @JsonKey(name: 'ticket_count') int ticketCount,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'refund_amount') double? refundAmount,
    @JsonKey(name: 'special_notes') String? specialNotes,
    CoachBookingStatus status,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? coachInstanceId = null,
    Object? passengerName = null,
    Object? passengerPhone = null,
    Object? pickupStationId = freezed,
    Object? dropoffStationId = freezed,
    Object? ticketCode = null,
    Object? ticketCount = null,
    Object? totalPrice = null,
    Object? refundAmount = freezed,
    Object? specialNotes = freezed,
    Object? status = null,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
        coachInstanceId: null == coachInstanceId
            ? _value.coachInstanceId
            : coachInstanceId // ignore: cast_nullable_to_non_nullable
                  as String,
        passengerName: null == passengerName
            ? _value.passengerName
            : passengerName // ignore: cast_nullable_to_non_nullable
                  as String,
        passengerPhone: null == passengerPhone
            ? _value.passengerPhone
            : passengerPhone // ignore: cast_nullable_to_non_nullable
                  as String,
        pickupStationId: freezed == pickupStationId
            ? _value.pickupStationId
            : pickupStationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        dropoffStationId: freezed == dropoffStationId
            ? _value.dropoffStationId
            : dropoffStationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        ticketCode: null == ticketCode
            ? _value.ticketCode
            : ticketCode // ignore: cast_nullable_to_non_nullable
                  as String,
        ticketCount: null == ticketCount
            ? _value.ticketCount
            : ticketCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        refundAmount: freezed == refundAmount
            ? _value.refundAmount
            : refundAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        specialNotes: freezed == specialNotes
            ? _value.specialNotes
            : specialNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        noShowNote: freezed == noShowNote
            ? _value.noShowNote
            : noShowNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        noShowAt: freezed == noShowAt
            ? _value.noShowAt
            : noShowAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
class _$CoachBookingImpl implements _CoachBooking {
  const _$CoachBookingImpl({
    this.id,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'coach_instance_id') required this.coachInstanceId,
    @JsonKey(name: 'passenger_name') required this.passengerName,
    @JsonKey(name: 'passenger_phone') required this.passengerPhone,
    @JsonKey(name: 'pickup_station_id') this.pickupStationId,
    @JsonKey(name: 'dropoff_station_id') this.dropoffStationId,
    @JsonKey(name: 'ticket_code') required this.ticketCode,
    @JsonKey(name: 'ticket_count') required this.ticketCount,
    @JsonKey(name: 'total_price') required this.totalPrice,
    @JsonKey(name: 'refund_amount') this.refundAmount,
    @JsonKey(name: 'special_notes') this.specialNotes,
    required this.status,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'cancellation_reason') this.cancellationReason,
    @JsonKey(name: 'cancelled_by') this.cancelledBy,
    @JsonKey(name: 'no_show_note') this.noShowNote,
    @JsonKey(name: 'no_show_at') this.noShowAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$CoachBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachBookingImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'coach_instance_id')
  final String coachInstanceId;
  @override
  @JsonKey(name: 'passenger_name')
  final String passengerName;
  @override
  @JsonKey(name: 'passenger_phone')
  final String passengerPhone;
  @override
  @JsonKey(name: 'pickup_station_id')
  final String? pickupStationId;
  @override
  @JsonKey(name: 'dropoff_station_id')
  final String? dropoffStationId;
  @override
  @JsonKey(name: 'ticket_code')
  final String ticketCode;
  @override
  @JsonKey(name: 'ticket_count')
  final int ticketCount;
  @override
  @JsonKey(name: 'total_price')
  final double totalPrice;
  @override
  @JsonKey(name: 'refund_amount')
  final double? refundAmount;
  @override
  @JsonKey(name: 'special_notes')
  final String? specialNotes;
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
  @JsonKey(name: 'no_show_note')
  final String? noShowNote;
  @override
  @JsonKey(name: 'no_show_at')
  final DateTime? noShowAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'CoachBooking(id: $id, userId: $userId, coachInstanceId: $coachInstanceId, passengerName: $passengerName, passengerPhone: $passengerPhone, pickupStationId: $pickupStationId, dropoffStationId: $dropoffStationId, ticketCode: $ticketCode, ticketCount: $ticketCount, totalPrice: $totalPrice, refundAmount: $refundAmount, specialNotes: $specialNotes, status: $status, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, noShowNote: $noShowNote, noShowAt: $noShowAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.coachInstanceId, coachInstanceId) ||
                other.coachInstanceId == coachInstanceId) &&
            (identical(other.passengerName, passengerName) ||
                other.passengerName == passengerName) &&
            (identical(other.passengerPhone, passengerPhone) ||
                other.passengerPhone == passengerPhone) &&
            (identical(other.pickupStationId, pickupStationId) ||
                other.pickupStationId == pickupStationId) &&
            (identical(other.dropoffStationId, dropoffStationId) ||
                other.dropoffStationId == dropoffStationId) &&
            (identical(other.ticketCode, ticketCode) ||
                other.ticketCode == ticketCode) &&
            (identical(other.ticketCount, ticketCount) ||
                other.ticketCount == ticketCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.specialNotes, specialNotes) ||
                other.specialNotes == specialNotes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.noShowNote, noShowNote) ||
                other.noShowNote == noShowNote) &&
            (identical(other.noShowAt, noShowAt) ||
                other.noShowAt == noShowAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    coachInstanceId,
    passengerName,
    passengerPhone,
    pickupStationId,
    dropoffStationId,
    ticketCode,
    ticketCount,
    totalPrice,
    refundAmount,
    specialNotes,
    status,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    noShowNote,
    noShowAt,
    createdAt,
    updatedAt,
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
    @JsonKey(name: 'coach_instance_id') required final String coachInstanceId,
    @JsonKey(name: 'passenger_name') required final String passengerName,
    @JsonKey(name: 'passenger_phone') required final String passengerPhone,
    @JsonKey(name: 'pickup_station_id') final String? pickupStationId,
    @JsonKey(name: 'dropoff_station_id') final String? dropoffStationId,
    @JsonKey(name: 'ticket_code') required final String ticketCode,
    @JsonKey(name: 'ticket_count') required final int ticketCount,
    @JsonKey(name: 'total_price') required final double totalPrice,
    @JsonKey(name: 'refund_amount') final double? refundAmount,
    @JsonKey(name: 'special_notes') final String? specialNotes,
    required final CoachBookingStatus status,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') final String? cancellationReason,
    @JsonKey(name: 'cancelled_by') final String? cancelledBy,
    @JsonKey(name: 'no_show_note') final String? noShowNote,
    @JsonKey(name: 'no_show_at') final DateTime? noShowAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$CoachBookingImpl;

  factory _CoachBooking.fromJson(Map<String, dynamic> json) =
      _$CoachBookingImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'coach_instance_id')
  String get coachInstanceId;
  @override
  @JsonKey(name: 'passenger_name')
  String get passengerName;
  @override
  @JsonKey(name: 'passenger_phone')
  String get passengerPhone;
  @override
  @JsonKey(name: 'pickup_station_id')
  String? get pickupStationId;
  @override
  @JsonKey(name: 'dropoff_station_id')
  String? get dropoffStationId;
  @override
  @JsonKey(name: 'ticket_code')
  String get ticketCode;
  @override
  @JsonKey(name: 'ticket_count')
  int get ticketCount;
  @override
  @JsonKey(name: 'total_price')
  double get totalPrice;
  @override
  @JsonKey(name: 'refund_amount')
  double? get refundAmount;
  @override
  @JsonKey(name: 'special_notes')
  String? get specialNotes;
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
  @JsonKey(name: 'no_show_note')
  String? get noShowNote;
  @override
  @JsonKey(name: 'no_show_at')
  DateTime? get noShowAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of CoachBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachBookingImplCopyWith<_$CoachBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
