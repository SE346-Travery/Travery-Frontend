// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RoomType _$RoomTypeFromJson(Map<String, dynamic> json) {
  return _RoomType.fromJson(json);
}

/// @nodoc
mixin _$RoomType {
  String? get id => throw _privateConstructorUsedError;
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  double get basePrice => throw _privateConstructorUsedError;
  int get capacityAdults => throw _privateConstructorUsedError;
  int get capacityChildren => throw _privateConstructorUsedError;
  BedType get bedType => throw _privateConstructorUsedError;
  int? get totalRooms => throw _privateConstructorUsedError;
  int? get availableRooms => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RoomType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomTypeCopyWith<RoomType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomTypeCopyWith<$Res> {
  factory $RoomTypeCopyWith(RoomType value, $Res Function(RoomType) then) =
      _$RoomTypeCopyWithImpl<$Res, RoomType>;
  @useResult
  $Res call({
    String? id,
    String hotelId,
    String name,
    String? description,
    double basePrice,
    int capacityAdults,
    int capacityChildren,
    BedType bedType,
    int? totalRooms,
    int? availableRooms,
    bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$RoomTypeCopyWithImpl<$Res, $Val extends RoomType>
    implements $RoomTypeCopyWith<$Res> {
  _$RoomTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? description = freezed,
    Object? basePrice = null,
    Object? capacityAdults = null,
    Object? capacityChildren = null,
    Object? bedType = null,
    Object? totalRooms = freezed,
    Object? availableRooms = freezed,
    Object? isActive = null,
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
            basePrice: null == basePrice
                ? _value.basePrice
                : basePrice // ignore: cast_nullable_to_non_nullable
                      as double,
            capacityAdults: null == capacityAdults
                ? _value.capacityAdults
                : capacityAdults // ignore: cast_nullable_to_non_nullable
                      as int,
            capacityChildren: null == capacityChildren
                ? _value.capacityChildren
                : capacityChildren // ignore: cast_nullable_to_non_nullable
                      as int,
            bedType: null == bedType
                ? _value.bedType
                : bedType // ignore: cast_nullable_to_non_nullable
                      as BedType,
            totalRooms: freezed == totalRooms
                ? _value.totalRooms
                : totalRooms // ignore: cast_nullable_to_non_nullable
                      as int?,
            availableRooms: freezed == availableRooms
                ? _value.availableRooms
                : availableRooms // ignore: cast_nullable_to_non_nullable
                      as int?,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RoomTypeImplCopyWith<$Res>
    implements $RoomTypeCopyWith<$Res> {
  factory _$$RoomTypeImplCopyWith(
    _$RoomTypeImpl value,
    $Res Function(_$RoomTypeImpl) then,
  ) = __$$RoomTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String hotelId,
    String name,
    String? description,
    double basePrice,
    int capacityAdults,
    int capacityChildren,
    BedType bedType,
    int? totalRooms,
    int? availableRooms,
    bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$RoomTypeImplCopyWithImpl<$Res>
    extends _$RoomTypeCopyWithImpl<$Res, _$RoomTypeImpl>
    implements _$$RoomTypeImplCopyWith<$Res> {
  __$$RoomTypeImplCopyWithImpl(
    _$RoomTypeImpl _value,
    $Res Function(_$RoomTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoomType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelId = null,
    Object? name = null,
    Object? description = freezed,
    Object? basePrice = null,
    Object? capacityAdults = null,
    Object? capacityChildren = null,
    Object? bedType = null,
    Object? totalRooms = freezed,
    Object? availableRooms = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$RoomTypeImpl(
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
        basePrice: null == basePrice
            ? _value.basePrice
            : basePrice // ignore: cast_nullable_to_non_nullable
                  as double,
        capacityAdults: null == capacityAdults
            ? _value.capacityAdults
            : capacityAdults // ignore: cast_nullable_to_non_nullable
                  as int,
        capacityChildren: null == capacityChildren
            ? _value.capacityChildren
            : capacityChildren // ignore: cast_nullable_to_non_nullable
                  as int,
        bedType: null == bedType
            ? _value.bedType
            : bedType // ignore: cast_nullable_to_non_nullable
                  as BedType,
        totalRooms: freezed == totalRooms
            ? _value.totalRooms
            : totalRooms // ignore: cast_nullable_to_non_nullable
                  as int?,
        availableRooms: freezed == availableRooms
            ? _value.availableRooms
            : availableRooms // ignore: cast_nullable_to_non_nullable
                  as int?,
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomTypeImpl implements _RoomType {
  const _$RoomTypeImpl({
    this.id,
    required this.hotelId,
    required this.name,
    this.description,
    required this.basePrice,
    required this.capacityAdults,
    this.capacityChildren = 0,
    required this.bedType,
    this.totalRooms,
    this.availableRooms,
    this.isActive = true,
    this.createdAt,
    this.updatedAt,
  });

  factory _$RoomTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomTypeImplFromJson(json);

  @override
  final String? id;
  @override
  final String hotelId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final double basePrice;
  @override
  final int capacityAdults;
  @override
  @JsonKey()
  final int capacityChildren;
  @override
  final BedType bedType;
  @override
  final int? totalRooms;
  @override
  final int? availableRooms;
  @override
  @JsonKey()
  final bool isActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'RoomType(id: $id, hotelId: $hotelId, name: $name, description: $description, basePrice: $basePrice, capacityAdults: $capacityAdults, capacityChildren: $capacityChildren, bedType: $bedType, totalRooms: $totalRooms, availableRooms: $availableRooms, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.capacityAdults, capacityAdults) ||
                other.capacityAdults == capacityAdults) &&
            (identical(other.capacityChildren, capacityChildren) ||
                other.capacityChildren == capacityChildren) &&
            (identical(other.bedType, bedType) || other.bedType == bedType) &&
            (identical(other.totalRooms, totalRooms) ||
                other.totalRooms == totalRooms) &&
            (identical(other.availableRooms, availableRooms) ||
                other.availableRooms == availableRooms) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
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
    basePrice,
    capacityAdults,
    capacityChildren,
    bedType,
    totalRooms,
    availableRooms,
    isActive,
    createdAt,
    updatedAt,
  );

  /// Create a copy of RoomType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomTypeImplCopyWith<_$RoomTypeImpl> get copyWith =>
      __$$RoomTypeImplCopyWithImpl<_$RoomTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomTypeImplToJson(this);
  }
}

abstract class _RoomType implements RoomType {
  const factory _RoomType({
    final String? id,
    required final String hotelId,
    required final String name,
    final String? description,
    required final double basePrice,
    required final int capacityAdults,
    final int capacityChildren,
    required final BedType bedType,
    final int? totalRooms,
    final int? availableRooms,
    final bool isActive,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$RoomTypeImpl;

  factory _RoomType.fromJson(Map<String, dynamic> json) =
      _$RoomTypeImpl.fromJson;

  @override
  String? get id;
  @override
  String get hotelId;
  @override
  String get name;
  @override
  String? get description;
  @override
  double get basePrice;
  @override
  int get capacityAdults;
  @override
  int get capacityChildren;
  @override
  BedType get bedType;
  @override
  int? get totalRooms;
  @override
  int? get availableRooms;
  @override
  bool get isActive;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of RoomType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomTypeImplCopyWith<_$RoomTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
