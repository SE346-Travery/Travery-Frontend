// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourDetailResponse _$TourDetailResponseFromJson(Map<String, dynamic> json) {
  return _TourDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$TourDetailResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get pricePerAdult => throw _privateConstructorUsedError;
  double get pricePerChild => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  String get startLocation => throw _privateConstructorUsedError;
  int get durationDays => throw _privateConstructorUsedError;
  List<TourItineraryResponse> get itineraryList =>
      throw _privateConstructorUsedError;
  List<ImageResponse> get images => throw _privateConstructorUsedError;
  DestinationResponse? get destination => throw _privateConstructorUsedError;
  RefundPolicyResponse? get refundPolicy => throw _privateConstructorUsedError;

  /// Serializes this TourDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourDetailResponseCopyWith<TourDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourDetailResponseCopyWith<$Res> {
  factory $TourDetailResponseCopyWith(
    TourDetailResponse value,
    $Res Function(TourDetailResponse) then,
  ) = _$TourDetailResponseCopyWithImpl<$Res, TourDetailResponse>;
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    double pricePerAdult,
    double pricePerChild,
    double averageRating,
    int ratingCount,
    String startLocation,
    int durationDays,
    List<TourItineraryResponse> itineraryList,
    List<ImageResponse> images,
    DestinationResponse? destination,
    RefundPolicyResponse? refundPolicy,
  });

  $DestinationResponseCopyWith<$Res>? get destination;
  $RefundPolicyResponseCopyWith<$Res>? get refundPolicy;
}

