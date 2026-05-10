import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_itinerary_day.freezed.dart';
part 'tour_itinerary_day.g.dart';

/// Detailed activities for a specific day in a tour itinerary.
@freezed
class TourItineraryDay with _$TourItineraryDay {
  const factory TourItineraryDay({
    String? id,

    @JsonKey(name: 'itinerary_id') required String itineraryId,

    @JsonKey(name: 'day_number') required int dayNumber,

    @JsonKey(name: 'title') required String title,

    @JsonKey(name: 'description') String? description,

    @JsonKey(name: 'meal_count') @Default(0) int mealCount,

    @JsonKey(name: 'start_time') String? startTime,

    @JsonKey(name: 'end_time') String? endTime,

    @JsonKey(name: 'location') String? location,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TourItineraryDay;

  factory TourItineraryDay.fromJson(Map<String, dynamic> json) =>
      _$TourItineraryDayFromJson(json);
}
