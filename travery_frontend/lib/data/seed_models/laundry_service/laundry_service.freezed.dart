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
  @JsonKey(name: 'hotel_id')
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  LaundryServiceType get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_kg')
  double get pricePerKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_available')
  bool get isAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'hotel_id') String hotelId,
    String name,
    String? description,
    LaundryServiceType serviceType,
    @JsonKey(name: 'price_per_kg') double pricePerKg,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
          )
          as $Val,
    );
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
    @JsonKey(name: 'hotel_id') String hotelId,
    String name,
    String? description,
    LaundryServiceType serviceType,
    @JsonKey(name: 'price_per_kg') double pricePerKg,
    @JsonKey(name: 'is_available') bool isAvailable,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LaundryServiceImpl implements _LaundryService {
  const _$LaundryServiceImpl({
    this.id,
    @JsonKey(name: 'hotel_id') required this.hotelId,
    required this.name,
    this.description,
    required this.serviceType,
    @JsonKey(name: 'price_per_kg') required this.pricePerKg,
    @JsonKey(name: 'is_available') required this.isAvailable,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$LaundryServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaundryServiceImplFromJson(json);

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
  final LaundryServiceType serviceType;
  @override
  @JsonKey(name: 'price_per_kg')
  final double pricePerKg;
  @override
  @JsonKey(name: 'is_available')
  final bool isAvailable;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'LaundryService(id: $id, hotelId: $hotelId, name: $name, description: $description, serviceType: $serviceType, pricePerKg: $pricePerKg, isAvailable: $isAvailable, createdAt: $createdAt, updatedAt: $updatedAt)';
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
                other.updatedAt == updatedAt));
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
    @JsonKey(name: 'hotel_id') required final String hotelId,
    required final String name,
    final String? description,
    required final LaundryServiceType serviceType,
    @JsonKey(name: 'price_per_kg') required final double pricePerKg,
    @JsonKey(name: 'is_available') required final bool isAvailable,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$LaundryServiceImpl;

  factory _LaundryService.fromJson(Map<String, dynamic> json) =
      _$LaundryServiceImpl.fromJson;

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
  LaundryServiceType get serviceType;
  @override
  @JsonKey(name: 'price_per_kg')
  double get pricePerKg;
  @override
  @JsonKey(name: 'is_available')
  bool get isAvailable;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of LaundryService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LaundryServiceImplCopyWith<_$LaundryServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
