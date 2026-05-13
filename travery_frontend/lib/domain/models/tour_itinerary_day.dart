import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_itinerary_day.freezed.dart';
part 'tour_itinerary_day.g.dart';
@freezed
class TourItineraryDay with _$TourItineraryDay {
  const factory TourItineraryDay({
    String? id,

    required String itineraryId,

    required int dayNumber,

    required String title,

    String? description,

    @Default(0) int mealCount,

    String? startTime,

    String? endTime,

    String? location,

    DateTime? createdAt,

    DateTime? updatedAt,
  }) = _TourItineraryDay;

  factory TourItineraryDay.fromJson(Map<String, dynamic> json) =>
      _$TourItineraryDayFromJson(json);
}
