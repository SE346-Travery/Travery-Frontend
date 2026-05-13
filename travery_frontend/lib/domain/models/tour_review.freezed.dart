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
  String get bookingId => throw _privateConstructorUsedError;
  String get bookingType => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get tourId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  TourBooking? get booking => throw _privateConstructorUsedError;

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
    String bookingId,
    String bookingType,
    String userId,
    String tourId,
    int rating,
    String? content,
    List<String>? images,
    DateTime? createdAt,
    DateTime? updatedAt,
    TourBooking? booking,
  });

  $TourBookingCopyWith<$Res>? get booking;
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
    Object? bookingId = null,
    Object? bookingType = null,
    Object? userId = null,
    Object? tourId = null,
    Object? rating = null,
    Object? content = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            bookingId: null == bookingId
                ? _value.bookingId
                : bookingId // ignore: cast_nullable_to_non_nullable
                      as String,
            bookingType: null == bookingType
                ? _value.bookingType
                : bookingType // ignore: cast_nullable_to_non_nullable
                      as String,
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            tourId: null == tourId
                ? _value.tourId
                : tourId // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as int,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: freezed == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            booking: freezed == booking
                ? _value.booking
                : booking // ignore: cast_nullable_to_non_nullable
                      as TourBooking?,
          )
          as $Val,
    );
  }

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourBookingCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $TourBookingCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
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
    String bookingId,
    String bookingType,
    String userId,
    String tourId,
    int rating,
    String? content,
    List<String>? images,
    DateTime? createdAt,
    DateTime? updatedAt,
    TourBooking? booking,
  });

  @override
  $TourBookingCopyWith<$Res>? get booking;
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
    Object? bookingId = null,
    Object? bookingType = null,
    Object? userId = null,
    Object? tourId = null,
    Object? rating = null,
    Object? content = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
  }) {
    return _then(
      _$TourReviewImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        bookingId: null == bookingId
            ? _value.bookingId
            : bookingId // ignore: cast_nullable_to_non_nullable
                  as String,
        bookingType: null == bookingType
            ? _value.bookingType
            : bookingType // ignore: cast_nullable_to_non_nullable
                  as String,
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        tourId: null == tourId
            ? _value.tourId
            : tourId // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as int,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: freezed == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        booking: freezed == booking
            ? _value.booking
            : booking // ignore: cast_nullable_to_non_nullable
                  as TourBooking?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TourReviewImpl implements _TourReview {
  const _$TourReviewImpl({
    this.id,
    required this.bookingId,
    required this.bookingType,
    required this.userId,
    required this.tourId,
    required this.rating,
    this.content,
    final List<String>? images,
    this.createdAt,
    this.updatedAt,
    this.booking,
  }) : _images = images;

  factory _$TourReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$TourReviewImplFromJson(json);

  @override
  final String? id;
  @override
  final String bookingId;
  @override
  final String bookingType;
  @override
  final String userId;
  @override
  final String tourId;
  @override
  final int rating;
  @override
  final String? content;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final TourBooking? booking;

  @override
  String toString() {
    return 'TourReview(id: $id, bookingId: $bookingId, bookingType: $bookingType, userId: $userId, tourId: $tourId, rating: $rating, content: $content, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, booking: $booking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.tourId, tourId) || other.tourId == tourId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    bookingId,
    bookingType,
    userId,
    tourId,
    rating,
    content,
    const DeepCollectionEquality().hash(_images),
    createdAt,
    updatedAt,
    booking,
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
    required final String bookingId,
    required final String bookingType,
    required final String userId,
    required final String tourId,
    required final int rating,
    final String? content,
    final List<String>? images,
    final DateTime? createdAt,
    final DateTime? updatedAt,
    final TourBooking? booking,
  }) = _$TourReviewImpl;

  factory _TourReview.fromJson(Map<String, dynamic> json) =
      _$TourReviewImpl.fromJson;

  @override
  String? get id;
  @override
  String get bookingId;
  @override
  String get bookingType;
  @override
  String get userId;
  @override
  String get tourId;
  @override
  int get rating;
  @override
  String? get content;
  @override
  List<String>? get images;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  TourBooking? get booking;

  /// Create a copy of TourReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourReviewImplCopyWith<_$TourReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
