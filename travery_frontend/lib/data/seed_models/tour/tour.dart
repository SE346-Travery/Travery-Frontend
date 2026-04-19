import 'package:freezed_annotation/freezed_annotation.dart';

import '../tour_image/tour_image.dart';
import '../tour_instance/tour_instance.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

@freezed
class Tour with _$Tour {
  const factory Tour({
    String? id,

    required String name,

    Map<String, dynamic>? description,

    @JsonKey(name: 'price_per_adult') required double pricePerAdult,

    @JsonKey(name: 'price_per_child') required double pricePerChild,

    @JsonKey(name: 'max_capacity') required int maxCapacity,

    @JsonKey(name: 'min_capacity') required int minCapacity,

    @JsonKey(name: 'is_custom') required bool isCustom,

    @JsonKey(name: 'created_for_user_id') String? createdForUserId,

    @JsonKey(name: 'expires_at') DateTime? expiresAt,

    required TourStatus status,

    @JsonKey(name: 'hotel_id') String? hotelId,

    @JsonKey(name: 'couch_id') String? couchId,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    List<TourImage>? images,
    List<TourInstance>? instances,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}

@JsonEnum()
enum TourStatus { draft, active, expired, cancelled }
