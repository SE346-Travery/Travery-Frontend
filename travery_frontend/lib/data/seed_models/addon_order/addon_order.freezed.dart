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
  @JsonKey(name: 'hotel_booking_id')
  String? get hotelBookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_booking_id')
  String? get tourBookingId => throw _privateConstructorUsedError;
  AddonServiceType get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'meal_service_id')
  String? get mealServiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'spa_service_id')
  String? get spaServiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'laundry_service_id')
  String? get laundryServiceId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'laundry_unit_price')
  double? get laundryUnitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'meal_unit_price')
  double? get mealUnitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'spa_unit_price')
  double? get spaUnitPrice => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'special_notes')
  String? get specialNotes => throw _privateConstructorUsedError;
  AddonOrderStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,
    @JsonKey(name: 'tour_booking_id') String? tourBookingId,
    AddonServiceType serviceType,
    @JsonKey(name: 'meal_service_id') String? mealServiceId,
    @JsonKey(name: 'spa_service_id') String? spaServiceId,
    @JsonKey(name: 'laundry_service_id') String? laundryServiceId,
    int quantity,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'laundry_unit_price') double? laundryUnitPrice,
    @JsonKey(name: 'meal_unit_price') double? mealUnitPrice,
    @JsonKey(name: 'spa_unit_price') double? spaUnitPrice,
    double totalPrice,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
    @JsonKey(name: 'special_notes') String? specialNotes,
    AddonOrderStatus status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? hotelBookingId = freezed,
    Object? tourBookingId = freezed,
    Object? serviceType = null,
    Object? mealServiceId = freezed,
    Object? spaServiceId = freezed,
    Object? laundryServiceId = freezed,
    Object? quantity = null,
    Object? weightKg = freezed,
    Object? laundryUnitPrice = freezed,
    Object? mealUnitPrice = freezed,
    Object? spaUnitPrice = freezed,
    Object? totalPrice = null,
    Object? scheduledAt = freezed,
    Object? specialNotes = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: freezed == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            tourBookingId: freezed == tourBookingId
                ? _value.tourBookingId
                : tourBookingId // ignore: cast_nullable_to_non_nullable
                      as String?,
            serviceType: null == serviceType
                ? _value.serviceType
                : serviceType // ignore: cast_nullable_to_non_nullable
                      as AddonServiceType,
            mealServiceId: freezed == mealServiceId
                ? _value.mealServiceId
                : mealServiceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            spaServiceId: freezed == spaServiceId
                ? _value.spaServiceId
                : spaServiceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            laundryServiceId: freezed == laundryServiceId
                ? _value.laundryServiceId
                : laundryServiceId // ignore: cast_nullable_to_non_nullable
                      as String?,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
            weightKg: freezed == weightKg
                ? _value.weightKg
                : weightKg // ignore: cast_nullable_to_non_nullable
                      as double?,
            laundryUnitPrice: freezed == laundryUnitPrice
                ? _value.laundryUnitPrice
                : laundryUnitPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            mealUnitPrice: freezed == mealUnitPrice
                ? _value.mealUnitPrice
                : mealUnitPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            spaUnitPrice: freezed == spaUnitPrice
                ? _value.spaUnitPrice
                : spaUnitPrice // ignore: cast_nullable_to_non_nullable
                      as double?,
            totalPrice: null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                      as double,
            scheduledAt: freezed == scheduledAt
                ? _value.scheduledAt
                : scheduledAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            specialNotes: freezed == specialNotes
                ? _value.specialNotes
                : specialNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
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
          )
          as $Val,
    );
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
    @JsonKey(name: 'hotel_booking_id') String? hotelBookingId,
    @JsonKey(name: 'tour_booking_id') String? tourBookingId,
    AddonServiceType serviceType,
    @JsonKey(name: 'meal_service_id') String? mealServiceId,
    @JsonKey(name: 'spa_service_id') String? spaServiceId,
    @JsonKey(name: 'laundry_service_id') String? laundryServiceId,
    int quantity,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'laundry_unit_price') double? laundryUnitPrice,
    @JsonKey(name: 'meal_unit_price') double? mealUnitPrice,
    @JsonKey(name: 'spa_unit_price') double? spaUnitPrice,
    double totalPrice,
    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,
    @JsonKey(name: 'special_notes') String? specialNotes,
    AddonOrderStatus status,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
    Object? hotelBookingId = freezed,
    Object? tourBookingId = freezed,
    Object? serviceType = null,
    Object? mealServiceId = freezed,
    Object? spaServiceId = freezed,
    Object? laundryServiceId = freezed,
    Object? quantity = null,
    Object? weightKg = freezed,
    Object? laundryUnitPrice = freezed,
    Object? mealUnitPrice = freezed,
    Object? spaUnitPrice = freezed,
    Object? totalPrice = null,
    Object? scheduledAt = freezed,
    Object? specialNotes = freezed,
    Object? status = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$AddonOrderImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: freezed == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourBookingId: freezed == tourBookingId
            ? _value.tourBookingId
            : tourBookingId // ignore: cast_nullable_to_non_nullable
                  as String?,
        serviceType: null == serviceType
            ? _value.serviceType
            : serviceType // ignore: cast_nullable_to_non_nullable
                  as AddonServiceType,
        mealServiceId: freezed == mealServiceId
            ? _value.mealServiceId
            : mealServiceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        spaServiceId: freezed == spaServiceId
            ? _value.spaServiceId
            : spaServiceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        laundryServiceId: freezed == laundryServiceId
            ? _value.laundryServiceId
            : laundryServiceId // ignore: cast_nullable_to_non_nullable
                  as String?,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
        weightKg: freezed == weightKg
            ? _value.weightKg
            : weightKg // ignore: cast_nullable_to_non_nullable
                  as double?,
        laundryUnitPrice: freezed == laundryUnitPrice
            ? _value.laundryUnitPrice
            : laundryUnitPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        mealUnitPrice: freezed == mealUnitPrice
            ? _value.mealUnitPrice
            : mealUnitPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        spaUnitPrice: freezed == spaUnitPrice
            ? _value.spaUnitPrice
            : spaUnitPrice // ignore: cast_nullable_to_non_nullable
                  as double?,
        totalPrice: null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                  as double,
        scheduledAt: freezed == scheduledAt
            ? _value.scheduledAt
            : scheduledAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        specialNotes: freezed == specialNotes
            ? _value.specialNotes
            : specialNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonOrderImpl implements _AddonOrder {
  const _$AddonOrderImpl({
    this.id,
    @JsonKey(name: 'hotel_booking_id') this.hotelBookingId,
    @JsonKey(name: 'tour_booking_id') this.tourBookingId,
    required this.serviceType,
    @JsonKey(name: 'meal_service_id') this.mealServiceId,
    @JsonKey(name: 'spa_service_id') this.spaServiceId,
    @JsonKey(name: 'laundry_service_id') this.laundryServiceId,
    required this.quantity,
    @JsonKey(name: 'weight_kg') this.weightKg,
    @JsonKey(name: 'laundry_unit_price') this.laundryUnitPrice,
    @JsonKey(name: 'meal_unit_price') this.mealUnitPrice,
    @JsonKey(name: 'spa_unit_price') this.spaUnitPrice,
    required this.totalPrice,
    @JsonKey(name: 'scheduled_at') this.scheduledAt,
    @JsonKey(name: 'special_notes') this.specialNotes,
    required this.status,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$AddonOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonOrderImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  final String? hotelBookingId;
  @override
  @JsonKey(name: 'tour_booking_id')
  final String? tourBookingId;
  @override
  final AddonServiceType serviceType;
  @override
  @JsonKey(name: 'meal_service_id')
  final String? mealServiceId;
  @override
  @JsonKey(name: 'spa_service_id')
  final String? spaServiceId;
  @override
  @JsonKey(name: 'laundry_service_id')
  final String? laundryServiceId;
  @override
  final int quantity;
  @override
  @JsonKey(name: 'weight_kg')
  final double? weightKg;
  @override
  @JsonKey(name: 'laundry_unit_price')
  final double? laundryUnitPrice;
  @override
  @JsonKey(name: 'meal_unit_price')
  final double? mealUnitPrice;
  @override
  @JsonKey(name: 'spa_unit_price')
  final double? spaUnitPrice;
  @override
  final double totalPrice;
  @override
  @JsonKey(name: 'scheduled_at')
  final DateTime? scheduledAt;
  @override
  @JsonKey(name: 'special_notes')
  final String? specialNotes;
  @override
  final AddonOrderStatus status;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AddonOrder(id: $id, hotelBookingId: $hotelBookingId, tourBookingId: $tourBookingId, serviceType: $serviceType, mealServiceId: $mealServiceId, spaServiceId: $spaServiceId, laundryServiceId: $laundryServiceId, quantity: $quantity, weightKg: $weightKg, laundryUnitPrice: $laundryUnitPrice, mealUnitPrice: $mealUnitPrice, spaUnitPrice: $spaUnitPrice, totalPrice: $totalPrice, scheduledAt: $scheduledAt, specialNotes: $specialNotes, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.tourBookingId, tourBookingId) ||
                other.tourBookingId == tourBookingId) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.mealServiceId, mealServiceId) ||
                other.mealServiceId == mealServiceId) &&
            (identical(other.spaServiceId, spaServiceId) ||
                other.spaServiceId == spaServiceId) &&
            (identical(other.laundryServiceId, laundryServiceId) ||
                other.laundryServiceId == laundryServiceId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.laundryUnitPrice, laundryUnitPrice) ||
                other.laundryUnitPrice == laundryUnitPrice) &&
            (identical(other.mealUnitPrice, mealUnitPrice) ||
                other.mealUnitPrice == mealUnitPrice) &&
            (identical(other.spaUnitPrice, spaUnitPrice) ||
                other.spaUnitPrice == spaUnitPrice) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.scheduledAt, scheduledAt) ||
                other.scheduledAt == scheduledAt) &&
            (identical(other.specialNotes, specialNotes) ||
                other.specialNotes == specialNotes) &&
            (identical(other.status, status) || other.status == status) &&
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
    tourBookingId,
    serviceType,
    mealServiceId,
    spaServiceId,
    laundryServiceId,
    quantity,
    weightKg,
    laundryUnitPrice,
    mealUnitPrice,
    spaUnitPrice,
    totalPrice,
    scheduledAt,
    specialNotes,
    status,
    createdAt,
    updatedAt,
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
    @JsonKey(name: 'hotel_booking_id') final String? hotelBookingId,
    @JsonKey(name: 'tour_booking_id') final String? tourBookingId,
    required final AddonServiceType serviceType,
    @JsonKey(name: 'meal_service_id') final String? mealServiceId,
    @JsonKey(name: 'spa_service_id') final String? spaServiceId,
    @JsonKey(name: 'laundry_service_id') final String? laundryServiceId,
    required final int quantity,
    @JsonKey(name: 'weight_kg') final double? weightKg,
    @JsonKey(name: 'laundry_unit_price') final double? laundryUnitPrice,
    @JsonKey(name: 'meal_unit_price') final double? mealUnitPrice,
    @JsonKey(name: 'spa_unit_price') final double? spaUnitPrice,
    required final double totalPrice,
    @JsonKey(name: 'scheduled_at') final DateTime? scheduledAt,
    @JsonKey(name: 'special_notes') final String? specialNotes,
    required final AddonOrderStatus status,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$AddonOrderImpl;

  factory _AddonOrder.fromJson(Map<String, dynamic> json) =
      _$AddonOrderImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  String? get hotelBookingId;
  @override
  @JsonKey(name: 'tour_booking_id')
  String? get tourBookingId;
  @override
  AddonServiceType get serviceType;
  @override
  @JsonKey(name: 'meal_service_id')
  String? get mealServiceId;
  @override
  @JsonKey(name: 'spa_service_id')
  String? get spaServiceId;
  @override
  @JsonKey(name: 'laundry_service_id')
  String? get laundryServiceId;
  @override
  int get quantity;
  @override
  @JsonKey(name: 'weight_kg')
  double? get weightKg;
  @override
  @JsonKey(name: 'laundry_unit_price')
  double? get laundryUnitPrice;
  @override
  @JsonKey(name: 'meal_unit_price')
  double? get mealUnitPrice;
  @override
  @JsonKey(name: 'spa_unit_price')
  double? get spaUnitPrice;
  @override
  double get totalPrice;
  @override
  @JsonKey(name: 'scheduled_at')
  DateTime? get scheduledAt;
  @override
  @JsonKey(name: 'special_notes')
  String? get specialNotes;
  @override
  AddonOrderStatus get status;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of AddonOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonOrderImplCopyWith<_$AddonOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
