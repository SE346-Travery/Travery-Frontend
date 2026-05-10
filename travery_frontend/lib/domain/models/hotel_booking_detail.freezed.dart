// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_booking_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HotelBookingDetail _$HotelBookingDetailFromJson(Map<String, dynamic> json) {
  return _HotelBookingDetail.fromJson(json);
}

/// @nodoc
mixin _$HotelBookingDetail {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_booking_id')
  String get hotelBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_type_id')
  String get roomTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_at_booking')
  double get priceAtBooking => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  DateTime get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_date')
  DateTime get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this HotelBookingDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelBookingDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelBookingDetailCopyWith<HotelBookingDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelBookingDetailCopyWith<$Res> {
  factory $HotelBookingDetailCopyWith(
    HotelBookingDetail value,
    $Res Function(HotelBookingDetail) then,
  ) = _$HotelBookingDetailCopyWithImpl<$Res, HotelBookingDetail>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_id') String hotelBookingId,
    @JsonKey(name: 'room_type_id') String roomTypeId,
    @JsonKey(name: 'quantity') int quantity,
    @JsonKey(name: 'price_at_booking') double priceAtBooking,
    @JsonKey(name: 'start_date') DateTime startDate,
    @JsonKey(name: 'end_date') DateTime endDate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$HotelBookingDetailCopyWithImpl<$Res, $Val extends HotelBookingDetail>
    implements $HotelBookingDetailCopyWith<$Res> {
  _$HotelBookingDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelBookingDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? roomTypeId = null,
    Object? quantity = null,
    Object? priceAtBooking = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: null == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            roomTypeId: null == roomTypeId
                ? _value.roomTypeId
                : roomTypeId // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            priceAtBooking: null == priceAtBooking
                ? _value.priceAtBooking
                : priceAtBooking // ignore: cast_nullable_to_non_nullable
                      as double,
            startDate: null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endDate: null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
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
abstract class _$$HotelBookingDetailImplCopyWith<$Res>
    implements $HotelBookingDetailCopyWith<$Res> {
  factory _$$HotelBookingDetailImplCopyWith(
    _$HotelBookingDetailImpl value,
    $Res Function(_$HotelBookingDetailImpl) then,
  ) = __$$HotelBookingDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_id') String hotelBookingId,
    @JsonKey(name: 'room_type_id') String roomTypeId,
    @JsonKey(name: 'quantity') int quantity,
    @JsonKey(name: 'price_at_booking') double priceAtBooking,
    @JsonKey(name: 'start_date') DateTime startDate,
    @JsonKey(name: 'end_date') DateTime endDate,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$HotelBookingDetailImplCopyWithImpl<$Res>
    extends _$HotelBookingDetailCopyWithImpl<$Res, _$HotelBookingDetailImpl>
    implements _$$HotelBookingDetailImplCopyWith<$Res> {
  __$$HotelBookingDetailImplCopyWithImpl(
    _$HotelBookingDetailImpl _value,
    $Res Function(_$HotelBookingDetailImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotelBookingDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? roomTypeId = null,
    Object? quantity = null,
    Object? priceAtBooking = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$HotelBookingDetailImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: null == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        roomTypeId: null == roomTypeId
            ? _value.roomTypeId
            : roomTypeId // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        priceAtBooking: null == priceAtBooking
            ? _value.priceAtBooking
            : priceAtBooking // ignore: cast_nullable_to_non_nullable
                  as double,
        startDate: null == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endDate: null == endDate
            ? _value.endDate
            : endDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
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
class _$HotelBookingDetailImpl implements _HotelBookingDetail {
  const _$HotelBookingDetailImpl({
    this.id,
    @JsonKey(name: 'hotel_booking_id') required this.hotelBookingId,
    @JsonKey(name: 'room_type_id') required this.roomTypeId,
    @JsonKey(name: 'quantity') required this.quantity,
    @JsonKey(name: 'price_at_booking') required this.priceAtBooking,
    @JsonKey(name: 'start_date') required this.startDate,
    @JsonKey(name: 'end_date') required this.endDate,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$HotelBookingDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelBookingDetailImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  final String hotelBookingId;
  @override
  @JsonKey(name: 'room_type_id')
  final String roomTypeId;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'price_at_booking')
  final double priceAtBooking;
  @override
  @JsonKey(name: 'start_date')
  final DateTime startDate;
  @override
  @JsonKey(name: 'end_date')
  final DateTime endDate;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'HotelBookingDetail(id: $id, hotelBookingId: $hotelBookingId, roomTypeId: $roomTypeId, quantity: $quantity, priceAtBooking: $priceAtBooking, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelBookingDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.roomTypeId, roomTypeId) ||
                other.roomTypeId == roomTypeId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.priceAtBooking, priceAtBooking) ||
                other.priceAtBooking == priceAtBooking) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
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
    hotelBookingId,
    roomTypeId,
    quantity,
    priceAtBooking,
    startDate,
    endDate,
    createdAt,
    updatedAt,
  );

  /// Create a copy of HotelBookingDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelBookingDetailImplCopyWith<_$HotelBookingDetailImpl> get copyWith =>
      __$$HotelBookingDetailImplCopyWithImpl<_$HotelBookingDetailImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelBookingDetailImplToJson(this);
  }
}

abstract class _HotelBookingDetail implements HotelBookingDetail {
  const factory _HotelBookingDetail({
    final String? id,
    @JsonKey(name: 'hotel_booking_id') required final String hotelBookingId,
    @JsonKey(name: 'room_type_id') required final String roomTypeId,
    @JsonKey(name: 'quantity') required final int quantity,
    @JsonKey(name: 'price_at_booking') required final double priceAtBooking,
    @JsonKey(name: 'start_date') required final DateTime startDate,
    @JsonKey(name: 'end_date') required final DateTime endDate,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$HotelBookingDetailImpl;

  factory _HotelBookingDetail.fromJson(Map<String, dynamic> json) =
      _$HotelBookingDetailImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  String get hotelBookingId;
  @override
  @JsonKey(name: 'room_type_id')
  String get roomTypeId;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'price_at_booking')
  double get priceAtBooking;
  @override
  @JsonKey(name: 'start_date')
  DateTime get startDate;
  @override
  @JsonKey(name: 'end_date')
  DateTime get endDate;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of HotelBookingDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelBookingDetailImplCopyWith<_$HotelBookingDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
