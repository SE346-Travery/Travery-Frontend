import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour.freezed.dart';
part 'tour.g.dart';
@freezed
class Tour with _$Tour {
  const factory Tour({
    String? id,

    required String name,

    String? description,

    String? coordinatorId,

    String? hotelId,

    String? requestedByUserId,

    String? destinationId,

    String? pickupLocation,

    required double pricePerAdult,

    required double pricePerChild,

    @Default(false) bool isCustom,

    String? refundPolicyId,

    DateTime? createdAt,

    DateTime? updatedAt,
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
