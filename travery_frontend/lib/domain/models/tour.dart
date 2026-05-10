import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';

/// Defines a tour package template. Can be a standard offering or a custom tour.
@freezed
class Tour with _$Tour {
  const factory Tour({
    String? id,

    @JsonKey(name: 'name') required String name,

    @JsonKey(name: 'description') String? description,

    @JsonKey(name: 'coordinator_id') String? coordinatorId,

    @JsonKey(name: 'hotel_id') String? hotelId,

    @JsonKey(name: 'requested_by_user_id') String? requestedByUserId,

    @JsonKey(name: 'destination_id') String? destinationId,

    @JsonKey(name: 'pickup_location') String? pickupLocation,

    @JsonKey(name: 'price_per_adult') required double pricePerAdult,

    @JsonKey(name: 'price_per_child') required double pricePerChild,

    @JsonKey(name: 'is_custom') @Default(false) bool isCustom,

    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Tour;

  factory Tour.fromJson(Map<String, dynamic> json) => _$TourFromJson(json);
}

@JsonEnum()
enum TourStatus {
  @JsonValue('DRAFT')
  draft,
  @JsonValue('ACTIVE')
  active,
  @JsonValue('INACTIVE')
  inactive,
}
