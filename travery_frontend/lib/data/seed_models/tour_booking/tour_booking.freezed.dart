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
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_instance_id')
  String? get tourInstanceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'passenger_name')
  String get passengerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'passenger_phone')
  String get passengerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'adult_count')
  int get adultCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_count')
  int get childCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_amount')
  double? get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_notes')
  String? get specialNotes => throw _privateConstructorUsedError;
  BookingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinator_id')
  String? get coordinatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinator_response')
  String? get coordinatorResponse => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancellation_reason')
  DateTime? get cancellationReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show_note')
  String? get noShowNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_show_at')
  DateTime? get noShowAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  List<TourBookingMember>? get members => throw _privateConstructorUsedError;
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
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'tour_instance_id') String? tourInstanceId,
    @JsonKey(name: 'passenger_name') String passengerName,
    @JsonKey(name: 'passenger_phone') String passengerPhone,
    @JsonKey(name: 'adult_count') int adultCount,
    @JsonKey(name: 'child_count') int childCount,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'refund_amount') double? refundAmount,
    @JsonKey(name: 'special_notes') String? specialNotes,
    BookingStatus status,
    @JsonKey(name: 'coordinator_id') String? coordinatorId,
    @JsonKey(name: 'coordinator_response') String? coordinatorResponse,
    @JsonKey(name: 'cancellation_reason') DateTime? cancellationReason,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<TourBookingMember>? members,
    TourReview? review,
  });

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
    Object? tourInstanceId = freezed,
    Object? passengerName = null,
    Object? passengerPhone = null,
    Object? adultCount = null,
    Object? childCount = null,
    Object? totalPrice = null,
    Object? refundAmount = freezed,
    Object? specialNotes = freezed,
    Object? status = null,
    Object? coordinatorId = freezed,
    Object? coordinatorResponse = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledAt = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? members = freezed,
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
            tourInstanceId: freezed == tourInstanceId
                ? _value.tourInstanceId
                : tourInstanceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            passengerName: null == passengerName
                ? _value.passengerName
                : passengerName // ignore: cast_nullable_to_non_nullable
                      as String,
            passengerPhone: null == passengerPhone
                ? _value.passengerPhone
                : passengerPhone // ignore: cast_nullable_to_non_nullable
                      as String,
            adultCount: null == adultCount
                ? _value.adultCount
                : adultCount // ignore: cast_nullable_to_non_nullable
                      as int,
            childCount: null == childCount
                ? _value.childCount
                : childCount // ignore: cast_nullable_to_non_nullable
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
                      as BookingStatus,
            coordinatorId: freezed == coordinatorId
                ? _value.coordinatorId
                : coordinatorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            coordinatorResponse: freezed == coordinatorResponse
                ? _value.coordinatorResponse
                : coordinatorResponse // ignore: cast_nullable_to_non_nullable
                      as String?,
            cancellationReason: freezed == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            cancelledAt: freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
            members: freezed == members
                ? _value.members
                : members // ignore: cast_nullable_to_non_nullable
                      as List<TourBookingMember>?,
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
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'tour_instance_id') String? tourInstanceId,
    @JsonKey(name: 'passenger_name') String passengerName,
    @JsonKey(name: 'passenger_phone') String passengerPhone,
    @JsonKey(name: 'adult_count') int adultCount,
    @JsonKey(name: 'child_count') int childCount,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'refund_amount') double? refundAmount,
    @JsonKey(name: 'special_notes') String? specialNotes,
    BookingStatus status,
    @JsonKey(name: 'coordinator_id') String? coordinatorId,
    @JsonKey(name: 'coordinator_response') String? coordinatorResponse,
    @JsonKey(name: 'cancellation_reason') DateTime? cancellationReason,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<TourBookingMember>? members,
    TourReview? review,
  });

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
    Object? tourInstanceId = freezed,
    Object? passengerName = null,
    Object? passengerPhone = null,
    Object? adultCount = null,
    Object? childCount = null,
    Object? totalPrice = null,
    Object? refundAmount = freezed,
    Object? specialNotes = freezed,
    Object? status = null,
    Object? coordinatorId = freezed,
    Object? coordinatorResponse = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledAt = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? members = freezed,
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
        tourInstanceId: freezed == tourInstanceId
            ? _value.tourInstanceId
            : tourInstanceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        passengerName: null == passengerName
            ? _value.passengerName
            : passengerName // ignore: cast_nullable_to_non_nullable
                  as String,
        passengerPhone: null == passengerPhone
            ? _value.passengerPhone
            : passengerPhone // ignore: cast_nullable_to_non_nullable
                  as String,
        adultCount: null == adultCount
            ? _value.adultCount
            : adultCount // ignore: cast_nullable_to_non_nullable
                  as int,
        childCount: null == childCount
            ? _value.childCount
            : childCount // ignore: cast_nullable_to_non_nullable
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
                  as BookingStatus,
        coordinatorId: freezed == coordinatorId
            ? _value.coordinatorId
            : coordinatorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        coordinatorResponse: freezed == coordinatorResponse
            ? _value.coordinatorResponse
            : coordinatorResponse // ignore: cast_nullable_to_non_nullable
                  as String?,
        cancellationReason: freezed == cancellationReason
            ? _value.cancellationReason
            : cancellationReason // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        cancelledAt: freezed == cancelledAt
            ? _value.cancelledAt
            : cancelledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
        members: freezed == members
            ? _value._members
            : members // ignore: cast_nullable_to_non_nullable
                  as List<TourBookingMember>?,
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
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'tour_instance_id') required this.tourInstanceId,
    @JsonKey(name: 'passenger_name') required this.passengerName,
    @JsonKey(name: 'passenger_phone') required this.passengerPhone,
    @JsonKey(name: 'adult_count') required this.adultCount,
    @JsonKey(name: 'child_count') required this.childCount,
    @JsonKey(name: 'total_price') required this.totalPrice,
    @JsonKey(name: 'refund_amount') this.refundAmount,
    @JsonKey(name: 'special_notes') this.specialNotes,
    required this.status,
    @JsonKey(name: 'coordinator_id') this.coordinatorId,
    @JsonKey(name: 'coordinator_response') this.coordinatorResponse,
    @JsonKey(name: 'cancellation_reason') this.cancellationReason,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'no_show_note') this.noShowNote,
    @JsonKey(name: 'no_show_at') this.noShowAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    final List<TourBookingMember>? members,
    this.review,
  }) : _members = members;

  factory _$TourBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourBookingImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'tour_instance_id')
  final String? tourInstanceId;
  @override
  @JsonKey(name: 'passenger_name')
  final String passengerName;
  @override
  @JsonKey(name: 'passenger_phone')
  final String passengerPhone;
  @override
  @JsonKey(name: 'adult_count')
  final int adultCount;
  @override
  @JsonKey(name: 'child_count')
  final int childCount;
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
  final BookingStatus status;
  @override
  @JsonKey(name: 'coordinator_id')
  final String? coordinatorId;
  @override
  @JsonKey(name: 'coordinator_response')
  final String? coordinatorResponse;
  @override
  @JsonKey(name: 'cancellation_reason')
  final DateTime? cancellationReason;
  @override
  @JsonKey(name: 'cancelled_at')
  final DateTime? cancelledAt;
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

  /// RELATIONS
  final List<TourBookingMember>? _members;

  /// RELATIONS
  @override
  List<TourBookingMember>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final TourReview? review;

  @override
  String toString() {
    return 'TourBooking(id: $id, userId: $userId, tourInstanceId: $tourInstanceId, passengerName: $passengerName, passengerPhone: $passengerPhone, adultCount: $adultCount, childCount: $childCount, totalPrice: $totalPrice, refundAmount: $refundAmount, specialNotes: $specialNotes, status: $status, coordinatorId: $coordinatorId, coordinatorResponse: $coordinatorResponse, cancellationReason: $cancellationReason, cancelledAt: $cancelledAt, noShowNote: $noShowNote, noShowAt: $noShowAt, createdAt: $createdAt, updatedAt: $updatedAt, members: $members, review: $review)';
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
            (identical(other.passengerName, passengerName) ||
                other.passengerName == passengerName) &&
            (identical(other.passengerPhone, passengerPhone) ||
                other.passengerPhone == passengerPhone) &&
            (identical(other.adultCount, adultCount) ||
                other.adultCount == adultCount) &&
            (identical(other.childCount, childCount) ||
                other.childCount == childCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.specialNotes, specialNotes) ||
                other.specialNotes == specialNotes) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.coordinatorId, coordinatorId) ||
                other.coordinatorId == coordinatorId) &&
            (identical(other.coordinatorResponse, coordinatorResponse) ||
                other.coordinatorResponse == coordinatorResponse) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.noShowNote, noShowNote) ||
                other.noShowNote == noShowNote) &&
            (identical(other.noShowAt, noShowAt) ||
                other.noShowAt == noShowAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    tourInstanceId,
    passengerName,
    passengerPhone,
    adultCount,
    childCount,
    totalPrice,
    refundAmount,
    specialNotes,
    status,
    coordinatorId,
    coordinatorResponse,
    cancellationReason,
    cancelledAt,
    noShowNote,
    noShowAt,
    createdAt,
    updatedAt,
    const DeepCollectionEquality().hash(_members),
    review,
  ]);

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
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'tour_instance_id') required final String? tourInstanceId,
    @JsonKey(name: 'passenger_name') required final String passengerName,
    @JsonKey(name: 'passenger_phone') required final String passengerPhone,
    @JsonKey(name: 'adult_count') required final int adultCount,
    @JsonKey(name: 'child_count') required final int childCount,
    @JsonKey(name: 'total_price') required final double totalPrice,
    @JsonKey(name: 'refund_amount') final double? refundAmount,
    @JsonKey(name: 'special_notes') final String? specialNotes,
    required final BookingStatus status,
    @JsonKey(name: 'coordinator_id') final String? coordinatorId,
    @JsonKey(name: 'coordinator_response') final String? coordinatorResponse,
    @JsonKey(name: 'cancellation_reason') final DateTime? cancellationReason,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'no_show_note') final String? noShowNote,
    @JsonKey(name: 'no_show_at') final DateTime? noShowAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final List<TourBookingMember>? members,
    final TourReview? review,
  }) = _$TourBookingImpl;

  factory _TourBooking.fromJson(Map<String, dynamic> json) =
      _$TourBookingImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'tour_instance_id')
  String? get tourInstanceId;
  @override
  @JsonKey(name: 'passenger_name')
  String get passengerName;
  @override
  @JsonKey(name: 'passenger_phone')
  String get passengerPhone;
  @override
  @JsonKey(name: 'adult_count')
  int get adultCount;
  @override
  @JsonKey(name: 'child_count')
  int get childCount;
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
  BookingStatus get status;
  @override
  @JsonKey(name: 'coordinator_id')
  String? get coordinatorId;
  @override
  @JsonKey(name: 'coordinator_response')
  String? get coordinatorResponse;
  @override
  @JsonKey(name: 'cancellation_reason')
  DateTime? get cancellationReason;
  @override
  @JsonKey(name: 'cancelled_at')
  DateTime? get cancelledAt;
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

  /// RELATIONS
  @override
  List<TourBookingMember>? get members;
  @override
  TourReview? get review;

  /// Create a copy of TourBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourBookingImplCopyWith<_$TourBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
