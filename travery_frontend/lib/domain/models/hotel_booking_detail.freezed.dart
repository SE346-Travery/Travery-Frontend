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
  String get hotelBookingId => throw _privateConstructorUsedError;
  String get roomTypeId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get priceAtBooking => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
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
    String hotelBookingId,
    String roomTypeId,
    int quantity,
    double priceAtBooking,
    DateTime startDate,
    DateTime endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    String hotelBookingId,
    String roomTypeId,
    int quantity,
    double priceAtBooking,
    DateTime startDate,
    DateTime endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    required this.hotelBookingId,
    required this.roomTypeId,
    required this.quantity,
    required this.priceAtBooking,
    required this.startDate,
    required this.endDate,
    this.createdAt,
    this.updatedAt,
  });

  factory _$HotelBookingDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelBookingDetailImplFromJson(json);

  @override
  final String? id;
  @override
  final String hotelBookingId;
  @override
  final String roomTypeId;
  @override
  final int quantity;
  @override
  final double priceAtBooking;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final DateTime? createdAt;
  @override
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
    required final String hotelBookingId,
    required final String roomTypeId,
    required final int quantity,
    required final double priceAtBooking,
    required final DateTime startDate,
    required final DateTime endDate,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$HotelBookingDetailImpl;

  factory _HotelBookingDetail.fromJson(Map<String, dynamic> json) =
      _$HotelBookingDetailImpl.fromJson;

  @override
  String? get id;
  @override
  String get hotelBookingId;
  @override
  String get roomTypeId;
  @override
  int get quantity;
  @override
  double get priceAtBooking;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of HotelBookingDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelBookingDetailImplCopyWith<_$HotelBookingDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
