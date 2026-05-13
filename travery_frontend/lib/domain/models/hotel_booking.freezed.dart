// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HotelBooking _$HotelBookingFromJson(Map<String, dynamic> json) {
  return _HotelBooking.fromJson(json);
}

/// @nodoc
mixin _$HotelBooking {
  String? get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get tourInstanceId => throw _privateConstructorUsedError;
  String? get roomId => throw _privateConstructorUsedError;
  DateTime get checkInDate => throw _privateConstructorUsedError;
  DateTime get checkOutDate => throw _privateConstructorUsedError;
  int get nightCount => throw _privateConstructorUsedError;
  int get guestCount => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  DateTime? get paymentDeadline => throw _privateConstructorUsedError;
  String? get specialRequest => throw _privateConstructorUsedError;
  double? get lateCheckoutFee => throw _privateConstructorUsedError;
  double? get addonTotal => throw _privateConstructorUsedError;
  String? get noShowNote => throw _privateConstructorUsedError;
  DateTime? get noShowAt => throw _privateConstructorUsedError;
  HotelBookingStatus get status => throw _privateConstructorUsedError;
  DateTime? get actualCheckInAt => throw _privateConstructorUsedError;
  DateTime? get actualCheckOutAt => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  String? get cancelledBy => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  TourInstance? get tourInstance => throw _privateConstructorUsedError;
  Room? get room => throw _privateConstructorUsedError;
  List<HotelBookingDetail>? get details => throw _privateConstructorUsedError;
  List<HotelBookingMember>? get members => throw _privateConstructorUsedError;
  List<AddonOrder>? get addonOrders => throw _privateConstructorUsedError;
  HotelReview? get review => throw _privateConstructorUsedError;

  /// Serializes this HotelBooking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelBookingCopyWith<HotelBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBookingCopyWith<$Res> {
  factory $HotelBookingCopyWith(
    HotelBooking value,
    $Res Function(HotelBooking) then,
  ) = _$HotelBookingCopyWithImpl<$Res, HotelBooking>;
  @useResult
  $Res call({
    String? id,
    String userId,
    String? tourInstanceId,
    String? roomId,
    DateTime checkInDate,
    DateTime checkOutDate,
    int nightCount,
    int guestCount,
    double totalPrice,
    DateTime? paymentDeadline,
    String? specialRequest,
    double? lateCheckoutFee,
    double? addonTotal,
    String? noShowNote,
    DateTime? noShowAt,
    HotelBookingStatus status,
    DateTime? actualCheckInAt,
    DateTime? actualCheckOutAt,
    DateTime? cancelledAt,
    String? cancellationReason,
    String? cancelledBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    TourInstance? tourInstance,
    Room? room,
    List<HotelBookingDetail>? details,
    List<HotelBookingMember>? members,
    List<AddonOrder>? addonOrders,
    HotelReview? review,
  });

  $UserCopyWith<$Res>? get user;
  $TourInstanceCopyWith<$Res>? get tourInstance;
  $RoomCopyWith<$Res>? get room;
  $HotelReviewCopyWith<$Res>? get review;
}

