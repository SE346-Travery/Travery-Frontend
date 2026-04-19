// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourImage _$TourImageFromJson(Map<String, dynamic> json) {
  return _TourImage.fromJson(json);
}

/// @nodoc
mixin _$TourImage {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_id')
  String get tourId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_order')
  int get displayOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TourImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourImageCopyWith<TourImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourImageCopyWith<$Res> {
  factory $TourImageCopyWith(TourImage value, $Res Function(TourImage) then) =
      _$TourImageCopyWithImpl<$Res, TourImage>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_id') String tourId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'display_order') int displayOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$TourImageCopyWithImpl<$Res, $Val extends TourImage>
    implements $TourImageCopyWith<$Res> {
  _$TourImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourId = null,
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
            tourId: null == tourId
                ? _value.tourId
                : tourId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TourImageImplCopyWith<$Res>
    implements $TourImageCopyWith<$Res> {
  factory _$$TourImageImplCopyWith(
    _$TourImageImpl value,
    $Res Function(_$TourImageImpl) then,
  ) = __$$TourImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_id') String tourId,
    @JsonKey(name: 'image_url') String imageUrl,
    @JsonKey(name: 'display_order') int displayOrder,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$TourImageImplCopyWithImpl<$Res>
    extends _$TourImageCopyWithImpl<$Res, _$TourImageImpl>
    implements _$$TourImageImplCopyWith<$Res> {
  __$$TourImageImplCopyWithImpl(
    _$TourImageImpl _value,
    $Res Function(_$TourImageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourId = null,
    Object? imageUrl = null,
    Object? displayOrder = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$TourImageImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourId: null == tourId
            ? _value.tourId
            : tourId // ignore: cast_nullable_to_non_nullable
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
class _$TourImageImpl implements _TourImage {
  const _$TourImageImpl({
    this.id,
    @JsonKey(name: 'tour_id') required this.tourId,
    @JsonKey(name: 'image_url') required this.imageUrl,
    @JsonKey(name: 'display_order') required this.displayOrder,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$TourImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImageImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'tour_id')
  final String tourId;
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
    return 'TourImage(id: $id, tourId: $tourId, imageUrl: $imageUrl, displayOrder: $displayOrder, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
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
    tourId,
    imageUrl,
    displayOrder,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TourImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourImageImplCopyWith<_$TourImageImpl> get copyWith =>
      __$$TourImageImplCopyWithImpl<_$TourImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourImageImplToJson(this);
  }
}

abstract class _TourImage implements TourImage {
  const factory _TourImage({
    final String? id,
    @JsonKey(name: 'tour_id') required final String tourId,
    @JsonKey(name: 'image_url') required final String imageUrl,
    @JsonKey(name: 'display_order') required final int displayOrder,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$TourImageImpl;

  factory _TourImage.fromJson(Map<String, dynamic> json) =
      _$TourImageImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'tour_id')
  String get tourId;
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

  /// Create a copy of TourImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourImageImplCopyWith<_$TourImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
