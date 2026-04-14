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
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  String get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'handled_by')
  String? get handledBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'representative_name')
  String get representativeName => throw _privateConstructorUsedError;
  @JsonKey(name: 'representative_phone')
  String get representativePhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_in_date')
  DateTime get checkInDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'check_out_date')
  DateTime get checkOutDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'night_count')
  int get nightCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'guest_count')
  int get guestCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_price')
  double get roomPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'late_checkout_fee')
  double? get lateCheckoutFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'addon_total')
  double? get addonTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price')
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_amount')
  double? get refundAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_request')
  String? get specialRequest => throw _privateConstructorUsedError;
  HotelBookingStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_check_in_at')
  DateTime? get actualCheckInAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'actual_check_out_at')
  DateTime? get actualCheckOutAt => throw _privateConstructorUsedError;
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

  /// RELATIONS
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
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'room_id') String roomId,
    @JsonKey(name: 'handled_by') String? handledBy,
    @JsonKey(name: 'representative_name') String representativeName,
    @JsonKey(name: 'representative_phone') String representativePhone,
    @JsonKey(name: 'check_in_date') DateTime checkInDate,
    @JsonKey(name: 'check_out_date') DateTime checkOutDate,
    @JsonKey(name: 'night_count') int nightCount,
    @JsonKey(name: 'guest_count') int guestCount,
    @JsonKey(name: 'room_price') double roomPrice,
    @JsonKey(name: 'late_checkout_fee') double? lateCheckoutFee,
    @JsonKey(name: 'addon_total') double? addonTotal,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'refund_amount') double? refundAmount,
    @JsonKey(name: 'special_request') String? specialRequest,
    HotelBookingStatus status,
    @JsonKey(name: 'actual_check_in_at') DateTime? actualCheckInAt,
    @JsonKey(name: 'actual_check_out_at') DateTime? actualCheckOutAt,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<HotelBookingMember>? members,
    List<AddonOrder>? addonOrders,
    HotelReview? review,
  });

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
    Object? roomId = null,
    Object? handledBy = freezed,
    Object? representativeName = null,
    Object? representativePhone = null,
    Object? checkInDate = null,
    Object? checkOutDate = null,
    Object? nightCount = null,
    Object? guestCount = null,
    Object? roomPrice = null,
    Object? lateCheckoutFee = freezed,
    Object? addonTotal = freezed,
    Object? totalPrice = null,
    Object? refundAmount = freezed,
    Object? specialRequest = freezed,
    Object? status = null,
    Object? actualCheckInAt = freezed,
    Object? actualCheckOutAt = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            roomId: null == roomId
                ? _value.roomId
                : roomId // ignore: cast_nullable_to_non_nullable
                      as String,
            handledBy: freezed == handledBy
                ? _value.handledBy
                : handledBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            representativeName: null == representativeName
                ? _value.representativeName
                : representativeName // ignore: cast_nullable_to_non_nullable
                      as String,
            representativePhone: null == representativePhone
                ? _value.representativePhone
                : representativePhone // ignore: cast_nullable_to_non_nullable
                      as String,
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
            roomPrice: null == roomPrice
                ? _value.roomPrice
                : roomPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            lateCheckoutFee: freezed == lateCheckoutFee
                ? _value.lateCheckoutFee
                : lateCheckoutFee // ignore: cast_nullable_to_non_nullable
                      as double?,
            addonTotal: freezed == addonTotal
                ? _value.addonTotal
                : addonTotal // ignore: cast_nullable_to_non_nullable
                      as double?,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            refundAmount: freezed == refundAmount
                ? _value.refundAmount
                : refundAmount // ignore: cast_nullable_to_non_nullable
                      as double?,
            specialRequest: freezed == specialRequest
                ? _value.specialRequest
                : specialRequest // ignore: cast_nullable_to_non_nullable
                      as String?,
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
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'room_id') String roomId,
    @JsonKey(name: 'handled_by') String? handledBy,
    @JsonKey(name: 'representative_name') String representativeName,
    @JsonKey(name: 'representative_phone') String representativePhone,
    @JsonKey(name: 'check_in_date') DateTime checkInDate,
    @JsonKey(name: 'check_out_date') DateTime checkOutDate,
    @JsonKey(name: 'night_count') int nightCount,
    @JsonKey(name: 'guest_count') int guestCount,
    @JsonKey(name: 'room_price') double roomPrice,
    @JsonKey(name: 'late_checkout_fee') double? lateCheckoutFee,
    @JsonKey(name: 'addon_total') double? addonTotal,
    @JsonKey(name: 'total_price') double totalPrice,
    @JsonKey(name: 'refund_amount') double? refundAmount,
    @JsonKey(name: 'special_request') String? specialRequest,
    HotelBookingStatus status,
    @JsonKey(name: 'actual_check_in_at') DateTime? actualCheckInAt,
    @JsonKey(name: 'actual_check_out_at') DateTime? actualCheckOutAt,
    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') String? cancellationReason,
    @JsonKey(name: 'cancelled_by') String? cancelledBy,
    @JsonKey(name: 'no_show_note') String? noShowNote,
    @JsonKey(name: 'no_show_at') DateTime? noShowAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    List<HotelBookingMember>? members,
    List<AddonOrder>? addonOrders,
    HotelReview? review,
  });

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
    Object? roomId = null,
    Object? handledBy = freezed,
    Object? representativeName = null,
    Object? representativePhone = null,
    Object? checkInDate = null,
    Object? checkOutDate = null,
    Object? nightCount = null,
    Object? guestCount = null,
    Object? roomPrice = null,
    Object? lateCheckoutFee = freezed,
    Object? addonTotal = freezed,
    Object? totalPrice = null,
    Object? refundAmount = freezed,
    Object? specialRequest = freezed,
    Object? status = null,
    Object? actualCheckInAt = freezed,
    Object? actualCheckOutAt = freezed,
    Object? cancelledAt = freezed,
    Object? cancellationReason = freezed,
    Object? cancelledBy = freezed,
    Object? noShowNote = freezed,
    Object? noShowAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
        roomId: null == roomId
            ? _value.roomId
            : roomId // ignore: cast_nullable_to_non_nullable
                  as String,
        handledBy: freezed == handledBy
            ? _value.handledBy
            : handledBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        representativeName: null == representativeName
            ? _value.representativeName
            : representativeName // ignore: cast_nullable_to_non_nullable
                  as String,
        representativePhone: null == representativePhone
            ? _value.representativePhone
            : representativePhone // ignore: cast_nullable_to_non_nullable
                  as String,
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
        roomPrice: null == roomPrice
            ? _value.roomPrice
            : roomPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        lateCheckoutFee: freezed == lateCheckoutFee
            ? _value.lateCheckoutFee
            : lateCheckoutFee // ignore: cast_nullable_to_non_nullable
                  as double?,
        addonTotal: freezed == addonTotal
            ? _value.addonTotal
            : addonTotal // ignore: cast_nullable_to_non_nullable
                  as double?,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        refundAmount: freezed == refundAmount
            ? _value.refundAmount
            : refundAmount // ignore: cast_nullable_to_non_nullable
                  as double?,
        specialRequest: freezed == specialRequest
            ? _value.specialRequest
            : specialRequest // ignore: cast_nullable_to_non_nullable
                  as String?,
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
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'room_id') required this.roomId,
    @JsonKey(name: 'handled_by') this.handledBy,
    @JsonKey(name: 'representative_name') required this.representativeName,
    @JsonKey(name: 'representative_phone') required this.representativePhone,
    @JsonKey(name: 'check_in_date') required this.checkInDate,
    @JsonKey(name: 'check_out_date') required this.checkOutDate,
    @JsonKey(name: 'night_count') required this.nightCount,
    @JsonKey(name: 'guest_count') required this.guestCount,
    @JsonKey(name: 'room_price') required this.roomPrice,
    @JsonKey(name: 'late_checkout_fee') this.lateCheckoutFee,
    @JsonKey(name: 'addon_total') this.addonTotal,
    @JsonKey(name: 'total_price') required this.totalPrice,
    @JsonKey(name: 'refund_amount') this.refundAmount,
    @JsonKey(name: 'special_request') this.specialRequest,
    required this.status,
    @JsonKey(name: 'actual_check_in_at') this.actualCheckInAt,
    @JsonKey(name: 'actual_check_out_at') this.actualCheckOutAt,
    @JsonKey(name: 'cancelled_at') this.cancelledAt,
    @JsonKey(name: 'cancellation_reason') this.cancellationReason,
    @JsonKey(name: 'cancelled_by') this.cancelledBy,
    @JsonKey(name: 'no_show_note') this.noShowNote,
    @JsonKey(name: 'no_show_at') this.noShowAt,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    final List<HotelBookingMember>? members,
    final List<AddonOrder>? addonOrders,
    this.review,
  }) : _members = members,
       _addonOrders = addonOrders;

  factory _$HotelBookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelBookingImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'room_id')
  final String roomId;
  @override
  @JsonKey(name: 'handled_by')
  final String? handledBy;
  @override
  @JsonKey(name: 'representative_name')
  final String representativeName;
  @override
  @JsonKey(name: 'representative_phone')
  final String representativePhone;
  @override
  @JsonKey(name: 'check_in_date')
  final DateTime checkInDate;
  @override
  @JsonKey(name: 'check_out_date')
  final DateTime checkOutDate;
  @override
  @JsonKey(name: 'night_count')
  final int nightCount;
  @override
  @JsonKey(name: 'guest_count')
  final int guestCount;
  @override
  @JsonKey(name: 'room_price')
  final double roomPrice;
  @override
  @JsonKey(name: 'late_checkout_fee')
  final double? lateCheckoutFee;
  @override
  @JsonKey(name: 'addon_total')
  final double? addonTotal;
  @override
  @JsonKey(name: 'total_price')
  final double totalPrice;
  @override
  @JsonKey(name: 'refund_amount')
  final double? refundAmount;
  @override
  @JsonKey(name: 'special_request')
  final String? specialRequest;
  @override
  final HotelBookingStatus status;
  @override
  @JsonKey(name: 'actual_check_in_at')
  final DateTime? actualCheckInAt;
  @override
  @JsonKey(name: 'actual_check_out_at')
  final DateTime? actualCheckOutAt;
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

  /// RELATIONS
  final List<HotelBookingMember>? _members;

  /// RELATIONS
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
    return 'HotelBooking(id: $id, userId: $userId, roomId: $roomId, handledBy: $handledBy, representativeName: $representativeName, representativePhone: $representativePhone, checkInDate: $checkInDate, checkOutDate: $checkOutDate, nightCount: $nightCount, guestCount: $guestCount, roomPrice: $roomPrice, lateCheckoutFee: $lateCheckoutFee, addonTotal: $addonTotal, totalPrice: $totalPrice, refundAmount: $refundAmount, specialRequest: $specialRequest, status: $status, actualCheckInAt: $actualCheckInAt, actualCheckOutAt: $actualCheckOutAt, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, noShowNote: $noShowNote, noShowAt: $noShowAt, createdAt: $createdAt, updatedAt: $updatedAt, members: $members, addonOrders: $addonOrders, review: $review)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelBookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.handledBy, handledBy) ||
                other.handledBy == handledBy) &&
            (identical(other.representativeName, representativeName) ||
                other.representativeName == representativeName) &&
            (identical(other.representativePhone, representativePhone) ||
                other.representativePhone == representativePhone) &&
            (identical(other.checkInDate, checkInDate) ||
                other.checkInDate == checkInDate) &&
            (identical(other.checkOutDate, checkOutDate) ||
                other.checkOutDate == checkOutDate) &&
            (identical(other.nightCount, nightCount) ||
                other.nightCount == nightCount) &&
            (identical(other.guestCount, guestCount) ||
                other.guestCount == guestCount) &&
            (identical(other.roomPrice, roomPrice) ||
                other.roomPrice == roomPrice) &&
            (identical(other.lateCheckoutFee, lateCheckoutFee) ||
                other.lateCheckoutFee == lateCheckoutFee) &&
            (identical(other.addonTotal, addonTotal) ||
                other.addonTotal == addonTotal) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.refundAmount, refundAmount) ||
                other.refundAmount == refundAmount) &&
            (identical(other.specialRequest, specialRequest) ||
                other.specialRequest == specialRequest) &&
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
            (identical(other.noShowNote, noShowNote) ||
                other.noShowNote == noShowNote) &&
            (identical(other.noShowAt, noShowAt) ||
                other.noShowAt == noShowAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
    roomId,
    handledBy,
    representativeName,
    representativePhone,
    checkInDate,
    checkOutDate,
    nightCount,
    guestCount,
    roomPrice,
    lateCheckoutFee,
    addonTotal,
    totalPrice,
    refundAmount,
    specialRequest,
    status,
    actualCheckInAt,
    actualCheckOutAt,
    cancelledAt,
    cancellationReason,
    cancelledBy,
    noShowNote,
    noShowAt,
    createdAt,
    updatedAt,
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
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'room_id') required final String roomId,
    @JsonKey(name: 'handled_by') final String? handledBy,
    @JsonKey(name: 'representative_name')
    required final String representativeName,
    @JsonKey(name: 'representative_phone')
    required final String representativePhone,
    @JsonKey(name: 'check_in_date') required final DateTime checkInDate,
    @JsonKey(name: 'check_out_date') required final DateTime checkOutDate,
    @JsonKey(name: 'night_count') required final int nightCount,
    @JsonKey(name: 'guest_count') required final int guestCount,
    @JsonKey(name: 'room_price') required final double roomPrice,
    @JsonKey(name: 'late_checkout_fee') final double? lateCheckoutFee,
    @JsonKey(name: 'addon_total') final double? addonTotal,
    @JsonKey(name: 'total_price') required final double totalPrice,
    @JsonKey(name: 'refund_amount') final double? refundAmount,
    @JsonKey(name: 'special_request') final String? specialRequest,
    required final HotelBookingStatus status,
    @JsonKey(name: 'actual_check_in_at') final DateTime? actualCheckInAt,
    @JsonKey(name: 'actual_check_out_at') final DateTime? actualCheckOutAt,
    @JsonKey(name: 'cancelled_at') final DateTime? cancelledAt,
    @JsonKey(name: 'cancellation_reason') final String? cancellationReason,
    @JsonKey(name: 'cancelled_by') final String? cancelledBy,
    @JsonKey(name: 'no_show_note') final String? noShowNote,
    @JsonKey(name: 'no_show_at') final DateTime? noShowAt,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final List<HotelBookingMember>? members,
    final List<AddonOrder>? addonOrders,
    final HotelReview? review,
  }) = _$HotelBookingImpl;

  factory _HotelBooking.fromJson(Map<String, dynamic> json) =
      _$HotelBookingImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'room_id')
  String get roomId;
  @override
  @JsonKey(name: 'handled_by')
  String? get handledBy;
  @override
  @JsonKey(name: 'representative_name')
  String get representativeName;
  @override
  @JsonKey(name: 'representative_phone')
  String get representativePhone;
  @override
  @JsonKey(name: 'check_in_date')
  DateTime get checkInDate;
  @override
  @JsonKey(name: 'check_out_date')
  DateTime get checkOutDate;
  @override
  @JsonKey(name: 'night_count')
  int get nightCount;
  @override
  @JsonKey(name: 'guest_count')
  int get guestCount;
  @override
  @JsonKey(name: 'room_price')
  double get roomPrice;
  @override
  @JsonKey(name: 'late_checkout_fee')
  double? get lateCheckoutFee;
  @override
  @JsonKey(name: 'addon_total')
  double? get addonTotal;
  @override
  @JsonKey(name: 'total_price')
  double get totalPrice;
  @override
  @JsonKey(name: 'refund_amount')
  double? get refundAmount;
  @override
  @JsonKey(name: 'special_request')
  String? get specialRequest;
  @override
  HotelBookingStatus get status;
  @override
  @JsonKey(name: 'actual_check_in_at')
  DateTime? get actualCheckInAt;
  @override
  @JsonKey(name: 'actual_check_out_at')
  DateTime? get actualCheckOutAt;
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

  /// RELATIONS
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
