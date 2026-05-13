// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MealService _$MealServiceFromJson(Map<String, dynamic> json) {
  return _MealService.fromJson(json);
}

/// @nodoc
mixin _$MealService {
  String? get id => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  MealType get mealType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  String? get startTime => throw _privateConstructorUsedError;
  String? get endTime => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Hotel? get hotel => throw _privateConstructorUsedError;

  /// Serializes this MealService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealServiceCopyWith<MealService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealServiceCopyWith<$Res> {
  factory $MealServiceCopyWith(
    MealService value,
    $Res Function(MealService) then,
  ) = _$MealServiceCopyWithImpl<$Res, MealService>;
  @useResult
  $Res call({
    String? id,
    String hotelId,
    String name,
    MealType mealType,
    String? description,
    double price,
    bool isAvailable,
    String? startTime,
    String? endTime,
    DateTime? createdAt,
    DateTime? updatedAt,
    Hotel? hotel,
  });

  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class _$MealServiceCopyWithImpl<$Res, $Val extends MealService>
    implements $MealServiceCopyWith<$Res> {
  _$MealServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? mealType = null,
    Object? description = freezed,
    Object? price = null,
    Object? isAvailable = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
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
            mealType: null == mealType
                ? _value.mealType
                : mealType // ignore: cast_nullable_to_non_nullable
                      as MealType,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            isAvailable: null == isAvailable
                ? _value.isAvailable
                : isAvailable // ignore: cast_nullable_to_non_nullable
                      as bool,
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String?,
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

  /// Create a copy of MealService
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
abstract class _$$MealServiceImplCopyWith<$Res>
    implements $MealServiceCopyWith<$Res> {
  factory _$$MealServiceImplCopyWith(
    _$MealServiceImpl value,
    $Res Function(_$MealServiceImpl) then,
  ) = __$$MealServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String hotelId,
    String name,
    MealType mealType,
    String? description,
    double price,
    bool isAvailable,
    String? startTime,
    String? endTime,
    DateTime? createdAt,
    DateTime? updatedAt,
    Hotel? hotel,
  });

  @override
  $HotelCopyWith<$Res>? get hotel;
}

/// @nodoc
class __$$MealServiceImplCopyWithImpl<$Res>
    extends _$MealServiceCopyWithImpl<$Res, _$MealServiceImpl>
    implements _$$MealServiceImplCopyWith<$Res> {
  __$$MealServiceImplCopyWithImpl(
    _$MealServiceImpl _value,
    $Res Function(_$MealServiceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MealService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? mealType = null,
    Object? description = freezed,
    Object? price = null,
    Object? isAvailable = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _$MealServiceImpl(
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
        mealType: null == mealType
            ? _value.mealType
            : mealType // ignore: cast_nullable_to_non_nullable
                  as MealType,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        isAvailable: null == isAvailable
            ? _value.isAvailable
            : isAvailable // ignore: cast_nullable_to_non_nullable
                  as bool,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$MealServiceImpl implements _MealService {
  const _$MealServiceImpl({
    this.id,
    required this.hotelId,
    required this.name,
    required this.mealType,
    this.description,
    required this.price,
    this.isAvailable = true,
    this.startTime,
    this.endTime,
    this.createdAt,
    this.updatedAt,
    this.hotel,
  });

  factory _$MealServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealServiceImplFromJson(json);

  @override
  final String? id;
  @override
  final String hotelId;
  @override
  final String name;
  @override
  final MealType mealType;
  @override
  final String? description;
  @override
  final double price;
  @override
  @JsonKey()
  final bool isAvailable;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final Hotel? hotel;

  @override
  String toString() {
    return 'MealService(id: $id, hotelId: $hotelId, name: $name, mealType: $mealType, description: $description, price: $price, isAvailable: $isAvailable, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, updatedAt: $updatedAt, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
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
    mealType,
    description,
    price,
    isAvailable,
    startTime,
    endTime,
    createdAt,
    updatedAt,
    hotel,
  );

  /// Create a copy of MealService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealServiceImplCopyWith<_$MealServiceImpl> get copyWith =>
      __$$MealServiceImplCopyWithImpl<_$MealServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealServiceImplToJson(this);
  }
}

abstract class _MealService implements MealService {
  const factory _MealService({
    final String? id,
    required final String hotelId,
    required final String name,
    required final MealType mealType,
    final String? description,
    required final double price,
    final bool isAvailable,
    final String? startTime,
    final String? endTime,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final Hotel? hotel,
  }) = _$MealServiceImpl;

  factory _MealService.fromJson(Map<String, dynamic> json) =
      _$MealServiceImpl.fromJson;

  @override
  String? get id;
  @override
  String get hotelId;
  @override
  String get name;
  @override
  MealType get mealType;
  @override
  String? get description;
  @override
  double get price;
  @override
  bool get isAvailable;
  @override
  String? get startTime;
  @override
  String? get endTime;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Hotel? get hotel;

  /// Create a copy of MealService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealServiceImplCopyWith<_$MealServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