/// @nodoc
class _$HotelBookingCopyWithImpl<$Res, $Val extends HotelBooking>
    implements $HotelBookingCopyWith<$Res> {
  _$HotelBookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? tourInstanceId = freezed,
    Object? roomId = freezed,
    Object? checkInDate = null,
    Object? checkOutDate = null,
    Object? nightCount = null,
    Object? guestCount = null,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? specialRequest = freezed,
    Object? lateCheckoutFee = freezed,
    Object? addonTotal = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? status = null,
    Object? actualCheckInAt = freezed,
    Object? actualCheckOutAt = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? tourInstance = freezed,
    Object? room = freezed,
    Object? details = freezed,
    Object? members = freezed,
    Object? addonOrders = freezed,
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
            roomId: freezed == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                      as String?,
            checkInDate: null == checkInDate
                ? _value.checkInDate
                : checkInDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            checkOutDate: null == checkOutDate
                ? _value.checkOutDate
                : checkOutDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            nightCount: null == nightCount
                ? _value.nightCount
                : nightCount // ignore: cast_nullable_to_non_nullable
                      as int,
            guestCount: null == guestCount
                ? _value.guestCount
                : guestCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            paymentDeadline: freezed == paymentDeadline
                ? _value.paymentDeadline
                : paymentDeadline // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            specialRequest: freezed == specialRequest
                ? _value.specialRequest
                : specialRequest // ignore: cast_nullable_to_non_nullable
                      as String?,
            lateCheckoutFee: freezed == lateCheckoutFee
                ? _value.lateCheckoutFee
                : lateCheckoutFee // ignore: cast_nullable_to_non_nullable
                      as double?,
            addonTotal: freezed == addonTotal
                ? _value.addonTotal
                : addonTotal // ignore: cast_nullable_to_non_nullable
                      as double?,
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
                      as HotelBookingStatus,
            actualCheckInAt: freezed == actualCheckInAt
                ? _value.actualCheckInAt
                : actualCheckInAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            actualCheckOutAt: freezed == actualCheckOutAt
                ? _value.actualCheckOutAt
                : actualCheckOutAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
            room: freezed == room
                ? _value.room
                : room // ignore: cast_nullable_to_non_nullable
                      as Room?,
            details: freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                      as List<HotelBookingDetail>?,
            members: freezed == members
                ? _value.members
                : members // ignore: cast_nullable_to_non_nullable
                      as List<HotelBookingMember>?,
            addonOrders: freezed == addonOrders
                ? _value.addonOrders
                : addonOrders // ignore: cast_nullable_to_non_nullable
                      as List<AddonOrder>?,
            review: freezed == review
                ? _value.review
                : review // ignore: cast_nullable_to_non_nullable
                      as HotelReview?,
          )
          as $Val,
    );
  }

  /// Create a copy of HotelBooking
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

  /// Create a copy of HotelBooking
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

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelReviewCopyWith<$Res>? get review {
    if (_value.review == null) {
      return null;
    }

    return $HotelReviewCopyWith<$Res>(_value.review!, (value) {
      return _then(_value.copyWith(review: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelBookingImplCopyWith<$Res>
    implements $HotelBookingCopyWith<$Res> {
  factory _$$HotelBookingImplCopyWith(
    _$HotelBookingImpl value,
    $Res Function(_$HotelBookingImpl) then,
  ) = __$$HotelBookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String userId,
    String? tourInstanceId,
    String? roomId,
    DateTime checkInDate,
    DateTime checkOutDate,
    int nightCount,
    int guestCount,
    double totalPrice,
    DateTime? paymentDeadline,
    String? specialRequest,
    double? lateCheckoutFee,
    double? addonTotal,
    String? noShowNote,
    DateTime? noShowAt,
    HotelBookingStatus status,
    DateTime? actualCheckInAt,
    DateTime? actualCheckOutAt,
    DateTime? cancelledAt,
    String? cancellationReason,
    String? cancelledBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    TourInstance? tourInstance,
    Room? room,
    List<HotelBookingDetail>? details,
    List<HotelBookingMember>? members,
    List<AddonOrder>? addonOrders,
    HotelReview? review,
  });

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $TourInstanceCopyWith<$Res>? get tourInstance;
  @override
  $RoomCopyWith<$Res>? get room;
  @override
  $HotelReviewCopyWith<$Res>? get review;
}

/// @nodoc
class __$$HotelBookingImplCopyWithImpl<$Res>
    extends _$HotelBookingCopyWithImpl<$Res, _$HotelBookingImpl>
    implements _$$HotelBookingImplCopyWith<$Res> {
  __$$HotelBookingImplCopyWithImpl(
    _$HotelBookingImpl _value,
    $Res Function(_$HotelBookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = null,
    Object? tourInstanceId = freezed,
    Object? roomId = freezed,
    Object? checkInDate = null,
    Object? checkOutDate = null,
    Object? nightCount = null,
    Object? guestCount = null,
    Object? totalPrice = null,
    Object? paymentDeadline = freezed,
    Object? specialRequest = freezed,
    Object? lateCheckoutFee = freezed,
    Object? addonTotal = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? status = null,
    Object? actualCheckInAt = freezed,
    Object? actualCheckOutAt = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? user = freezed,
    Object? tourInstance = freezed,
    Object? room = freezed,
    Object? details = freezed,
    Object? members = freezed,
    Object? addonOrders = freezed,
    Object? review = freezed,
  }) {
    return _then(
      _$HotelBookingImpl(
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
        roomId: freezed == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String?,
        checkInDate: null == checkInDate
            ? _value.checkInDate
            : checkInDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        checkOutDate: null == checkOutDate
            ? _value.checkOutDate
            : checkOutDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        nightCount: null == nightCount
            ? _value.nightCount
            : nightCount // ignore: cast_nullable_to_non_nullable
                  as int,
        guestCount: null == guestCount
            ? _value.guestCount
            : guestCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        paymentDeadline: freezed == paymentDeadline
            ? _value.paymentDeadline
            : paymentDeadline // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        specialRequest: freezed == specialRequest
            ? _value.specialRequest
            : specialRequest // ignore: cast_nullable_to_non_nullable
                  as String?,
        lateCheckoutFee: freezed == lateCheckoutFee
            ? _value.lateCheckoutFee
            : lateCheckoutFee // ignore: cast_nullable_to_non_nullable
                  as double?,
        addonTotal: freezed == addonTotal
            ? _value.addonTotal
            : addonTotal // ignore: cast_nullable_to_non_nullable
                  as double?,
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
                  as HotelBookingStatus,
        actualCheckInAt: freezed == actualCheckInAt
            ? _value.actualCheckInAt
            : actualCheckInAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        actualCheckOutAt: freezed == actualCheckOutAt
            ? _value.actualCheckOutAt
            : actualCheckOutAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
        room: freezed == room
            ? _value.room
            : room // ignore: cast_nullable_to_non_nullable
                  as Room?,
        details: freezed == details
            ? _value._details
            : details // ignore: cast_nullable_to_non_nullable
                  as List<HotelBookingDetail>?,
        members: freezed == members
            ? _value._members
            : members // ignore: cast_nullable_to_non_nullable
                  as List<HotelBookingMember>?,
        addonOrders: freezed == addonOrders
            ? _value._addonOrders
            : addonOrders // ignore: cast_nullable_to_non_nullable
                  as List<AddonOrder>?,
        review: freezed == review
            ? _value.review
            : review // ignore: cast_nullable_to_non_nullable
                  as HotelReview?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelBookingImpl implements _HotelBooking {
  const _$HotelBookingImpl({
    this.id,
    required this.userId,
    this.tourInstanceId,
    this.roomId,
    required this.checkInDate,
    required this.checkOutDate,
    required this.nightCount,
    required this.guestCount,
    required this.totalPrice,
    this.paymentDeadline,
    this.specialRequest,
    this.lateCheckoutFee,
    this.addonTotal,
    this.noShowNote,
    this.noShowAt,
    required this.status,
    this.actualCheckInAt,
    this.actualCheckOutAt,
    this.cancelledAt,
    this.cancellationReason,
    this.cancelledBy,
    this.createdAt,
    this.updatedAt,
    this.user,
    this.tourInstance,
    this.room,
    final List<HotelBookingDetail>? details,
    final List<HotelBookingMember>? members,
    final List<AddonOrder>? addonOrders,
    this.review,
  }) : _details = details,
       _members = members,
       _addonOrders = addonOrders;

  factory _$HotelBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelBookingImplFromJson(json);

  @override
  final String? id;
  @override
  final String userId;
  @override
  final String? tourInstanceId;
  @override
  final String? roomId;
  @override
  final DateTime checkInDate;
  @override
  final DateTime checkOutDate;
  @override
  final int nightCount;
  @override
  final int guestCount;
  @override
  final double totalPrice;
  @override
  final DateTime? paymentDeadline;
  @override
  final String? specialRequest;
  @override
  final double? lateCheckoutFee;
  @override
  final double? addonTotal;
  @override
  final String? noShowNote;
  @override
  final DateTime? noShowAt;
  @override
  final HotelBookingStatus status;
  @override
  final DateTime? actualCheckInAt;
  @override
  final DateTime? actualCheckOutAt;
  @override
  final DateTime? cancelledAt;
  @override
  final String? cancellationReason;
  @override
  final String? cancelledBy;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final User? user;
  @override
  final TourInstance? tourInstance;
  @override
  final Room? room;
  final List<HotelBookingDetail>? _details;
  @override
  List<HotelBookingDetail>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HotelBookingMember>? _members;
  @override
  List<HotelBookingMember>? get members {
    final value = _members;
    if (value == null) return null;
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AddonOrder>? _addonOrders;
  @override
  List<AddonOrder>? get addonOrders {
    final value = _addonOrders;
    if (value == null) return null;
    if (_addonOrders is EqualUnmodifiableListView) return _addonOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HotelReview? review;

  @override
  String toString() {
    return 'HotelBooking(id: $id, userId: $userId, tourInstanceId: $tourInstanceId, roomId: $roomId, checkInDate: $checkInDate, checkOutDate: $checkOutDate, nightCount: $nightCount, guestCount: $guestCount, totalPrice: $totalPrice, paymentDeadline: $paymentDeadline, specialRequest: $specialRequest, lateCheckoutFee: $lateCheckoutFee, addonTotal: $addonTotal, noShowNote: $noShowNote, noShowAt: $noShowAt, status: $status, actualCheckInAt: $actualCheckInAt, actualCheckOutAt: $actualCheckOutAt, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, createdAt: $createdAt, updatedAt: $updatedAt, user: $user, tourInstance: $tourInstance, room: $room, details: $details, members: $members, addonOrders: $addonOrders, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tourInstanceId, tourInstanceId) ||
                other.tourInstanceId == tourInstanceId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.nightCount, nightCount) ||
                other.nightCount == nightCount) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paymentDeadline, paymentDeadline) ||
                other.paymentDeadline == paymentDeadline) &&
            (identical(other.specialRequest, specialRequest) ||
                other.specialRequest == specialRequest) &&
            (identical(other.lateCheckoutFee, lateCheckoutFee) ||
                other.lateCheckoutFee == lateCheckoutFee) &&
            (identical(other.addonTotal, addonTotal) ||
                other.addonTotal == addonTotal) &&
            (identical(other.noShowNote, noShowNote) ||
                other.noShowNote == noShowNote) &&
            (identical(other.noShowAt, noShowAt) ||
                other.noShowAt == noShowAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.actualCheckInAt, actualCheckInAt) ||
                other.actualCheckInAt == actualCheckInAt) &&
            (identical(other.actualCheckOutAt, actualCheckOutAt) ||
                other.actualCheckOutAt == actualCheckOutAt) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledBy, cancelledBy) ||
                other.cancelledBy == cancelledBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tourInstance, tourInstance) ||
                other.tourInstance == tourInstance) &&
            (identical(other.room, room) || other.room == room) &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(
              other._addonOrders,
              _addonOrders,
            ) &&
            (identical(other.review, review) || other.review == review));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    tourInstanceId,
    roomId,
    checkInDate,
    checkOutDate,
    nightCount,
    guestCount,
    totalPrice,
    paymentDeadline,
    specialRequest,
    lateCheckoutFee,
    addonTotal,
    noShowNote,
    noShowAt,
    status,
    actualCheckInAt,
    actualCheckOutAt,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    createdAt,
    updatedAt,
    user,
    tourInstance,
    room,
    const DeepCollectionEquality().hash(_details),
    const DeepCollectionEquality().hash(_members),
    const DeepCollectionEquality().hash(_addonOrders),
    review,
  ]);

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelBookingImplCopyWith<_$HotelBookingImpl> get copyWith =>
      __$$HotelBookingImplCopyWithImpl<_$HotelBookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelBookingImplToJson(this);
  }
}

