// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coach_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CoachTicket _$CoachTicketFromJson(Map<String, dynamic> json) {
  return _CoachTicket.fromJson(json);
}

/// @nodoc
mixin _$CoachTicket {
  String? get id => throw _privateConstructorUsedError;
  String get coachBookingId => throw _privateConstructorUsedError;
  String get coachSeatId => throw _privateConstructorUsedError;
  String? get passengerName => throw _privateConstructorUsedError;
  String? get passengerPhone => throw _privateConstructorUsedError;
  double get priceAtBooking => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  CoachBooking? get booking => throw _privateConstructorUsedError;
  CoachSeat? get seat => throw _privateConstructorUsedError;

  /// Serializes this CoachTicket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoachTicketCopyWith<CoachTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachTicketCopyWith<$Res> {
  factory $CoachTicketCopyWith(
    CoachTicket value,
    $Res Function(CoachTicket) then,
  ) = _$CoachTicketCopyWithImpl<$Res, CoachTicket>;
  @useResult
  $Res call({
    String? id,
    String coachBookingId,
    String coachSeatId,
    String? passengerName,
    String? passengerPhone,
    double priceAtBooking,
    DateTime? createdAt,
    DateTime? updatedAt,
    CoachBooking? booking,
    CoachSeat? seat,
  });

  $CoachBookingCopyWith<$Res>? get booking;
  $CoachSeatCopyWith<$Res>? get seat;
}

