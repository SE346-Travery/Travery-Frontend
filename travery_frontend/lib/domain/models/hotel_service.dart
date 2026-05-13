import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'hotel_service.freezed.dart';
part 'hotel_service.g.dart';
@freezed
class HotelService with _$HotelService {
  const factory HotelService({
    String? id,

    required String hotelId,

    required ServiceCategory category,

    required String name,

    String? description,

    required double price,

    required String unit,

    @Default(true) bool isActive,

    DateTime? createdAt,

    DateTime? updatedAt,
    Hotel? hotel,
  }) = _HotelService;

  factory HotelService.fromJson(Map<String, dynamic> json) =>
      _$HotelServiceFromJson(json);
}

@JsonEnum()
enum ServiceCategory {
  @JsonValue('FOOD')
  food,
  @JsonValue('SPA')
  spa,
  @JsonValue('LAUNDRY')
  laundry,
  @JsonValue('OTHER')
  other,
}
