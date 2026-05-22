import 'package:freezed_annotation/freezed_annotation.dart';

part 'tour_instance_response.freezed.dart';
part 'tour_instance_response.g.dart';

@freezed
class TourInstanceResponse with _$TourInstanceResponse {
  const factory TourInstanceResponse({
    required String id,
    required String startDate,
    required String endDate,
    required String status,
    @Default(0) int availableSlots,
  }) = _TourInstanceResponse;

  factory TourInstanceResponse.fromJson(Map<String, dynamic> json) =>
      _$TourInstanceResponseFromJson(json);
}
