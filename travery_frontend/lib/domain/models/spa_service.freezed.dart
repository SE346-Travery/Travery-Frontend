// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spa_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpaService _$SpaServiceFromJson(Map<String, dynamic> json) {
  return _SpaService.fromJson(json);
}

/// @nodoc
mixin _$SpaService {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  SpaServiceType get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_minutes')
  int get durationMinutes => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATION
  Hotel? get hotel => throw _privateConstructorUsedError;

  /// Serializes this SpaService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpaService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpaServiceCopyWith<SpaService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaServiceCopyWith<$Res> {
  factory $SpaServiceCopyWith(
    SpaService value,
    $Res Function(SpaService) then,
  ) = _$SpaServiceCopyWithImpl<$Res, SpaService>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_id') String hotelId,
    String name,
    String? description,
    SpaServiceType serviceType,
    @JsonKey(name: 'duration_minutes') int durationMinutes,
    double price,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hotel? hotel,
  });

  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class _$SpaServiceCopyWithImpl<$Res, $Val extends SpaService>
    implements $SpaServiceCopyWith<$Res> {
  _$SpaServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpaService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? description = freezed,
    Object? serviceType = null,
    Object? durationMinutes = null,
    Object? price = null,
    Object? isAvailable = null,
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
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            serviceType: null == serviceType
                ? _value.serviceType
                : serviceType // ignore: cast_nullable_to_non_nullable
                      as SpaServiceType,
            durationMinutes: null == durationMinutes
                ? _value.durationMinutes
                : durationMinutes // ignore: cast_nullable_to_non_nullable
                      as int,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of SpaService
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
abstract class _$$SpaServiceImplCopyWith<$Res>
    implements $SpaServiceCopyWith<$Res> {
  factory _$$SpaServiceImplCopyWith(
    _$SpaServiceImpl value,
    $Res Function(_$SpaServiceImpl) then,
  ) = __$$SpaServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_id') String hotelId,
    String name,
    String? description,
    SpaServiceType serviceType,
    @JsonKey(name: 'duration_minutes') int durationMinutes,
    double price,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hotel? hotel,
  });

  @override
  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class __$$SpaServiceImplCopyWithImpl<$Res>
    extends _$SpaServiceCopyWithImpl<$Res, _$SpaServiceImpl>
    implements _$$SpaServiceImplCopyWith<$Res> {
  __$$SpaServiceImplCopyWithImpl(
    _$SpaServiceImpl _value,
    $Res Function(_$SpaServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpaService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? description = freezed,
    Object? serviceType = null,
    Object? durationMinutes = null,
    Object? price = null,
    Object? isAvailable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _$SpaServiceImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelId: null == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        serviceType: null == serviceType
            ? _value.serviceType
            : serviceType // ignore: cast_nullable_to_non_nullable
                  as SpaServiceType,
        durationMinutes: null == durationMinutes
            ? _value.durationMinutes
            : durationMinutes // ignore: cast_nullable_to_non_nullable
                  as int,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
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
class _$SpaServiceImpl implements _SpaService {
  const _$SpaServiceImpl({
    this.id,
    @JsonKey(name: 'hotel_id') required this.hotelId,
    required this.name,
    this.description,
    required this.serviceType,
    @JsonKey(name: 'duration_minutes') required this.durationMinutes,
    required this.price,
    @JsonKey(name: 'is_available') this.isAvailable = true,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.hotel,
  });

  factory _$SpaServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpaServiceImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_id')
  final String hotelId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final SpaServiceType serviceType;
  @override
  @JsonKey(name: 'duration_minutes')
  final int durationMinutes;
  @override
  final double price;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;
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
    return 'SpaService(id: $id, hotelId: $hotelId, name: $name, description: $description, serviceType: $serviceType, durationMinutes: $durationMinutes, price: $price, isAvailable: $isAvailable, createdAt: $createdAt, updatedAt: $updatedAt, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.durationMinutes, durationMinutes) ||
                other.durationMinutes == durationMinutes) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
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
    name,
    description,
    serviceType,
    durationMinutes,
    price,
    isAvailable,
    createdAt,
    updatedAt,
    hotel,
  );

  /// Create a copy of SpaService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaServiceImplCopyWith<_$SpaServiceImpl> get copyWith =>
      __$$SpaServiceImplCopyWithImpl<_$SpaServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpaServiceImplToJson(this);
  }
}

abstract class _SpaService implements SpaService {
  const factory _SpaService({
    final String? id,
    @JsonKey(name: 'hotel_id') required final String hotelId,
    required final String name,
    final String? description,
    required final SpaServiceType serviceType,
    @JsonKey(name: 'duration_minutes') required final int durationMinutes,
    required final double price,
    @JsonKey(name: 'is_available') final bool isAvailable,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final Hotel? hotel,
  }) = _$SpaServiceImpl;

  factory _SpaService.fromJson(Map<String, dynamic> json) =
      _$SpaServiceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_id')
  String get hotelId;
  @override
  String get name;
  @override
  String? get description;
  @override
  SpaServiceType get serviceType;
  @override
  @JsonKey(name: 'duration_minutes')
  int get durationMinutes;
  @override
  double get price;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATION
  @override
  Hotel? get hotel;

  /// Create a copy of SpaService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpaServiceImplCopyWith<_$SpaServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
