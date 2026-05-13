import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'laundry_service.freezed.dart';
part 'laundry_service.g.dart';
@freezed
class LaundryService with _$LaundryService {
  const factory LaundryService({
    String? id,

    required String hotelId,

    required String name,

    String? description,

    required LaundryServiceType serviceType,

    required double pricePerKg,

    @Default(true) bool isAvailable,

    DateTime? createdAt,

    DateTime? updatedAt,
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
