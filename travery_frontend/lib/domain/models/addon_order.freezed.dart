// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'addon_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AddonOrder _$AddonOrderFromJson(Map<String, dynamic> json) {
  return _AddonOrder.fromJson(json);
}

/// @nodoc
mixin _$AddonOrder {
  String? get id => throw _privateConstructorUsedError;
  String get hotelBookingId => throw _privateConstructorUsedError;
  String get hotelServiceId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  AddonOrderStatus get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  HotelBooking? get hotelBooking => throw _privateConstructorUsedError;
  HotelService? get hotelService => throw _privateConstructorUsedError;

  /// Serializes this AddonOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddonOrderCopyWith<AddonOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonOrderCopyWith<$Res> {
  factory $AddonOrderCopyWith(
    AddonOrder value,
    $Res Function(AddonOrder) then,
  ) = _$AddonOrderCopyWithImpl<$Res, AddonOrder>;
  @useResult
  $Res call({
    String? id,
    String hotelBookingId,
    String hotelServiceId,
    int quantity,
    double totalPrice,
    AddonOrderStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    HotelBooking? hotelBooking,
    HotelService? hotelService,
  });

  $HotelBookingCopyWith<$Res>? get hotelBooking;
  $HotelServiceCopyWith<$Res>? get hotelService;
}

/// @nodoc
class _$AddonOrderCopyWithImpl<$Res, $Val extends AddonOrder>
    implements $AddonOrderCopyWith<$Res> {
  _$AddonOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? hotelServiceId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotelBooking = freezed,
    Object? hotelService = freezed,
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
            hotelServiceId: null == hotelServiceId
                ? _value.hotelServiceId
                : hotelServiceId // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as AddonOrderStatus,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            hotelBooking: freezed == hotelBooking
                ? _value.hotelBooking
                : hotelBooking // ignore: cast_nullable_to_non_nullable
                      as HotelBooking?,
            hotelService: freezed == hotelService
                ? _value.hotelService
                : hotelService // ignore: cast_nullable_to_non_nullable
                      as HotelService?,
          )
          as $Val,
    );
  }

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelBookingCopyWith<$Res>? get hotelBooking {
    if (_value.hotelBooking == null) {
      return null;
    }

    return $HotelBookingCopyWith<$Res>(_value.hotelBooking!, (value) {
      return _then(_value.copyWith(hotelBooking: value) as $Val);
    });
  }

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelServiceCopyWith<$Res>? get hotelService {
    if (_value.hotelService == null) {
      return null;
    }

    return $HotelServiceCopyWith<$Res>(_value.hotelService!, (value) {
      return _then(_value.copyWith(hotelService: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddonOrderImplCopyWith<$Res>
    implements $AddonOrderCopyWith<$Res> {
  factory _$$AddonOrderImplCopyWith(
    _$AddonOrderImpl value,
    $Res Function(_$AddonOrderImpl) then,
  ) = __$$AddonOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String hotelBookingId,
    String hotelServiceId,
    int quantity,
    double totalPrice,
    AddonOrderStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    HotelBooking? hotelBooking,
    HotelService? hotelService,
  });

  @override
  $HotelBookingCopyWith<$Res>? get hotelBooking;
  @override
  $HotelServiceCopyWith<$Res>? get hotelService;
}

/// @nodoc
class __$$AddonOrderImplCopyWithImpl<$Res>
    extends _$AddonOrderCopyWithImpl<$Res, _$AddonOrderImpl>
    implements _$$AddonOrderImplCopyWith<$Res> {
  __$$AddonOrderImplCopyWithImpl(
    _$AddonOrderImpl _value,
    $Res Function(_$AddonOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? hotelServiceId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotelBooking = freezed,
    Object? hotelService = freezed,
  }) {
    return _then(
      _$AddonOrderImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: null == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        hotelServiceId: null == hotelServiceId
            ? _value.hotelServiceId
            : hotelServiceId // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as AddonOrderStatus,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        hotelBooking: freezed == hotelBooking
            ? _value.hotelBooking
            : hotelBooking // ignore: cast_nullable_to_non_nullable
                  as HotelBooking?,
        hotelService: freezed == hotelService
            ? _value.hotelService
            : hotelService // ignore: cast_nullable_to_non_nullable
                  as HotelService?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonOrderImpl implements _AddonOrder {
  const _$AddonOrderImpl({
    this.id,
    required this.hotelBookingId,
    required this.hotelServiceId,
    required this.quantity,
    required this.totalPrice,
    required this.status,
    this.createdAt,
    this.updatedAt,
    this.hotelBooking,
    this.hotelService,
  });

  factory _$AddonOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonOrderImplFromJson(json);

  @override
  final String? id;
  @override
  final String hotelBookingId;
  @override
  final String hotelServiceId;
  @override
  final int quantity;
  @override
  final double totalPrice;
  @override
  final AddonOrderStatus status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final HotelBooking? hotelBooking;
  @override
  final HotelService? hotelService;

  @override
  String toString() {
    return 'AddonOrder(id: $id, hotelBookingId: $hotelBookingId, hotelServiceId: $hotelServiceId, quantity: $quantity, totalPrice: $totalPrice, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, hotelBooking: $hotelBooking, hotelService: $hotelService)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.hotelServiceId, hotelServiceId) ||
                other.hotelServiceId == hotelServiceId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hotelBooking, hotelBooking) ||
                other.hotelBooking == hotelBooking) &&
            (identical(other.hotelService, hotelService) ||
                other.hotelService == hotelService));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hotelBookingId,
    hotelServiceId,
    quantity,
    totalPrice,
    status,
    createdAt,
    updatedAt,
    hotelBooking,
    hotelService,
  );

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddonOrderImplCopyWith<_$AddonOrderImpl> get copyWith =>
      __$$AddonOrderImplCopyWithImpl<_$AddonOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddonOrderImplToJson(this);
  }
}

abstract class _AddonOrder implements AddonOrder {
  const factory _AddonOrder({
    final String? id,
    required final String hotelBookingId,
    required final String hotelServiceId,
    required final int quantity,
    required final double totalPrice,
    required final AddonOrderStatus status,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final HotelBooking? hotelBooking,
    final HotelService? hotelService,
  }) = _$AddonOrderImpl;

  factory _AddonOrder.fromJson(Map<String, dynamic> json) =
      _$AddonOrderImpl.fromJson;

  @override
  String? get id;
  @override
  String get hotelBookingId;
  @override
  String get hotelServiceId;
  @override
  int get quantity;
  @override
  double get totalPrice;
  @override
  AddonOrderStatus get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  HotelBooking? get hotelBooking;
  @override
  HotelService? get hotelService;

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonOrderImplCopyWith<_$AddonOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
