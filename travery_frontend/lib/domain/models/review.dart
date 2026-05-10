import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

/// Polymorphic user feedback for completed services.
@freezed
class Review with _$Review {
  const factory Review({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'booking_id') String? bookingId,

    @JsonKey(name: 'booking_type') String? bookingType,

    @JsonKey(name: 'target_id') String? targetId,

    @JsonKey(name: 'target_type') required ReviewTargetType targetType,

    @JsonKey(name: 'rating') required int rating,

    @JsonKey(name: 'content') String? content,

    @JsonKey(name: 'images') List<String>? images,

    @JsonKey(name: 'is_verified') @Default(false) bool isVerified,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    User? user,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@JsonEnum()
enum ReviewTargetType {
  @JsonValue('TOUR')
  tour,
  @JsonValue('HOTEL')
  hotel,
  @JsonValue('ROUTE')
  route,
}
