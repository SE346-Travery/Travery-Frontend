import 'package:freezed_annotation/freezed_annotation.dart';
part 'tour_image.freezed.dart';
part 'tour_image.g.dart';

@freezed
class TourImage with _$TourImage {
  const factory TourImage({
    String? id,

    @JsonKey(name: 'tour_id') required String tourId,

    @JsonKey(name: 'image_url') required String imageUrl,

    @JsonKey(name: 'display_order') required int displayOrder,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TourImage;

  factory TourImage.fromJson(Map<String, dynamic> json) =>
      _$TourImageFromJson(json);
}
