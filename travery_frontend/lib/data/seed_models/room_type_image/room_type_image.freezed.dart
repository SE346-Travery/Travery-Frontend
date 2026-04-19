// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_type_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RoomTypeImage _$RoomTypeImageFromJson(Map<String, dynamic> json) {
  return _RoomTypeImage.fromJson(json);
}

/// @nodoc
mixin _$RoomTypeImage {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_type_id')
  String get roomTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  int get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this RoomTypeImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomTypeImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomTypeImageCopyWith<RoomTypeImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomTypeImageCopyWith<$Res> {
  factory $RoomTypeImageCopyWith(
    RoomTypeImage value,
    $Res Function(RoomTypeImage) then,
  ) = _$RoomTypeImageCopyWithImpl<$Res, RoomTypeImage>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'room_type_id') String roomTypeId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'display_order') int displayOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$RoomTypeImageCopyWithImpl<$Res, $Val extends RoomTypeImage>
    implements $RoomTypeImageCopyWith<$Res> {
  _$RoomTypeImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomTypeImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomTypeId = null,
    Object? imageUrl = null,
    Object? displayOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            roomTypeId: null == roomTypeId
                ? _value.roomTypeId
                : roomTypeId // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            displayOrder: null == displayOrder
                ? _value.displayOrder
                : displayOrder // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$RoomTypeImageImplCopyWith<$Res>
    implements $RoomTypeImageCopyWith<$Res> {
  factory _$$RoomTypeImageImplCopyWith(
    _$RoomTypeImageImpl value,
    $Res Function(_$RoomTypeImageImpl) then,
  ) = __$$RoomTypeImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'room_type_id') String roomTypeId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'display_order') int displayOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$RoomTypeImageImplCopyWithImpl<$Res>
    extends _$RoomTypeImageCopyWithImpl<$Res, _$RoomTypeImageImpl>
    implements _$$RoomTypeImageImplCopyWith<$Res> {
  __$$RoomTypeImageImplCopyWithImpl(
    _$RoomTypeImageImpl _value,
    $Res Function(_$RoomTypeImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RoomTypeImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomTypeId = null,
    Object? imageUrl = null,
    Object? displayOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$RoomTypeImageImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        roomTypeId: null == roomTypeId
            ? _value.roomTypeId
            : roomTypeId // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        displayOrder: null == displayOrder
            ? _value.displayOrder
            : displayOrder // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$RoomTypeImageImpl implements _RoomTypeImage {
  const _$RoomTypeImageImpl({
    this.id,
    @JsonKey(name: 'room_type_id') required this.roomTypeId,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'display_order') required this.displayOrder,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$RoomTypeImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomTypeImageImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'room_type_id')
  final String roomTypeId;
  @override
  @JsonKey(name: 'image_url')
  final String imageUrl;
  @override
  @JsonKey(name: 'display_order')
  final int displayOrder;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'RoomTypeImage(id: $id, roomTypeId: $roomTypeId, imageUrl: $imageUrl, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomTypeImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomTypeId, roomTypeId) ||
                other.roomTypeId == roomTypeId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder) &&
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
    roomTypeId,
    imageUrl,
    displayOrder,
    createdAt,
    updatedAt,
  );

  /// Create a copy of RoomTypeImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomTypeImageImplCopyWith<_$RoomTypeImageImpl> get copyWith =>
      __$$RoomTypeImageImplCopyWithImpl<_$RoomTypeImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomTypeImageImplToJson(this);
  }
}

abstract class _RoomTypeImage implements RoomTypeImage {
  const factory _RoomTypeImage({
    final String? id,
    @JsonKey(name: 'room_type_id') required final String roomTypeId,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'display_order') required final int displayOrder,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$RoomTypeImageImpl;

  factory _RoomTypeImage.fromJson(Map<String, dynamic> json) =
      _$RoomTypeImageImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'room_type_id')
  String get roomTypeId;
  @override
  @JsonKey(name: 'image_url')
  String get imageUrl;
  @override
  @JsonKey(name: 'display_order')
  int get displayOrder;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of RoomTypeImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomTypeImageImplCopyWith<_$RoomTypeImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
