// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_itinerary_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourItineraryResponse _$TourItineraryResponseFromJson(
  Map<String, dynamic> json,
) {
  return _TourItineraryResponse.fromJson(json);
}

/// @nodoc
mixin _$TourItineraryResponse {
  int get dayNumber => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<ImageResponse> get images => throw _privateConstructorUsedError;

  /// Serializes this TourItineraryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourItineraryResponseCopyWith<TourItineraryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourItineraryResponseCopyWith<$Res> {
  factory $TourItineraryResponseCopyWith(
    TourItineraryResponse value,
    $Res Function(TourItineraryResponse) then,
  ) = _$TourItineraryResponseCopyWithImpl<$Res, TourItineraryResponse>;
  @useResult
  $Res call({
    int dayNumber,
    String title,
    String description,
    List<ImageResponse> images,
  });
}

/// @nodoc
class _$TourItineraryResponseCopyWithImpl<
  $Res,
  $Val extends TourItineraryResponse
>
    implements $TourItineraryResponseCopyWith<$Res> {
  _$TourItineraryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? title = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(
      _value.copyWith(
            dayNumber: null == dayNumber
                ? _value.dayNumber
                : dayNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ImageResponse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TourItineraryResponseImplCopyWith<$Res>
    implements $TourItineraryResponseCopyWith<$Res> {
  factory _$$TourItineraryResponseImplCopyWith(
    _$TourItineraryResponseImpl value,
    $Res Function(_$TourItineraryResponseImpl) then,
  ) = __$$TourItineraryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int dayNumber,
    String title,
    String description,
    List<ImageResponse> images,
  });
}

/// @nodoc
class __$$TourItineraryResponseImplCopyWithImpl<$Res>
    extends
        _$TourItineraryResponseCopyWithImpl<$Res, _$TourItineraryResponseImpl>
    implements _$$TourItineraryResponseImplCopyWith<$Res> {
  __$$TourItineraryResponseImplCopyWithImpl(
    _$TourItineraryResponseImpl _value,
    $Res Function(_$TourItineraryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayNumber = null,
    Object? title = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(
      _$TourItineraryResponseImpl(
        dayNumber: null == dayNumber
            ? _value.dayNumber
            : dayNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ImageResponse>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourItineraryResponseImpl implements _TourItineraryResponse {
  const _$TourItineraryResponseImpl({
    required this.dayNumber,
    required this.title,
    required this.description,
    final List<ImageResponse> images = const [],
  }) : _images = images;

  factory _$TourItineraryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourItineraryResponseImplFromJson(json);

  @override
  final int dayNumber;
  @override
  final String title;
  @override
  final String description;
  final List<ImageResponse> _images;
  @override
  @JsonKey()
  List<ImageResponse> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'TourItineraryResponse(dayNumber: $dayNumber, title: $title, description: $description, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourItineraryResponseImpl &&
            (identical(other.dayNumber, dayNumber) ||
                other.dayNumber == dayNumber) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    dayNumber,
    title,
    description,
    const DeepCollectionEquality().hash(_images),
  );

  /// Create a copy of TourItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourItineraryResponseImplCopyWith<_$TourItineraryResponseImpl>
  get copyWith =>
      __$$TourItineraryResponseImplCopyWithImpl<_$TourItineraryResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TourItineraryResponseImplToJson(this);
  }
}

abstract class _TourItineraryResponse implements TourItineraryResponse {
  const factory _TourItineraryResponse({
    required final int dayNumber,
    required final String title,
    required final String description,
    final List<ImageResponse> images,
  }) = _$TourItineraryResponseImpl;

  factory _TourItineraryResponse.fromJson(Map<String, dynamic> json) =
      _$TourItineraryResponseImpl.fromJson;

  @override
  int get dayNumber;
  @override
  String get title;
  @override
  String get description;
  @override
  List<ImageResponse> get images;

  /// Create a copy of TourItineraryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourItineraryResponseImplCopyWith<_$TourItineraryResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}
