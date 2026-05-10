import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_itinerary.freezed.dart';
part 'tour_itinerary.g.dart';

/// A daily breakdown of activities for a Tour.
@freezed
class TourItinerary with _$TourItinerary {
  const factory TourItinerary({
    String? id,

    @JsonKey(name: 'tour_id') required String tourId,

    @JsonKey(name: 'day_number') required int dayNumber,

    @JsonKey(name: 'title') required String title,

    @JsonKey(name: 'description') required String description,

    @JsonKey(name: 'meal_included') @Default(false) bool mealIncluded,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TourItinerary;

  factory TourItinerary.fromJson(Map<String, dynamic> json) =>
      _$TourItineraryFromJson(json);
}
