// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Tour _$TourFromJson(Map<String, dynamic> json) {
  return _Tour.fromJson(json);
}

/// @nodoc
mixin _$Tour {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricePerAdult')
  double get pricePerAdult => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricePerChild')
  double get pricePerChild => throw _privateConstructorUsedError;
  @JsonKey(name: 'averageRating')
  double get averageRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratingCount')
  int get ratingCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'startLocation')
  String get startLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'durationDays')
  int get durationDays => throw _privateConstructorUsedError;

  /// RELATIONS
  List<TourImage>? get images => throw _privateConstructorUsedError;
  List<TourInstance>? get instances => throw _privateConstructorUsedError;

  /// Serializes this Tour to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourCopyWith<Tour> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourCopyWith<$Res> {
  factory $TourCopyWith(Tour value, $Res Function(Tour) then) =
      _$TourCopyWithImpl<$Res, Tour>;
  @useResult
  $Res call({
    String? id,
    String name,
    String? description,
    @JsonKey(name: 'pricePerAdult') double pricePerAdult,
    @JsonKey(name: 'pricePerChild') double pricePerChild,
    @JsonKey(name: 'averageRating') double averageRating,
    @JsonKey(name: 'ratingCount') int ratingCount,
    @JsonKey(name: 'startLocation') String startLocation,
    @JsonKey(name: 'durationDays') int durationDays,
    List<TourImage>? images,
    List<TourInstance>? instances,
  });
}

/// @nodoc
class _$TourCopyWithImpl<$Res, $Val extends Tour>
    implements $TourCopyWith<$Res> {
  _$TourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? pricePerAdult = null,
    Object? pricePerChild = null,
    Object? averageRating = null,
    Object? ratingCount = null,
    Object? startLocation = null,
    Object? durationDays = null,
    Object? images = freezed,
    Object? instances = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<TourImage>?,
            instances: freezed == instances
                ? _value.instances
                : instances // ignore: cast_nullable_to_non_nullable
                      as List<TourInstance>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TourImplCopyWith<$Res> implements $TourCopyWith<$Res> {
  factory _$$TourImplCopyWith(
    _$TourImpl value,
    $Res Function(_$TourImpl) then,
  ) = __$$TourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String name,
    String? description,
    @JsonKey(name: 'pricePerAdult') double pricePerAdult,
    @JsonKey(name: 'pricePerChild') double pricePerChild,
    @JsonKey(name: 'averageRating') double averageRating,
    @JsonKey(name: 'ratingCount') int ratingCount,
    @JsonKey(name: 'startLocation') String startLocation,
    @JsonKey(name: 'durationDays') int durationDays,
    List<TourImage>? images,
    List<TourInstance>? instances,
  });
}

/// @nodoc
class __$$TourImplCopyWithImpl<$Res>
    extends _$TourCopyWithImpl<$Res, _$TourImpl>
    implements _$$TourImplCopyWith<$Res> {
  __$$TourImplCopyWithImpl(_$TourImpl _value, $Res Function(_$TourImpl) _then)
    : super(_value, _then);

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? pricePerAdult = null,
    Object? pricePerChild = null,
    Object? averageRating = null,
    Object? ratingCount = null,
    Object? startLocation = null,
    Object? durationDays = null,
    Object? images = freezed,
    Object? instances = freezed,
  }) {
    return _then(
      _$TourImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<TourImage>?,
        instances: freezed == instances
            ? _value._instances
            : instances // ignore: cast_nullable_to_non_nullable
                  as List<TourInstance>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourImpl implements _Tour {
  const _$TourImpl({
    this.id,
    required this.name,
    this.description,
    @JsonKey(name: 'pricePerAdult') required this.pricePerAdult,
    @JsonKey(name: 'pricePerChild') required this.pricePerChild,
    @JsonKey(name: 'averageRating') this.averageRating = 0.0,
    @JsonKey(name: 'ratingCount') this.ratingCount = 0,
    @JsonKey(name: 'startLocation') this.startLocation = '',
    @JsonKey(name: 'durationDays') this.durationDays = 0,
    final List<TourImage>? images,
    final List<TourInstance>? instances,
  }) : _images = images,
       _instances = instances;

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'pricePerAdult')
  final double pricePerAdult;
  @override
  @JsonKey(name: 'pricePerChild')
  final double pricePerChild;
  @override
  @JsonKey(name: 'averageRating')
  final double averageRating;
  @override
  @JsonKey(name: 'ratingCount')
  final int ratingCount;
  @override
  @JsonKey(name: 'startLocation')
  final String startLocation;
  @override
  @JsonKey(name: 'durationDays')
  final int durationDays;

  /// RELATIONS
  final List<TourImage>? _images;

  /// RELATIONS
  @override
  List<TourImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TourInstance>? _instances;
  @override
  List<TourInstance>? get instances {
    final value = _instances;
    if (value == null) return null;
    if (_instances is EqualUnmodifiableListView) return _instances;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Tour(id: $id, name: $name, description: $description, pricePerAdult: $pricePerAdult, pricePerChild: $pricePerChild, averageRating: $averageRating, ratingCount: $ratingCount, startLocation: $startLocation, durationDays: $durationDays, images: $images, instances: $instances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImpl &&
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
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(
              other._instances,
              _instances,
            ));
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
    const DeepCollectionEquality().hash(_images),
    const DeepCollectionEquality().hash(_instances),
  );

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      __$$TourImplCopyWithImpl<_$TourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourImplToJson(this);
  }
}

abstract class _Tour implements Tour {
  const factory _Tour({
    final String? id,
    required final String name,
    final String? description,
    @JsonKey(name: 'pricePerAdult') required final double pricePerAdult,
    @JsonKey(name: 'pricePerChild') required final double pricePerChild,
    @JsonKey(name: 'averageRating') final double averageRating,
    @JsonKey(name: 'ratingCount') final int ratingCount,
    @JsonKey(name: 'startLocation') final String startLocation,
    @JsonKey(name: 'durationDays') final int durationDays,
    final List<TourImage>? images,
    final List<TourInstance>? instances,
  }) = _$TourImpl;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'pricePerAdult')
  double get pricePerAdult;
  @override
  @JsonKey(name: 'pricePerChild')
  double get pricePerChild;
  @override
  @JsonKey(name: 'averageRating')
  double get averageRating;
  @override
  @JsonKey(name: 'ratingCount')
  int get ratingCount;
  @override
  @JsonKey(name: 'startLocation')
  String get startLocation;
  @override
  @JsonKey(name: 'durationDays')
  int get durationDays;

  /// RELATIONS
  @override
  List<TourImage>? get images;
  @override
  List<TourInstance>? get instances;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