/// @nodoc
class _$CoachTicketCopyWithImpl<$Res, $Val extends CoachTicket>
    implements $CoachTicketCopyWith<$Res> {
  _$CoachTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coachBookingId = null,
    Object? coachSeatId = null,
    Object? passengerName = freezed,
    Object? passengerPhone = freezed,
    Object? priceAtBooking = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
    Object? seat = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            coachBookingId: null == coachBookingId
                ? _value.coachBookingId
                : coachBookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            coachSeatId: null == coachSeatId
                ? _value.coachSeatId
                : coachSeatId // ignore: cast_nullable_to_non_nullable
                      as String,
            passengerName: freezed == passengerName
                ? _value.passengerName
                : passengerName // ignore: cast_nullable_to_non_nullable
                      as String?,
            passengerPhone: freezed == passengerPhone
                ? _value.passengerPhone
                : passengerPhone // ignore: cast_nullable_to_non_nullable
                      as String?,
            priceAtBooking: null == priceAtBooking
                ? _value.priceAtBooking
                : priceAtBooking // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            booking: freezed == booking
                ? _value.booking
                : booking // ignore: cast_nullable_to_non_nullable
                      as CoachBooking?,
            seat: freezed == seat
                ? _value.seat
                : seat // ignore: cast_nullable_to_non_nullable
                      as CoachSeat?,
          )
          as $Val,
    );
  }

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachBookingCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $CoachBookingCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoachSeatCopyWith<$Res>? get seat {
    if (_value.seat == null) {
      return null;
    }

    return $CoachSeatCopyWith<$Res>(_value.seat!, (value) {
      return _then(_value.copyWith(seat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoachTicketImplCopyWith<$Res>
    implements $CoachTicketCopyWith<$Res> {
  factory _$$CoachTicketImplCopyWith(
    _$CoachTicketImpl value,
    $Res Function(_$CoachTicketImpl) then,
  ) = __$$CoachTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String coachBookingId,
    String coachSeatId,
    String? passengerName,
    String? passengerPhone,
    double priceAtBooking,
    DateTime? createdAt,
    DateTime? updatedAt,
    CoachBooking? booking,
    CoachSeat? seat,
  });

  @override
  $CoachBookingCopyWith<$Res>? get booking;
  @override
  $CoachSeatCopyWith<$Res>? get seat;
}

/// @nodoc
class __$$CoachTicketImplCopyWithImpl<$Res>
    extends _$CoachTicketCopyWithImpl<$Res, _$CoachTicketImpl>
    implements _$$CoachTicketImplCopyWith<$Res> {
  __$$CoachTicketImplCopyWithImpl(
    _$CoachTicketImpl _value,
    $Res Function(_$CoachTicketImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coachBookingId = null,
    Object? coachSeatId = null,
    Object? passengerName = freezed,
    Object? passengerPhone = freezed,
    Object? priceAtBooking = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
    Object? seat = freezed,
  }) {
    return _then(
      _$CoachTicketImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        coachBookingId: null == coachBookingId
            ? _value.coachBookingId
            : coachBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        coachSeatId: null == coachSeatId
            ? _value.coachSeatId
            : coachSeatId // ignore: cast_nullable_to_non_nullable
                  as String,
        passengerName: freezed == passengerName
            ? _value.passengerName
            : passengerName // ignore: cast_nullable_to_non_nullable
                  as String?,
        passengerPhone: freezed == passengerPhone
            ? _value.passengerPhone
            : passengerPhone // ignore: cast_nullable_to_non_nullable
                  as String?,
        priceAtBooking: null == priceAtBooking
            ? _value.priceAtBooking
            : priceAtBooking // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        booking: freezed == booking
            ? _value.booking
            : booking // ignore: cast_nullable_to_non_nullable
                  as CoachBooking?,
        seat: freezed == seat
            ? _value.seat
            : seat // ignore: cast_nullable_to_non_nullable
                  as CoachSeat?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CoachTicketImpl implements _CoachTicket {
  const _$CoachTicketImpl({
    this.id,
    required this.coachBookingId,
    required this.coachSeatId,
    this.passengerName,
    this.passengerPhone,
    required this.priceAtBooking,
    this.createdAt,
    this.updatedAt,
    this.booking,
    this.seat,
  });

  factory _$CoachTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoachTicketImplFromJson(json);

  @override
  final String? id;
  @override
  final String coachBookingId;
  @override
  final String coachSeatId;
  @override
  final String? passengerName;
  @override
  final String? passengerPhone;
  @override
  final double priceAtBooking;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final CoachBooking? booking;
  @override
  final CoachSeat? seat;

  @override
  String toString() {
    return 'CoachTicket(id: $id, coachBookingId: $coachBookingId, coachSeatId: $coachSeatId, passengerName: $passengerName, passengerPhone: $passengerPhone, priceAtBooking: $priceAtBooking, createdAt: $createdAt, updatedAt: $updatedAt, booking: $booking, seat: $seat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoachTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coachBookingId, coachBookingId) ||
                other.coachBookingId == coachBookingId) &&
            (identical(other.coachSeatId, coachSeatId) ||
                other.coachSeatId == coachSeatId) &&
            (identical(other.passengerName, passengerName) ||
                other.passengerName == passengerName) &&
            (identical(other.passengerPhone, passengerPhone) ||
                other.passengerPhone == passengerPhone) &&
            (identical(other.priceAtBooking, priceAtBooking) ||
                other.priceAtBooking == priceAtBooking) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.seat, seat) || other.seat == seat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    coachBookingId,
    coachSeatId,
    passengerName,
    passengerPhone,
    priceAtBooking,
    createdAt,
    updatedAt,
    booking,
    seat,
  );

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoachTicketImplCopyWith<_$CoachTicketImpl> get copyWith =>
      __$$CoachTicketImplCopyWithImpl<_$CoachTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoachTicketImplToJson(this);
  }
}

abstract class _CoachTicket implements CoachTicket {
  const factory _CoachTicket({
    final String? id,
    required final String coachBookingId,
    required final String coachSeatId,
    final String? passengerName,
    final String? passengerPhone,
    required final double priceAtBooking,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final CoachBooking? booking,
    final CoachSeat? seat,
  }) = _$CoachTicketImpl;

  factory _CoachTicket.fromJson(Map<String, dynamic> json) =
      _$CoachTicketImpl.fromJson;

  @override
  String? get id;
  @override
  String get coachBookingId;
  @override
  String get coachSeatId;
  @override
  String? get passengerName;
  @override
  String? get passengerPhone;
  @override
  double get priceAtBooking;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  CoachBooking? get booking;
  @override
  CoachSeat? get seat;

  /// Create a copy of CoachTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoachTicketImplCopyWith<_$CoachTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
