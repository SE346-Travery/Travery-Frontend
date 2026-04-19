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
  Map<String, dynamic>? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_adult')
  double get pricePerAdult => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_child')
  double get pricePerChild => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_capacity')
  int get maxCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_capacity')
  int get minCapacity => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_custom')
  bool get isCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_for_user_id')
  String? get createdForUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  TourStatus get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  String? get hotelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'couch_id')
  String? get couchId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    Map<String, dynamic>? description,
    @JsonKey(name: 'price_per_adult') double pricePerAdult,
    @JsonKey(name: 'price_per_child') double pricePerChild,
    @JsonKey(name: 'max_capacity') int maxCapacity,
    @JsonKey(name: 'min_capacity') int minCapacity,
    @JsonKey(name: 'is_custom') bool isCustom,
    @JsonKey(name: 'created_for_user_id') String? createdForUserId,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
    TourStatus status,
    @JsonKey(name: 'hotel_id') String? hotelId,
    @JsonKey(name: 'couch_id') String? couchId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    Object? maxCapacity = null,
    Object? minCapacity = null,
    Object? isCustom = null,
    Object? createdForUserId = freezed,
    Object? expiresAt = freezed,
    Object? status = null,
    Object? hotelId = freezed,
    Object? couchId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
                      as Map<String, dynamic>?,
            pricePerAdult: null == pricePerAdult
                ? _value.pricePerAdult
                : pricePerAdult // ignore: cast_nullable_to_non_nullable
                      as double,
            pricePerChild: null == pricePerChild
                ? _value.pricePerChild
                : pricePerChild // ignore: cast_nullable_to_non_nullable
                      as double,
            maxCapacity: null == maxCapacity
                ? _value.maxCapacity
                : maxCapacity // ignore: cast_nullable_to_non_nullable
                      as int,
            minCapacity: null == minCapacity
                ? _value.minCapacity
                : minCapacity // ignore: cast_nullable_to_non_nullable
                      as int,
            isCustom: null == isCustom
                ? _value.isCustom
                : isCustom // ignore: cast_nullable_to_non_nullable
                      as bool,
            createdForUserId: freezed == createdForUserId
                ? _value.createdForUserId
                : createdForUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiresAt: freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as TourStatus,
            hotelId: freezed == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
                      as String?,
            couchId: freezed == couchId
                ? _value.couchId
                : couchId // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
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
    Map<String, dynamic>? description,
    @JsonKey(name: 'price_per_adult') double pricePerAdult,
    @JsonKey(name: 'price_per_child') double pricePerChild,
    @JsonKey(name: 'max_capacity') int maxCapacity,
    @JsonKey(name: 'min_capacity') int minCapacity,
    @JsonKey(name: 'is_custom') bool isCustom,
    @JsonKey(name: 'created_for_user_id') String? createdForUserId,
    @JsonKey(name: 'expires_at') DateTime? expiresAt,
    TourStatus status,
    @JsonKey(name: 'hotel_id') String? hotelId,
    @JsonKey(name: 'couch_id') String? couchId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    Object? maxCapacity = null,
    Object? minCapacity = null,
    Object? isCustom = null,
    Object? createdForUserId = freezed,
    Object? expiresAt = freezed,
    Object? status = null,
    Object? hotelId = freezed,
    Object? couchId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            ? _value._description
            : description // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        pricePerAdult: null == pricePerAdult
            ? _value.pricePerAdult
            : pricePerAdult // ignore: cast_nullable_to_non_nullable
                  as double,
        pricePerChild: null == pricePerChild
            ? _value.pricePerChild
            : pricePerChild // ignore: cast_nullable_to_non_nullable
                  as double,
        maxCapacity: null == maxCapacity
            ? _value.maxCapacity
            : maxCapacity // ignore: cast_nullable_to_non_nullable
                  as int,
        minCapacity: null == minCapacity
            ? _value.minCapacity
            : minCapacity // ignore: cast_nullable_to_non_nullable
                  as int,
        isCustom: null == isCustom
            ? _value.isCustom
            : isCustom // ignore: cast_nullable_to_non_nullable
                  as bool,
        createdForUserId: freezed == createdForUserId
            ? _value.createdForUserId
            : createdForUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiresAt: freezed == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as TourStatus,
        hotelId: freezed == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String?,
        couchId: freezed == couchId
            ? _value.couchId
            : couchId // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
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
    final Map<String, dynamic>? description,
    @JsonKey(name: 'price_per_adult') required this.pricePerAdult,
    @JsonKey(name: 'price_per_child') required this.pricePerChild,
    @JsonKey(name: 'max_capacity') required this.maxCapacity,
    @JsonKey(name: 'min_capacity') required this.minCapacity,
    @JsonKey(name: 'is_custom') required this.isCustom,
    @JsonKey(name: 'created_for_user_id') this.createdForUserId,
    @JsonKey(name: 'expires_at') this.expiresAt,
    required this.status,
    @JsonKey(name: 'hotel_id') this.hotelId,
    @JsonKey(name: 'couch_id') this.couchId,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    final List<TourImage>? images,
    final List<TourInstance>? instances,
  }) : _description = description,
       _images = images,
       _instances = instances;

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  final Map<String, dynamic>? _description;
  @override
  Map<String, dynamic>? get description {
    final value = _description;
    if (value == null) return null;
    if (_description is EqualUnmodifiableMapView) return _description;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'price_per_adult')
  final double pricePerAdult;
  @override
  @JsonKey(name: 'price_per_child')
  final double pricePerChild;
  @override
  @JsonKey(name: 'max_capacity')
  final int maxCapacity;
  @override
  @JsonKey(name: 'min_capacity')
  final int minCapacity;
  @override
  @JsonKey(name: 'is_custom')
  final bool isCustom;
  @override
  @JsonKey(name: 'created_for_user_id')
  final String? createdForUserId;
  @override
  @JsonKey(name: 'expires_at')
  final DateTime? expiresAt;
  @override
  final TourStatus status;
  @override
  @JsonKey(name: 'hotel_id')
  final String? hotelId;
  @override
  @JsonKey(name: 'couch_id')
  final String? couchId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

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
    return 'Tour(id: $id, name: $name, description: $description, pricePerAdult: $pricePerAdult, pricePerChild: $pricePerChild, maxCapacity: $maxCapacity, minCapacity: $minCapacity, isCustom: $isCustom, createdForUserId: $createdForUserId, expiresAt: $expiresAt, status: $status, hotelId: $hotelId, couchId: $couchId, createdAt: $createdAt, updatedAt: $updatedAt, images: $images, instances: $instances)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
              other._description,
              _description,
            ) &&
            (identical(other.pricePerAdult, pricePerAdult) ||
                other.pricePerAdult == pricePerAdult) &&
            (identical(other.pricePerChild, pricePerChild) ||
                other.pricePerChild == pricePerChild) &&
            (identical(other.maxCapacity, maxCapacity) ||
                other.maxCapacity == maxCapacity) &&
            (identical(other.minCapacity, minCapacity) ||
                other.minCapacity == minCapacity) &&
            (identical(other.isCustom, isCustom) ||
                other.isCustom == isCustom) &&
            (identical(other.createdForUserId, createdForUserId) ||
                other.createdForUserId == createdForUserId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.couchId, couchId) || other.couchId == couchId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
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
    const DeepCollectionEquality().hash(_description),
    pricePerAdult,
    pricePerChild,
    maxCapacity,
    minCapacity,
    isCustom,
    createdForUserId,
    expiresAt,
    status,
    hotelId,
    couchId,
    createdAt,
    updatedAt,
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
    final Map<String, dynamic>? description,
    @JsonKey(name: 'price_per_adult') required final double pricePerAdult,
    @JsonKey(name: 'price_per_child') required final double pricePerChild,
    @JsonKey(name: 'max_capacity') required final int maxCapacity,
    @JsonKey(name: 'min_capacity') required final int minCapacity,
    @JsonKey(name: 'is_custom') required final bool isCustom,
    @JsonKey(name: 'created_for_user_id') final String? createdForUserId,
    @JsonKey(name: 'expires_at') final DateTime? expiresAt,
    required final TourStatus status,
    @JsonKey(name: 'hotel_id') final String? hotelId,
    @JsonKey(name: 'couch_id') final String? couchId,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final List<TourImage>? images,
    final List<TourInstance>? instances,
  }) = _$TourImpl;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  Map<String, dynamic>? get description;
  @override
  @JsonKey(name: 'price_per_adult')
  double get pricePerAdult;
  @override
  @JsonKey(name: 'price_per_child')
  double get pricePerChild;
  @override
  @JsonKey(name: 'max_capacity')
  int get maxCapacity;
  @override
  @JsonKey(name: 'min_capacity')
  int get minCapacity;
  @override
  @JsonKey(name: 'is_custom')
  bool get isCustom;
  @override
  @JsonKey(name: 'created_for_user_id')
  String? get createdForUserId;
  @override
  @JsonKey(name: 'expires_at')
  DateTime? get expiresAt;
  @override
  TourStatus get status;
  @override
  @JsonKey(name: 'hotel_id')
  String? get hotelId;
  @override
  @JsonKey(name: 'couch_id')
  String? get couchId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

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
