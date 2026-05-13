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
  String? get coordinatorId => throw _privateConstructorUsedError;
  String? get hotelId => throw _privateConstructorUsedError;
  String? get requestedByUserId => throw _privateConstructorUsedError;
  String? get destinationId => throw _privateConstructorUsedError;
  String? get pickupLocation => throw _privateConstructorUsedError;
  double get pricePerAdult => throw _privateConstructorUsedError;
  double get pricePerChild => throw _privateConstructorUsedError;
  bool get isCustom => throw _privateConstructorUsedError;
  String? get refundPolicyId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
    String? coordinatorId,
    String? hotelId,
    String? requestedByUserId,
    String? destinationId,
    String? pickupLocation,
    double pricePerAdult,
    double pricePerChild,
    bool isCustom,
    String? refundPolicyId,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    Object? coordinatorId = freezed,
    Object? hotelId = freezed,
    Object? requestedByUserId = freezed,
    Object? destinationId = freezed,
    Object? pickupLocation = freezed,
    Object? pricePerAdult = null,
    Object? pricePerChild = null,
    Object? isCustom = null,
    Object? refundPolicyId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
            coordinatorId: freezed == coordinatorId
                ? _value.coordinatorId
                : coordinatorId // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelId: freezed == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
                      as String?,
            requestedByUserId: freezed == requestedByUserId
                ? _value.requestedByUserId
                : requestedByUserId // ignore: cast_nullable_to_non_nullable
                      as String?,
            destinationId: freezed == destinationId
                ? _value.destinationId
                : destinationId // ignore: cast_nullable_to_non_nullable
                      as String?,
            pickupLocation: freezed == pickupLocation
                ? _value.pickupLocation
                : pickupLocation // ignore: cast_nullable_to_non_nullable
                      as String?,
            pricePerAdult: null == pricePerAdult
                ? _value.pricePerAdult
                : pricePerAdult // ignore: cast_nullable_to_non_nullable
                      as double,
            pricePerChild: null == pricePerChild
                ? _value.pricePerChild
                : pricePerChild // ignore: cast_nullable_to_non_nullable
                      as double,
            isCustom: null == isCustom
                ? _value.isCustom
                : isCustom // ignore: cast_nullable_to_non_nullable
                      as bool,
            refundPolicyId: freezed == refundPolicyId
                ? _value.refundPolicyId
                : refundPolicyId // ignore: cast_nullable_to_non_nullable
                      as String?,
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
    String? coordinatorId,
    String? hotelId,
    String? requestedByUserId,
    String? destinationId,
    String? pickupLocation,
    double pricePerAdult,
    double pricePerChild,
    bool isCustom,
    String? refundPolicyId,
    DateTime? createdAt,
    DateTime? updatedAt,
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
    Object? coordinatorId = freezed,
    Object? hotelId = freezed,
    Object? requestedByUserId = freezed,
    Object? destinationId = freezed,
    Object? pickupLocation = freezed,
    Object? pricePerAdult = null,
    Object? pricePerChild = null,
    Object? isCustom = null,
    Object? refundPolicyId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
        coordinatorId: freezed == coordinatorId
            ? _value.coordinatorId
            : coordinatorId // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelId: freezed == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
                  as String?,
        requestedByUserId: freezed == requestedByUserId
            ? _value.requestedByUserId
            : requestedByUserId // ignore: cast_nullable_to_non_nullable
                  as String?,
        destinationId: freezed == destinationId
            ? _value.destinationId
            : destinationId // ignore: cast_nullable_to_non_nullable
                  as String?,
        pickupLocation: freezed == pickupLocation
            ? _value.pickupLocation
            : pickupLocation // ignore: cast_nullable_to_non_nullable
                  as String?,
        pricePerAdult: null == pricePerAdult
            ? _value.pricePerAdult
            : pricePerAdult // ignore: cast_nullable_to_non_nullable
                  as double,
        pricePerChild: null == pricePerChild
            ? _value.pricePerChild
            : pricePerChild // ignore: cast_nullable_to_non_nullable
                  as double,
        isCustom: null == isCustom
            ? _value.isCustom
            : isCustom // ignore: cast_nullable_to_non_nullable
                  as bool,
        refundPolicyId: freezed == refundPolicyId
            ? _value.refundPolicyId
            : refundPolicyId // ignore: cast_nullable_to_non_nullable
                  as String?,
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
class _$TourImpl implements _Tour {
  const _$TourImpl({
    this.id,
    required this.name,
    this.description,
    this.coordinatorId,
    this.hotelId,
    this.requestedByUserId,
    this.destinationId,
    this.pickupLocation,
    required this.pricePerAdult,
    required this.pricePerChild,
    this.isCustom = false,
    this.refundPolicyId,
    this.createdAt,
    this.updatedAt,
  });

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String? coordinatorId;
  @override
  final String? hotelId;
  @override
  final String? requestedByUserId;
  @override
  final String? destinationId;
  @override
  final String? pickupLocation;
  @override
  final double pricePerAdult;
  @override
  final double pricePerChild;
  @override
  @JsonKey()
  final bool isCustom;
  @override
  final String? refundPolicyId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Tour(id: $id, name: $name, description: $description, coordinatorId: $coordinatorId, hotelId: $hotelId, requestedByUserId: $requestedByUserId, destinationId: $destinationId, pickupLocation: $pickupLocation, pricePerAdult: $pricePerAdult, pricePerChild: $pricePerChild, isCustom: $isCustom, refundPolicyId: $refundPolicyId, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.coordinatorId, coordinatorId) ||
                other.coordinatorId == coordinatorId) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.requestedByUserId, requestedByUserId) ||
                other.requestedByUserId == requestedByUserId) &&
            (identical(other.destinationId, destinationId) ||
                other.destinationId == destinationId) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.pricePerAdult, pricePerAdult) ||
                other.pricePerAdult == pricePerAdult) &&
            (identical(other.pricePerChild, pricePerChild) ||
                other.pricePerChild == pricePerChild) &&
            (identical(other.isCustom, isCustom) ||
                other.isCustom == isCustom) &&
            (identical(other.refundPolicyId, refundPolicyId) ||
                other.refundPolicyId == refundPolicyId) &&
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
    name,
    description,
    coordinatorId,
    hotelId,
    requestedByUserId,
    destinationId,
    pickupLocation,
    pricePerAdult,
    pricePerChild,
    isCustom,
    refundPolicyId,
    createdAt,
    updatedAt,
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
    final String? coordinatorId,
    final String? hotelId,
    final String? requestedByUserId,
    final String? destinationId,
    final String? pickupLocation,
    required final double pricePerAdult,
    required final double pricePerChild,
    final bool isCustom,
    final String? refundPolicyId,
    final DateTime? createdAt,
    final DateTime? updatedAt,
  }) = _$TourImpl;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  String? get coordinatorId;
  @override
  String? get hotelId;
  @override
  String? get requestedByUserId;
  @override
  String? get destinationId;
  @override
  String? get pickupLocation;
  @override
  double get pricePerAdult;
  @override
  double get pricePerChild;
  @override
  bool get isCustom;
  @override
  String? get refundPolicyId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
