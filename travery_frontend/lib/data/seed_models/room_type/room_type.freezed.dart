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
  @JsonKey(name: 'hotel_id')
  String get hotelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_night')
  double get pricePerNight => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_occupancy')
  int get maxOccupancy => throw _privateConstructorUsedError;
  @JsonKey(name: 'bed_count')
  int get bedCount => throw _privateConstructorUsedError;
  BedType get bedType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  List<RoomTypeImage>? get images => throw _privateConstructorUsedError;
  List<Room>? get rooms => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'hotel_id') String hotelId,
    String name,
    String? description,
    @JsonKey(name: 'price_per_night') double pricePerNight,
    @JsonKey(name: 'max_occupancy') int maxOccupancy,
    @JsonKey(name: 'bed_count') int bedCount,
    BedType bedType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    List<RoomTypeImage>? images,
    List<Room>? rooms,
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
    Object? pricePerNight = null,
    Object? maxOccupancy = null,
    Object? bedCount = null,
    Object? bedType = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? images = freezed,
    Object? rooms = freezed,
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
            pricePerNight: null == pricePerNight
                ? _value.pricePerNight
                : pricePerNight // ignore: cast_nullable_to_non_nullable
                      as double,
            maxOccupancy: null == maxOccupancy
                ? _value.maxOccupancy
                : maxOccupancy // ignore: cast_nullable_to_non_nullable
                      as int,
            bedCount: null == bedCount
                ? _value.bedCount
                : bedCount // ignore: cast_nullable_to_non_nullable
                      as int,
            bedType: null == bedType
                ? _value.bedType
                : bedType // ignore: cast_nullable_to_non_nullable
                      as BedType,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<RoomTypeImage>?,
            rooms: freezed == rooms
                ? _value.rooms
                : rooms // ignore: cast_nullable_to_non_nullable
                      as List<Room>?,
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
    @JsonKey(name: 'hotel_id') String hotelId,
    String name,
    String? description,
    @JsonKey(name: 'price_per_night') double pricePerNight,
    @JsonKey(name: 'max_occupancy') int maxOccupancy,
    @JsonKey(name: 'bed_count') int bedCount,
    BedType bedType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') DateTime? deletedAt,
    List<RoomTypeImage>? images,
    List<Room>? rooms,
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
    Object? pricePerNight = null,
    Object? maxOccupancy = null,
    Object? bedCount = null,
    Object? bedType = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? deletedAt = freezed,
    Object? images = freezed,
    Object? rooms = freezed,
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
        pricePerNight: null == pricePerNight
            ? _value.pricePerNight
            : pricePerNight // ignore: cast_nullable_to_non_nullable
                  as double,
        maxOccupancy: null == maxOccupancy
            ? _value.maxOccupancy
            : maxOccupancy // ignore: cast_nullable_to_non_nullable
                  as int,
        bedCount: null == bedCount
            ? _value.bedCount
            : bedCount // ignore: cast_nullable_to_non_nullable
                  as int,
        bedType: null == bedType
            ? _value.bedType
            : bedType // ignore: cast_nullable_to_non_nullable
                  as BedType,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<RoomTypeImage>?,
        rooms: freezed == rooms
            ? _value._rooms
            : rooms // ignore: cast_nullable_to_non_nullable
                  as List<Room>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomTypeImpl implements _RoomType {
  const _$RoomTypeImpl({
    this.id,
    @JsonKey(name: 'hotel_id') required this.hotelId,
    required this.name,
    this.description,
    @JsonKey(name: 'price_per_night') required this.pricePerNight,
    @JsonKey(name: 'max_occupancy') required this.maxOccupancy,
    @JsonKey(name: 'bed_count') required this.bedCount,
    required this.bedType,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    @JsonKey(name: 'deleted_at') this.deletedAt,
    final List<RoomTypeImage>? images,
    final List<Room>? rooms,
  }) : _images = images,
       _rooms = rooms;

  factory _$RoomTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomTypeImplFromJson(json);

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
  @JsonKey(name: 'price_per_night')
  final double pricePerNight;
  @override
  @JsonKey(name: 'max_occupancy')
  final int maxOccupancy;
  @override
  @JsonKey(name: 'bed_count')
  final int bedCount;
  @override
  final BedType bedType;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  final DateTime? deletedAt;

  /// RELATIONS
  final List<RoomTypeImage>? _images;

  /// RELATIONS
  @override
  List<RoomTypeImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Room>? _rooms;
  @override
  List<Room>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomType(id: $id, hotelId: $hotelId, name: $name, description: $description, pricePerNight: $pricePerNight, maxOccupancy: $maxOccupancy, bedCount: $bedCount, bedType: $bedType, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, images: $images, rooms: $rooms)';
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
            (identical(other.pricePerNight, pricePerNight) ||
                other.pricePerNight == pricePerNight) &&
            (identical(other.maxOccupancy, maxOccupancy) ||
                other.maxOccupancy == maxOccupancy) &&
            (identical(other.bedCount, bedCount) ||
                other.bedCount == bedCount) &&
            (identical(other.bedType, bedType) || other.bedType == bedType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    hotelId,
    name,
    description,
    pricePerNight,
    maxOccupancy,
    bedCount,
    bedType,
    createdAt,
    updatedAt,
    deletedAt,
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_rooms),
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
    @JsonKey(name: 'hotel_id') required final String hotelId,
    required final String name,
    final String? description,
    @JsonKey(name: 'price_per_night') required final double pricePerNight,
    @JsonKey(name: 'max_occupancy') required final int maxOccupancy,
    @JsonKey(name: 'bed_count') required final int bedCount,
    required final BedType bedType,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    @JsonKey(name: 'deleted_at') final DateTime? deletedAt,
    final List<RoomTypeImage>? images,
    final List<Room>? rooms,
  }) = _$RoomTypeImpl;

  factory _RoomType.fromJson(Map<String, dynamic> json) =
      _$RoomTypeImpl.fromJson;

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
  @JsonKey(name: 'price_per_night')
  double get pricePerNight;
  @override
  @JsonKey(name: 'max_occupancy')
  int get maxOccupancy;
  @override
  @JsonKey(name: 'bed_count')
  int get bedCount;
  @override
  BedType get bedType;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'deleted_at')
  DateTime? get deletedAt;

  /// RELATIONS
  @override
  List<RoomTypeImage>? get images;
  @override
  List<Room>? get rooms;

  /// Create a copy of RoomType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomTypeImplCopyWith<_$RoomTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