abstract class _HotelBooking implements HotelBooking {
  const factory _HotelBooking({
    final String? id,
    required final String userId,
    final String? tourInstanceId,
    final String? roomId,
    required final DateTime checkInDate,
    required final DateTime checkOutDate,
    required final int nightCount,
    required final int guestCount,
    required final double totalPrice,
    final DateTime? paymentDeadline,
    final String? specialRequest,
    final double? lateCheckoutFee,
    final double? addonTotal,
    final String? noShowNote,
    final DateTime? noShowAt,
    required final HotelBookingStatus status,
    final DateTime? actualCheckInAt,
    final DateTime? actualCheckOutAt,
    final DateTime? cancelledAt,
    final String? cancellationReason,
    final String? cancelledBy,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final User? user,
    final TourInstance? tourInstance,
    final Room? room,
    final List<HotelBookingDetail>? details,
    final List<HotelBookingMember>? members,
    final List<AddonOrder>? addonOrders,
    final HotelReview? review,
  }) = _$HotelBookingImpl;

  factory _HotelBooking.fromJson(Map<String, dynamic> json) =
      _$HotelBookingImpl.fromJson;

  @override
  String? get id;
  @override
  String get userId;
  @override
  String? get tourInstanceId;
  @override
  String? get roomId;
  @override
  DateTime get checkInDate;
  @override
  DateTime get checkOutDate;
  @override
  int get nightCount;
  @override
  int get guestCount;
  @override
  double get totalPrice;
  @override
  DateTime? get paymentDeadline;
  @override
  String? get specialRequest;
  @override
  double? get lateCheckoutFee;
  @override
  double? get addonTotal;
  @override
  String? get noShowNote;
  @override
  DateTime? get noShowAt;
  @override
  HotelBookingStatus get status;
  @override
  DateTime? get actualCheckInAt;
  @override
  DateTime? get actualCheckOutAt;
  @override
  DateTime? get cancelledAt;
  @override
  String? get cancellationReason;
  @override
  String? get cancelledBy;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  User? get user;
  @override
  TourInstance? get tourInstance;
  @override
  Room? get room;
  @override
  List<HotelBookingDetail>? get details;
  @override
  List<HotelBookingMember>? get members;
  @override
  List<AddonOrder>? get addonOrders;
  @override
  HotelReview? get review;

  /// Create a copy of HotelBooking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelBookingImplCopyWith<_$HotelBookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