/// @nodoc
class _$TourDetailResponseCopyWithImpl<$Res, $Val extends TourDetailResponse>
    implements $TourDetailResponseCopyWith<$Res> {
  _$TourDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? pricePerAdult = null,
    Object? pricePerChild = null,
    Object? averageRating = null,
    Object? ratingCount = null,
    Object? startLocation = null,
    Object? durationDays = null,
    Object? itineraryList = null,
    Object? images = null,
    Object? destination = freezed,
    Object? refundPolicy = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            pricePerAdult: null == pricePerAdult
                ? _value.pricePerAdult
                : pricePerAdult // ignore: cast_nullable_to_non_nullable
                      as double,
            pricePerChild: null == pricePerChild
                ? _value.pricePerChild
                : pricePerChild // ignore: cast_nullable_to_non_nullable
                      as double,
            averageRating: null == averageRating
                ? _value.averageRating
                : averageRating // ignore: cast_nullable_to_non_nullable
                      as double,
            ratingCount: null == ratingCount
                ? _value.ratingCount
                : ratingCount // ignore: cast_nullable_to_non_nullable
                      as int,
            startLocation: null == startLocation
                ? _value.startLocation
                : startLocation // ignore: cast_nullable_to_non_nullable
                      as String,
            durationDays: null == durationDays
                ? _value.durationDays
                : durationDays // ignore: cast_nullable_to_non_nullable
                      as int,
            itineraryList: null == itineraryList
                ? _value.itineraryList
                : itineraryList // ignore: cast_nullable_to_non_nullable
                      as List<TourItineraryResponse>,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<ImageResponse>,
            destination: freezed == destination
                ? _value.destination
                : destination // ignore: cast_nullable_to_non_nullable
                      as DestinationResponse?,
            refundPolicy: freezed == refundPolicy
                ? _value.refundPolicy
                : refundPolicy // ignore: cast_nullable_to_non_nullable
                      as RefundPolicyResponse?,
          )
          as $Val,
    );
  }

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DestinationResponseCopyWith<$Res>? get destination {
    if (_value.destination == null) {
      return null;
    }

    return $DestinationResponseCopyWith<$Res>(_value.destination!, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RefundPolicyResponseCopyWith<$Res>? get refundPolicy {
    if (_value.refundPolicy == null) {
      return null;
    }

    return $RefundPolicyResponseCopyWith<$Res>(_value.refundPolicy!, (value) {
      return _then(_value.copyWith(refundPolicy: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourDetailResponseImplCopyWith<$Res>
    implements $TourDetailResponseCopyWith<$Res> {
  factory _$$TourDetailResponseImplCopyWith(
    _$TourDetailResponseImpl value,
    $Res Function(_$TourDetailResponseImpl) then,
  ) = __$$TourDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    String description,
    double pricePerAdult,
    double pricePerChild,
    double averageRating,
    int ratingCount,
    String startLocation,
    int durationDays,
    List<TourItineraryResponse> itineraryList,
    List<ImageResponse> images,
    DestinationResponse? destination,
    RefundPolicyResponse? refundPolicy,
  });

  @override
  $DestinationResponseCopyWith<$Res>? get destination;
  @override
  $RefundPolicyResponseCopyWith<$Res>? get refundPolicy;
}

/// @nodoc
class __$$TourDetailResponseImplCopyWithImpl<$Res>
    extends _$TourDetailResponseCopyWithImpl<$Res, _$TourDetailResponseImpl>
    implements _$$TourDetailResponseImplCopyWith<$Res> {
  __$$TourDetailResponseImplCopyWithImpl(
    _$TourDetailResponseImpl _value,
    $Res Function(_$TourDetailResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? pricePerAdult = null,
    Object? pricePerChild = null,
    Object? averageRating = null,
    Object? ratingCount = null,
    Object? startLocation = null,
    Object? durationDays = null,
    Object? itineraryList = null,
    Object? images = null,
    Object? destination = freezed,
    Object? refundPolicy = freezed,
  }) {
    return _then(
      _$TourDetailResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        pricePerAdult: null == pricePerAdult
            ? _value.pricePerAdult
            : pricePerAdult // ignore: cast_nullable_to_non_nullable
                  as double,
        pricePerChild: null == pricePerChild
            ? _value.pricePerChild
            : pricePerChild // ignore: cast_nullable_to_non_nullable
                  as double,
        averageRating: null == averageRating
            ? _value.averageRating
            : averageRating // ignore: cast_nullable_to_non_nullable
                  as double,
        ratingCount: null == ratingCount
            ? _value.ratingCount
            : ratingCount // ignore: cast_nullable_to_non_nullable
                  as int,
        startLocation: null == startLocation
            ? _value.startLocation
            : startLocation // ignore: cast_nullable_to_non_nullable
                  as String,
        durationDays: null == durationDays
            ? _value.durationDays
            : durationDays // ignore: cast_nullable_to_non_nullable
                  as int,
        itineraryList: null == itineraryList
            ? _value._itineraryList
            : itineraryList // ignore: cast_nullable_to_non_nullable
                  as List<TourItineraryResponse>,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<ImageResponse>,
        destination: freezed == destination
            ? _value.destination
            : destination // ignore: cast_nullable_to_non_nullable
                  as DestinationResponse?,
        refundPolicy: freezed == refundPolicy
            ? _value.refundPolicy
            : refundPolicy // ignore: cast_nullable_to_non_nullable
                  as RefundPolicyResponse?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourDetailResponseImpl implements _TourDetailResponse {
  const _$TourDetailResponseImpl({
    required this.id,
    required this.name,
    this.description = '',
    required this.pricePerAdult,
    required this.pricePerChild,
    this.averageRating = 0.0,
    this.ratingCount = 0,
    this.startLocation = '',
    this.durationDays = 0,
    final List<TourItineraryResponse> itineraryList = const [],
    final List<ImageResponse> images = const [],
    this.destination,
    this.refundPolicy,
  }) : _itineraryList = itineraryList,
       _images = images;

  factory _$TourDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourDetailResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  final double pricePerAdult;
  @override
  final double pricePerChild;
  @override
  @JsonKey()
  final double averageRating;
  @override
  @JsonKey()
  final int ratingCount;
  @override
  @JsonKey()
  final String startLocation;
  @override
  @JsonKey()
  final int durationDays;
  final List<TourItineraryResponse> _itineraryList;
  @override
  @JsonKey()
  List<TourItineraryResponse> get itineraryList {
    if (_itineraryList is EqualUnmodifiableListView) return _itineraryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itineraryList);
  }

  final List<ImageResponse> _images;
  @override
  @JsonKey()
  List<ImageResponse> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final DestinationResponse? destination;
  @override
  final RefundPolicyResponse? refundPolicy;

  @override
  String toString() {
    return 'TourDetailResponse(id: $id, name: $name, description: $description, pricePerAdult: $pricePerAdult, pricePerChild: $pricePerChild, averageRating: $averageRating, ratingCount: $ratingCount, startLocation: $startLocation, durationDays: $durationDays, itineraryList: $itineraryList, images: $images, destination: $destination, refundPolicy: $refundPolicy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pricePerAdult, pricePerAdult) ||
                other.pricePerAdult == pricePerAdult) &&
            (identical(other.pricePerChild, pricePerChild) ||
                other.pricePerChild == pricePerChild) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.startLocation, startLocation) ||
                other.startLocation == startLocation) &&
            (identical(other.durationDays, durationDays) ||
                other.durationDays == durationDays) &&
            const DeepCollectionEquality().equals(
              other._itineraryList,
              _itineraryList,
            ) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.refundPolicy, refundPolicy) ||
                other.refundPolicy == refundPolicy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    pricePerAdult,
    pricePerChild,
    averageRating,
    ratingCount,
    startLocation,
    durationDays,
    const DeepCollectionEquality().hash(_itineraryList),
    const DeepCollectionEquality().hash(_images),
    destination,
    refundPolicy,
  );

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourDetailResponseImplCopyWith<_$TourDetailResponseImpl> get copyWith =>
      __$$TourDetailResponseImplCopyWithImpl<_$TourDetailResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TourDetailResponseImplToJson(this);
  }
}

abstract class _TourDetailResponse implements TourDetailResponse {
  const factory _TourDetailResponse({
    required final String id,
    required final String name,
    final String description,
    required final double pricePerAdult,
    required final double pricePerChild,
    final double averageRating,
    final int ratingCount,
    final String startLocation,
    final int durationDays,
    final List<TourItineraryResponse> itineraryList,
    final List<ImageResponse> images,
    final DestinationResponse? destination,
    final RefundPolicyResponse? refundPolicy,
  }) = _$TourDetailResponseImpl;

  factory _TourDetailResponse.fromJson(Map<String, dynamic> json) =
      _$TourDetailResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  double get pricePerAdult;
  @override
  double get pricePerChild;
  @override
  double get averageRating;
  @override
  int get ratingCount;
  @override
  String get startLocation;
  @override
  int get durationDays;
  @override
  List<TourItineraryResponse> get itineraryList;
  @override
  List<ImageResponse> get images;
  @override
  DestinationResponse? get destination;
  @override
  RefundPolicyResponse? get refundPolicy;

  /// Create a copy of TourDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourDetailResponseImplCopyWith<_$TourDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
