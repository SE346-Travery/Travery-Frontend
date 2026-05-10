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
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinator_id')
  String? get coordinatorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  String? get hotelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'requested_by_user_id')
  String? get requestedByUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'destination_id')
  String? get destinationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickup_location')
  String? get pickupLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_adult')
  double get pricePerAdult => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per_child')
  double get pricePerChild => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_custom')
  bool get isCustom => throw _privateConstructorUsedError;
  @JsonKey(name: 'refund_policy_id')
  String? get refundPolicyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
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
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'coordinator_id') String? coordinatorId,
    @JsonKey(name: 'hotel_id') String? hotelId,
    @JsonKey(name: 'requested_by_user_id') String? requestedByUserId,
    @JsonKey(name: 'destination_id') String? destinationId,
    @JsonKey(name: 'pickup_location') String? pickupLocation,
    @JsonKey(name: 'price_per_adult') double pricePerAdult,
    @JsonKey(name: 'price_per_child') double pricePerChild,
    @JsonKey(name: 'is_custom') bool isCustom,
    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'coordinator_id') String? coordinatorId,
    @JsonKey(name: 'hotel_id') String? hotelId,
    @JsonKey(name: 'requested_by_user_id') String? requestedByUserId,
    @JsonKey(name: 'destination_id') String? destinationId,
    @JsonKey(name: 'pickup_location') String? pickupLocation,
    @JsonKey(name: 'price_per_adult') double pricePerAdult,
    @JsonKey(name: 'price_per_child') double pricePerChild,
    @JsonKey(name: 'is_custom') bool isCustom,
    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
    @JsonKey(name: 'name') required this.name,
    @JsonKey(name: 'description') this.description,
    @JsonKey(name: 'coordinator_id') this.coordinatorId,
    @JsonKey(name: 'hotel_id') this.hotelId,
    @JsonKey(name: 'requested_by_user_id') this.requestedByUserId,
    @JsonKey(name: 'destination_id') this.destinationId,
    @JsonKey(name: 'pickup_location') this.pickupLocation,
    @JsonKey(name: 'price_per_adult') required this.pricePerAdult,
    @JsonKey(name: 'price_per_child') required this.pricePerChild,
    @JsonKey(name: 'is_custom') this.isCustom = false,
    @JsonKey(name: 'refund_policy_id') this.refundPolicyId,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$TourImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'coordinator_id')
  final String? coordinatorId;
  @override
  @JsonKey(name: 'hotel_id')
  final String? hotelId;
  @override
  @JsonKey(name: 'requested_by_user_id')
  final String? requestedByUserId;
  @override
  @JsonKey(name: 'destination_id')
  final String? destinationId;
  @override
  @JsonKey(name: 'pickup_location')
  final String? pickupLocation;
  @override
  @JsonKey(name: 'price_per_adult')
  final double pricePerAdult;
  @override
  @JsonKey(name: 'price_per_child')
  final double pricePerChild;
  @override
  @JsonKey(name: 'is_custom')
  final bool isCustom;
  @override
  @JsonKey(name: 'refund_policy_id')
  final String? refundPolicyId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
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
    @JsonKey(name: 'name') required final String name,
    @JsonKey(name: 'description') final String? description,
    @JsonKey(name: 'coordinator_id') final String? coordinatorId,
    @JsonKey(name: 'hotel_id') final String? hotelId,
    @JsonKey(name: 'requested_by_user_id') final String? requestedByUserId,
    @JsonKey(name: 'destination_id') final String? destinationId,
    @JsonKey(name: 'pickup_location') final String? pickupLocation,
    @JsonKey(name: 'price_per_adult') required final double pricePerAdult,
    @JsonKey(name: 'price_per_child') required final double pricePerChild,
    @JsonKey(name: 'is_custom') final bool isCustom,
    @JsonKey(name: 'refund_policy_id') final String? refundPolicyId,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$TourImpl;

  factory _Tour.fromJson(Map<String, dynamic> json) = _$TourImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'coordinator_id')
  String? get coordinatorId;
  @override
  @JsonKey(name: 'hotel_id')
  String? get hotelId;
  @override
  @JsonKey(name: 'requested_by_user_id')
  String? get requestedByUserId;
  @override
  @JsonKey(name: 'destination_id')
  String? get destinationId;
  @override
  @JsonKey(name: 'pickup_location')
  String? get pickupLocation;
  @override
  @JsonKey(name: 'price_per_adult')
  double get pricePerAdult;
  @override
  @JsonKey(name: 'price_per_child')
  double get pricePerChild;
  @override
  @JsonKey(name: 'is_custom')
  bool get isCustom;
  @override
  @JsonKey(name: 'refund_policy_id')
  String? get refundPolicyId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Tour
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourImplCopyWith<_$TourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
