import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour_booking.dart';

part 'tour_review.freezed.dart';
part 'tour_review.g.dart';
@freezed
class TourReview with _$TourReview {
  const factory TourReview({
    String? id,

    required String bookingId,

    required String bookingType,

    required String userId,

    required String tourId,

    required int rating,

    String? content,

    List<String>? images,

    DateTime? createdAt,

    DateTime? updatedAt,
    TourBooking? booking,
  }) = _TourReview;

  factory TourReview.fromJson(Map<String, dynamic> json) =>
      _$TourReviewFromJson(json);
}
