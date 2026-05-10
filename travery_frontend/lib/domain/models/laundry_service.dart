import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'laundry_service.freezed.dart';
part 'laundry_service.g.dart';

/// Laundry service provided by a Hotel.
@freezed
class LaundryService with _$LaundryService {
  const factory LaundryService({
    String? id,

    @JsonKey(name: 'hotel_id') required String hotelId,

    required String name,

    String? description,

    required LaundryServiceType serviceType,

    @JsonKey(name: 'price_per_kg') required double pricePerKg,

    @JsonKey(name: 'is_available') @Default(true) bool isAvailable,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    Hotel? hotel,
  }) = _LaundryService;

  factory LaundryService.fromJson(Map<String, dynamic> json) =>
      _$LaundryServiceFromJson(json);
}

@JsonEnum()
enum LaundryServiceType {
  @JsonValue('WASH_DRY')
  washDry,
  @JsonValue('STEAM_PRESS')
  steamPress,
}
