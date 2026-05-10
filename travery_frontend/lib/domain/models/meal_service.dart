import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'meal_service.freezed.dart';
part 'meal_service.g.dart';

/// Meal service provided by a Hotel.
@freezed
class MealService with _$MealService {
  const factory MealService({
    String? id,

    @JsonKey(name: 'hotel_id') required String hotelId,

    required String name,

    required MealType mealType,

    String? description,

    required double price,

    @JsonKey(name: 'is_available') @Default(true) bool isAvailable,

    @JsonKey(name: 'start_time') String? startTime,

    @JsonKey(name: 'end_time') String? endTime,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    Hotel? hotel,
  }) = _MealService;

  factory MealService.fromJson(Map<String, dynamic> json) =>
      _$MealServiceFromJson(json);
}

@JsonEnum()
enum MealType {
  @JsonValue('BREAKFAST')
  breakfast,
  @JsonValue('LUNCH')
  lunch,
  @JsonValue('DINNER')
  dinner,
}
