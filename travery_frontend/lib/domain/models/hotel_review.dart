import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';
import 'hotel.dart';

part 'hotel_review.freezed.dart';
part 'hotel_review.g.dart';

/// User feedback for a completed hotel booking.
@freezed
class HotelReview with _$HotelReview {
  const factory HotelReview({
    String? id,

    @JsonKey(name: 'booking_id') required String bookingId,

    @JsonKey(name: 'booking_type') required String bookingType,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'hotel_id') required String hotelId,

    @JsonKey(name: 'rating') required int rating,

    @JsonKey(name: 'content') String? content,

    @JsonKey(name: 'images') List<String>? images,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    HotelBooking? booking,
    Hotel? hotel,
  }) = _HotelReview;

  factory HotelReview.fromJson(Map<String, dynamic> json) =>
      _$HotelReviewFromJson(json);
}
