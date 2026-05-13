import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';
import 'hotel.dart';

part 'hotel_review.freezed.dart';
part 'hotel_review.g.dart';
@freezed
class HotelReview with _$HotelReview {
  const factory HotelReview({
    String? id,

    required String bookingId,

    required String bookingType,

    required String userId,

    required String hotelId,

    required int rating,

    String? content,

    List<String>? images,

    DateTime? createdAt,

    DateTime? updatedAt,
    HotelBooking? booking,
    Hotel? hotel,
  }) = _HotelReview;

  factory HotelReview.fromJson(Map<String, dynamic> json) =>
      _$HotelReviewFromJson(json);
}
