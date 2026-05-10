import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'hotel_service.freezed.dart';
part 'hotel_service.g.dart';

/// Specific add-on services provided by a Hotel (e.g., Breakfast, Laundry).
@freezed
class HotelService with _$HotelService {
  const factory HotelService({
    String? id,

    @JsonKey(name: 'hotel_id') required String hotelId,

    required ServiceCategory category,

    required String name,

    String? description,

    required double price,

    required String unit,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
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
