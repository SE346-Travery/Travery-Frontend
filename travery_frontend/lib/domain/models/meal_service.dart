import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'meal_service.freezed.dart';
part 'meal_service.g.dart';
@freezed
class MealService with _$MealService {
  const factory MealService({
    String? id,

    required String hotelId,

    required String name,

    required MealType mealType,

    String? description,

    required double price,

    @Default(true) bool isAvailable,

    String? startTime,

    String? endTime,

    DateTime? createdAt,

    DateTime? updatedAt,
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
