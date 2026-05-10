// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HotelService _$HotelServiceFromJson(Map<String, dynamic> json) {
  return _HotelService.fromJson(json);
}

/// @nodoc
mixin _$HotelService {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  String get hotelId => throw _privateConstructorUsedError;
  ServiceCategory get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
  Hotel? get hotel => throw _privateConstructorUsedError;

  /// Serializes this HotelService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelServiceCopyWith<HotelService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelServiceCopyWith<$Res> {
  factory $HotelServiceCopyWith(
    HotelService value,
    $Res Function(HotelService) then,
  ) = _$HotelServiceCopyWithImpl<$Res, HotelService>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_id') String hotelId,
    ServiceCategory category,
    String name,
    String? description,
    double price,
    String unit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hotel? hotel,
  });

  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class _$HotelServiceCopyWithImpl<$Res, $Val extends HotelService>
    implements $HotelServiceCopyWith<$Res> {
  _$HotelServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? category = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? unit = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelId: null == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as ServiceCategory,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            unit: null == unit
                ? _value.unit
                : unit // ignore: cast_nullable_to_non_nullable
                      as String,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            hotel: freezed == hotel
                ? _value.hotel
                : hotel // ignore: cast_nullable_to_non_nullable
                      as Hotel?,
          )
          as $Val,
    );
  }

  /// Create a copy of HotelService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res>? get hotel {
    if (_value.hotel == null) {
      return null;
    }

    return $HotelCopyWith<$Res>(_value.hotel!, (value) {
      return _then(_value.copyWith(hotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelServiceImplCopyWith<$Res>
    implements $HotelServiceCopyWith<$Res> {
  factory _$$HotelServiceImplCopyWith(
    _$HotelServiceImpl value,
    $Res Function(_$HotelServiceImpl) then,
  ) = __$$HotelServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_id') String hotelId,
    ServiceCategory category,
    String name,
    String? description,
    double price,
    String unit,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hotel? hotel,
  });

  @override
  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class __$$HotelServiceImplCopyWithImpl<$Res>
    extends _$HotelServiceCopyWithImpl<$Res, _$HotelServiceImpl>
    implements _$$HotelServiceImplCopyWith<$Res> {
  __$$HotelServiceImplCopyWithImpl(
    _$HotelServiceImpl _value,
    $Res Function(_$HotelServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotelService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? category = null,
    Object? name = null,
    Object? description = freezed,
    Object? price = null,
    Object? unit = null,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _$HotelServiceImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelId: null == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as ServiceCategory,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        unit: null == unit
            ? _value.unit
            : unit // ignore: cast_nullable_to_non_nullable
                  as String,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        hotel: freezed == hotel
            ? _value.hotel
            : hotel // ignore: cast_nullable_to_non_nullable
                  as Hotel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelServiceImpl implements _HotelService {
  const _$HotelServiceImpl({
    this.id,
    @JsonKey(name: 'hotel_id') required this.hotelId,
    required this.category,
    required this.name,
    this.description,
    required this.price,
    required this.unit,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.hotel,
  });

  factory _$HotelServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelServiceImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_id')
  final String hotelId;
  @override
  final ServiceCategory category;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double price;
  @override
  final String unit;
  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATION
  @override
  final Hotel? hotel;

  @override
  String toString() {
    return 'HotelService(id: $id, hotelId: $hotelId, category: $category, name: $name, description: $description, price: $price, unit: $unit, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hotelId,
    category,
    name,
    description,
    price,
    unit,
    isActive,
    createdAt,
    updatedAt,
    hotel,
  );

  /// Create a copy of HotelService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelServiceImplCopyWith<_$HotelServiceImpl> get copyWith =>
      __$$HotelServiceImplCopyWithImpl<_$HotelServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelServiceImplToJson(this);
  }
}

abstract class _HotelService implements HotelService {
  const factory _HotelService({
    final String? id,
    @JsonKey(name: 'hotel_id') required final String hotelId,
    required final ServiceCategory category,
    required final String name,
    final String? description,
    required final double price,
    required final String unit,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final Hotel? hotel,
  }) = _$HotelServiceImpl;

  factory _HotelService.fromJson(Map<String, dynamic> json) =
      _$HotelServiceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_id')
  String get hotelId;
  @override
  ServiceCategory get category;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get price;
  @override
  String get unit;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  Hotel? get hotel;

  /// Create a copy of HotelService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelServiceImplCopyWith<_$HotelServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
