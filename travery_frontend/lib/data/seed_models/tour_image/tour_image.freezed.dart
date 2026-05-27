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
  @JsonKey(name: 'url')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'isThumnail')
  bool get isThumbnail => throw _privateConstructorUsedError;
  int get displayOrder => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'url') String imageUrl,
    @JsonKey(name: 'isThumnail') bool isThumbnail,
    int displayOrder,
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
    Object? imageUrl = null,
    Object? isThumbnail = null,
    Object? displayOrder = null,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            isThumbnail: null == isThumbnail
                ? _value.isThumbnail
                : isThumbnail // ignore: cast_nullable_to_non_nullable
                      as bool,
            displayOrder: null == displayOrder
                ? _value.displayOrder
                : displayOrder // ignore: cast_nullable_to_non_nullable
                      as int,
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
    @JsonKey(name: 'url') String imageUrl,
    @JsonKey(name: 'isThumnail') bool isThumbnail,
    int displayOrder,
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
    Object? imageUrl = null,
    Object? isThumbnail = null,
    Object? displayOrder = null,
  }) {
    return _then(
      _$TourImageImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        isThumbnail: null == isThumbnail
            ? _value.isThumbnail
            : isThumbnail // ignore: cast_nullable_to_non_nullable
                  as bool,
        displayOrder: null == displayOrder
            ? _value.displayOrder
            : displayOrder // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourImageImpl implements _TourImage {
  const _$TourImageImpl({
    this.id,
    @JsonKey(name: 'url') required this.imageUrl,
    @JsonKey(name: 'isThumnail') this.isThumbnail = false,
    this.displayOrder = 0,
  });

  factory _$TourImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImageImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'url')
  final String imageUrl;
  @override
  @JsonKey(name: 'isThumnail')
  final bool isThumbnail;
  @override
  @JsonKey()
  final int displayOrder;

  @override
  String toString() {
    return 'TourImage(id: $id, imageUrl: $imageUrl, isThumbnail: $isThumbnail, displayOrder: $displayOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.isThumbnail, isThumbnail) ||
                other.isThumbnail == isThumbnail) &&
            (identical(other.displayOrder, displayOrder) ||
                other.displayOrder == displayOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, imageUrl, isThumbnail, displayOrder);

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
    @JsonKey(name: 'url') required final String imageUrl,
    @JsonKey(name: 'isThumnail') final bool isThumbnail,
    final int displayOrder,
  }) = _$TourImageImpl;

  factory _TourImage.fromJson(Map<String, dynamic> json) =
      _$TourImageImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'url')
  String get imageUrl;
  @override
  @JsonKey(name: 'isThumnail')
  bool get isThumbnail;
  @override
  int get displayOrder;

  /// Create a copy of TourImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourImageImplCopyWith<_$TourImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
