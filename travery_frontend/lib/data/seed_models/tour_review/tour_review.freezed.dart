// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TourReview _$TourReviewFromJson(Map<String, dynamic> json) {
  return _TourReview.fromJson(json);
}

/// @nodoc
mixin _$TourReview {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_booking_id')
  String get tourBookingId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this TourReview to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourReviewCopyWith<TourReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourReviewCopyWith<$Res> {
  factory $TourReviewCopyWith(
    TourReview value,
    $Res Function(TourReview) then,
  ) = _$TourReviewCopyWithImpl<$Res, TourReview>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_booking_id') String tourBookingId,
    int rating,
    String? comment,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$TourReviewCopyWithImpl<$Res, $Val extends TourReview>
    implements $TourReviewCopyWith<$Res> {
  _$TourReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourBookingId = null,
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
            tourBookingId: null == tourBookingId
                ? _value.tourBookingId
                : tourBookingId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TourReviewImplCopyWith<$Res>
    implements $TourReviewCopyWith<$Res> {
  factory _$$TourReviewImplCopyWith(
    _$TourReviewImpl value,
    $Res Function(_$TourReviewImpl) then,
  ) = __$$TourReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'tour_booking_id') String tourBookingId,
    int rating,
    String? comment,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$TourReviewImplCopyWithImpl<$Res>
    extends _$TourReviewCopyWithImpl<$Res, _$TourReviewImpl>
    implements _$$TourReviewImplCopyWith<$Res> {
  __$$TourReviewImplCopyWithImpl(
    _$TourReviewImpl _value,
    $Res Function(_$TourReviewImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? tourBookingId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$TourReviewImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        tourBookingId: null == tourBookingId
            ? _value.tourBookingId
            : tourBookingId // ignore: cast_nullable_to_non_nullable
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
class _$TourReviewImpl implements _TourReview {
  const _$TourReviewImpl({
    this.id,
    @JsonKey(name: 'tour_booking_id') required this.tourBookingId,
    required this.rating,
    this.comment,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  });

  factory _$TourReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourReviewImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'tour_booking_id')
  final String tourBookingId;
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
    return 'TourReview(id: $id, tourBookingId: $tourBookingId, rating: $rating, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourBookingId, tourBookingId) ||
                other.tourBookingId == tourBookingId) &&
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
    tourBookingId,
    rating,
    comment,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourReviewImplCopyWith<_$TourReviewImpl> get copyWith =>
      __$$TourReviewImplCopyWithImpl<_$TourReviewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TourReviewImplToJson(this);
  }
}

abstract class _TourReview implements TourReview {
  const factory _TourReview({
    final String? id,
    @JsonKey(name: 'tour_booking_id') required final String tourBookingId,
    required final int rating,
    final String? comment,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$TourReviewImpl;

  factory _TourReview.fromJson(Map<String, dynamic> json) =
      _$TourReviewImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'tour_booking_id')
  String get tourBookingId;
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

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourReviewImplCopyWith<_$TourReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
