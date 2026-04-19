// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotel_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

HotelReview _$HotelReviewFromJson(Map<String, dynamic> json) {
  return _HotelReview.fromJson(json);
}

/// @nodoc
mixin _$HotelReview {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_booking_id')
  String get hotelBookingId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this HotelReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelReviewCopyWith<HotelReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelReviewCopyWith<$Res> {
  factory $HotelReviewCopyWith(
    HotelReview value,
    $Res Function(HotelReview) then,
  ) = _$HotelReviewCopyWithImpl<$Res, HotelReview>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_id') String hotelBookingId,
    int rating,
    String? comment,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$HotelReviewCopyWithImpl<$Res, $Val extends HotelReview>
    implements $HotelReviewCopyWith<$Res> {
  _$HotelReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            hotelBookingId: null == hotelBookingId
                ? _value.hotelBookingId
                : hotelBookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            comment: freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
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
abstract class _$$HotelReviewImplCopyWith<$Res>
    implements $HotelReviewCopyWith<$Res> {
  factory _$$HotelReviewImplCopyWith(
    _$HotelReviewImpl value,
    $Res Function(_$HotelReviewImpl) then,
  ) = __$$HotelReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'hotel_booking_id') String hotelBookingId,
    int rating,
    String? comment,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$HotelReviewImplCopyWithImpl<$Res>
    extends _$HotelReviewCopyWithImpl<$Res, _$HotelReviewImpl>
    implements _$$HotelReviewImplCopyWith<$Res> {
  __$$HotelReviewImplCopyWithImpl(
    _$HotelReviewImpl _value,
    $Res Function(_$HotelReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? hotelBookingId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$HotelReviewImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        hotelBookingId: null == hotelBookingId
            ? _value.hotelBookingId
            : hotelBookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        comment: freezed == comment
            ? _value.comment
            : comment // ignore: cast_nullable_to_non_nullable
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
class _$HotelReviewImpl implements _HotelReview {
  const _$HotelReviewImpl({
    this.id,
    @JsonKey(name: 'hotel_booking_id') required this.hotelBookingId,
    required this.rating,
    this.comment,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$HotelReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelReviewImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  final String hotelBookingId;
  @override
  final int rating;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'HotelReview(id: $id, hotelBookingId: $hotelBookingId, rating: $rating, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.hotelBookingId, hotelBookingId) ||
                other.hotelBookingId == hotelBookingId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
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
    hotelBookingId,
    rating,
    comment,
    createdAt,
    updatedAt,
  );

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelReviewImplCopyWith<_$HotelReviewImpl> get copyWith =>
      __$$HotelReviewImplCopyWithImpl<_$HotelReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelReviewImplToJson(this);
  }
}

abstract class _HotelReview implements HotelReview {
  const factory _HotelReview({
    final String? id,
    @JsonKey(name: 'hotel_booking_id') required final String hotelBookingId,
    required final int rating,
    final String? comment,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$HotelReviewImpl;

  factory _HotelReview.fromJson(Map<String, dynamic> json) =
      _$HotelReviewImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'hotel_booking_id')
  String get hotelBookingId;
  @override
  int get rating;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelReviewImplCopyWith<_$HotelReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
