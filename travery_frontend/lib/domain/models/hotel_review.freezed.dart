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
  @JsonKey(name: 'booking_id')
  String get bookingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_type')
  String get bookingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_id')
  String get hotelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  int get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String? get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// RELATIONS
  HotelBooking? get booking => throw _privateConstructorUsedError;
  Hotel? get hotel => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'booking_id') String bookingId,
    @JsonKey(name: 'booking_type') String bookingType,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'hotel_id') String hotelId,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    HotelBooking? booking,
    Hotel? hotel,
  });

  $HotelBookingCopyWith<$Res>? get booking;
  $HotelCopyWith<$Res>? get hotel;
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
    Object? bookingId = null,
    Object? bookingType = null,
    Object? userId = null,
    Object? hotelId = null,
    Object? rating = null,
    Object? content = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
    Object? hotel = freezed,
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
            hotelId: null == hotelId
                ? _value.hotelId
                : hotelId // ignore: cast_nullable_to_non_nullable
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
                      as HotelBooking?,
            hotel: freezed == hotel
                ? _value.hotel
                : hotel // ignore: cast_nullable_to_non_nullable
                      as Hotel?,
          )
          as $Val,
    );
  }

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelBookingCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $HotelBookingCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HotelCopyWith<$Res>? get hotel {
    if (_value.hotel == null) {
      return null;
    }

    return $HotelCopyWith<$Res>(_value.hotel!, (value) {
      return _then(_value.copyWith(hotel: value) as $Val);
    });
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
    @JsonKey(name: 'booking_id') String bookingId,
    @JsonKey(name: 'booking_type') String bookingType,
    @JsonKey(name: 'user_id') String userId,
    @JsonKey(name: 'hotel_id') String hotelId,
    @JsonKey(name: 'rating') int rating,
    @JsonKey(name: 'content') String? content,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    HotelBooking? booking,
    Hotel? hotel,
  });

  @override
  $HotelBookingCopyWith<$Res>? get booking;
  @override
  $HotelCopyWith<$Res>? get hotel;
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
    Object? bookingId = null,
    Object? bookingType = null,
    Object? userId = null,
    Object? hotelId = null,
    Object? rating = null,
    Object? content = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? booking = freezed,
    Object? hotel = freezed,
  }) {
    return _then(
      _$HotelReviewImpl(
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
        hotelId: null == hotelId
            ? _value.hotelId
            : hotelId // ignore: cast_nullable_to_non_nullable
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
                  as HotelBooking?,
        hotel: freezed == hotel
            ? _value.hotel
            : hotel // ignore: cast_nullable_to_non_nullable
                  as Hotel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelReviewImpl implements _HotelReview {
  const _$HotelReviewImpl({
    this.id,
    @JsonKey(name: 'booking_id') required this.bookingId,
    @JsonKey(name: 'booking_type') required this.bookingType,
    @JsonKey(name: 'user_id') required this.userId,
    @JsonKey(name: 'hotel_id') required this.hotelId,
    @JsonKey(name: 'rating') required this.rating,
    @JsonKey(name: 'content') this.content,
    @JsonKey(name: 'images') final List<String>? images,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
    this.booking,
    this.hotel,
  }) : _images = images;

  factory _$HotelReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelReviewImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'booking_id')
  final String bookingId;
  @override
  @JsonKey(name: 'booking_type')
  final String bookingType;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'hotel_id')
  final String hotelId;
  @override
  @JsonKey(name: 'rating')
  final int rating;
  @override
  @JsonKey(name: 'content')
  final String? content;
  final List<String>? _images;
  @override
  @JsonKey(name: 'images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  /// RELATIONS
  @override
  final HotelBooking? booking;
  @override
  final Hotel? hotel;

  @override
  String toString() {
    return 'HotelReview(id: $id, bookingId: $bookingId, bookingType: $bookingType, userId: $userId, hotelId: $hotelId, rating: $rating, content: $content, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, booking: $booking, hotel: $hotel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.bookingType, bookingType) ||
                other.bookingType == bookingType) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.hotel, hotel) || other.hotel == hotel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    bookingId,
    bookingType,
    userId,
    hotelId,
    rating,
    content,
    const DeepCollectionEquality().hash(_images),
    createdAt,
    updatedAt,
    booking,
    hotel,
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
    @JsonKey(name: 'booking_id') required final String bookingId,
    @JsonKey(name: 'booking_type') required final String bookingType,
    @JsonKey(name: 'user_id') required final String userId,
    @JsonKey(name: 'hotel_id') required final String hotelId,
    @JsonKey(name: 'rating') required final int rating,
    @JsonKey(name: 'content') final String? content,
    @JsonKey(name: 'images') final List<String>? images,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
    final HotelBooking? booking,
    final Hotel? hotel,
  }) = _$HotelReviewImpl;

  factory _HotelReview.fromJson(Map<String, dynamic> json) =
      _$HotelReviewImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'booking_id')
  String get bookingId;
  @override
  @JsonKey(name: 'booking_type')
  String get bookingType;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'hotel_id')
  String get hotelId;
  @override
  @JsonKey(name: 'rating')
  int get rating;
  @override
  @JsonKey(name: 'content')
  String? get content;
  @override
  @JsonKey(name: 'images')
  List<String>? get images;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// RELATIONS
  @override
  HotelBooking? get booking;
  @override
  Hotel? get hotel;

  /// Create a copy of HotelReview
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelReviewImplCopyWith<_$HotelReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
