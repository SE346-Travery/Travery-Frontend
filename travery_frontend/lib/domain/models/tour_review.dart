import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour_booking.dart';

part 'tour_review.freezed.dart';
part 'tour_review.g.dart';

/// User feedback for a completed tour booking.
@freezed
class TourReview with _$TourReview {
  const factory TourReview({
    String? id,

    @JsonKey(name: 'booking_id') required String bookingId,

    @JsonKey(name: 'booking_type') required String bookingType,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'tour_id') required String tourId,

    @JsonKey(name: 'rating') required int rating,

    @JsonKey(name: 'content') String? content,

    @JsonKey(name: 'images') List<String>? images,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    TourBooking? booking,
  }) = _TourReview;

  factory TourReview.fromJson(Map<String, dynamic> json) =>
      _$TourReviewFromJson(json);
}
