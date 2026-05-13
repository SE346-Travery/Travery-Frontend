// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laundry_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LaundryService _$LaundryServiceFromJson(Map<String, dynamic> json) {
  return _LaundryService.fromJson(json);
}

/// @nodoc
mixin _$LaundryService {
  String? get id => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  LaundryServiceType get serviceType => throw _privateConstructorUsedError;
  double get pricePerKg => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Hotel? get hotel => throw _privateConstructorUsedError;

  /// Serializes this LaundryService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LaundryService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LaundryServiceCopyWith<LaundryService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaundryServiceCopyWith<$Res> {
  factory $LaundryServiceCopyWith(
    LaundryService value,
    $Res Function(LaundryService) then,
  ) = _$LaundryServiceCopyWithImpl<$Res, LaundryService>;
  @useResult
  $Res call({
    String? id,
    String hotelId,
    String name,
    String? description,
    LaundryServiceType serviceType,
    double pricePerKg,
    bool isAvailable,
    DateTime? createdAt,
    DateTime? updatedAt,
    Hotel? hotel,
  });

  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class _$LaundryServiceCopyWithImpl<$Res, $Val extends LaundryService>
    implements $LaundryServiceCopyWith<$Res> {
  _$LaundryServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LaundryService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? description = freezed,
    Object? serviceType = null,
    Object? pricePerKg = null,
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
                      as LaundryServiceType,
            pricePerKg: null == pricePerKg
                ? _value.pricePerKg
                : pricePerKg // ignore: cast_nullable_to_non_nullable
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

  /// Create a copy of LaundryService
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
abstract class _$$LaundryServiceImplCopyWith<$Res>
    implements $LaundryServiceCopyWith<$Res> {
  factory _$$LaundryServiceImplCopyWith(
    _$LaundryServiceImpl value,
    $Res Function(_$LaundryServiceImpl) then,
  ) = __$$LaundryServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String hotelId,
    String name,
    String? description,
    LaundryServiceType serviceType,
    double pricePerKg,
    bool isAvailable,
    DateTime? createdAt,
    DateTime? updatedAt,
    Hotel? hotel,
  });

  @override
  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class __$$LaundryServiceImplCopyWithImpl<$Res>
    extends _$LaundryServiceCopyWithImpl<$Res, _$LaundryServiceImpl>
    implements _$$LaundryServiceImplCopyWith<$Res> {
  __$$LaundryServiceImplCopyWithImpl(
    _$LaundryServiceImpl _value,
    $Res Function(_$LaundryServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LaundryService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? description = freezed,
    Object? serviceType = null,
    Object? pricePerKg = null,
    Object? isAvailable = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _$LaundryServiceImpl(
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
                  as LaundryServiceType,
        pricePerKg: null == pricePerKg
            ? _value.pricePerKg
            : pricePerKg // ignore: cast_nullable_to_non_nullable
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
class _$LaundryServiceImpl implements _LaundryService {
  const _$LaundryServiceImpl({
    this.id,
    required this.hotelId,
    required this.name,
    this.description,
    required this.serviceType,
    required this.pricePerKg,
    this.isAvailable = true,
    this.createdAt,
    this.updatedAt,
    this.hotel,
  });

  factory _$LaundryServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaundryServiceImplFromJson(json);

  @override
  final String? id;
  @override
  final String hotelId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final LaundryServiceType serviceType;
  @override
  final double pricePerKg;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Hotel? hotel;

  @override
  String toString() {
    return 'LaundryService(id: $id, hotelId: $hotelId, name: $name, description: $description, serviceType: $serviceType, pricePerKg: $pricePerKg, isAvailable: $isAvailable, createdAt: $createdAt, updatedAt: $updatedAt, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaundryServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.serviceType, serviceType) ||
                other.serviceType == serviceType) &&
            (identical(other.pricePerKg, pricePerKg) ||
                other.pricePerKg == pricePerKg) &&
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
    pricePerKg,
    isAvailable,
    createdAt,
    updatedAt,
    hotel,
  );

  /// Create a copy of LaundryService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LaundryServiceImplCopyWith<_$LaundryServiceImpl> get copyWith =>
      __$$LaundryServiceImplCopyWithImpl<_$LaundryServiceImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LaundryServiceImplToJson(this);
  }
}

abstract class _LaundryService implements LaundryService {
  const factory _LaundryService({
    final String? id,
    required final String hotelId,
    required final String name,
    final String? description,
    required final LaundryServiceType serviceType,
    required final double pricePerKg,
    final bool isAvailable,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Hotel? hotel,
  }) = _$LaundryServiceImpl;

  factory _LaundryService.fromJson(Map<String, dynamic> json) =
      _$LaundryServiceImpl.fromJson;

  @override
  String? get id;
  @override
  String get hotelId;
  @override
  String get name;
  @override
  String? get description;
  @override
  LaundryServiceType get serviceType;
  @override
  double get pricePerKg;
  @override
  bool get isAvailable;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Hotel? get hotel;

  /// Create a copy of LaundryService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaundryServiceImplCopyWith<_$LaundryServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
