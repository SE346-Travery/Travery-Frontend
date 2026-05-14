import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_itinerary.freezed.dart';
part 'tour_itinerary.g.dart';
@freezed
class TourItinerary with _$TourItinerary {
  const factory TourItinerary({
    String? id,
    required String tourId,
    required int dayNumber,
    required String title,
    required String description,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _TourItinerary;

  factory TourItinerary.fromJson(Map<String, dynamic> json) =>
      _$TourItineraryFromJson(json);
}
