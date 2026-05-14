import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'review.freezed.dart';
part 'review.g.dart';
@freezed
class Review with _$Review {
  const factory Review({
    String? id,
    required String userId,
    String? bookingId,
    String? bookingType,
    String? targetId,
    required ReviewTargetType targetType,
    required int averageRating,
    String? content,
    List<String>? images,
    DateTime? createdAt,
    DateTime? updatedAt,
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
