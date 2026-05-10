import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'spa_service.freezed.dart';
part 'spa_service.g.dart';

/// Spa service provided by a Hotel.
@freezed
class SpaService with _$SpaService {
  const factory SpaService({
    String? id,

    @JsonKey(name: 'hotel_id') required String hotelId,

    required String name,

    String? description,

    required SpaServiceType serviceType,

    @JsonKey(name: 'duration_minutes') required int durationMinutes,

    required double price,

    @JsonKey(name: 'is_available') @Default(true) bool isAvailable,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    Hotel? hotel,
  }) = _SpaService;

  factory SpaService.fromJson(Map<String, dynamic> json) =>
      _$SpaServiceFromJson(json);
}

@JsonEnum()
enum SpaServiceType {
  @JsonValue('MASSAGE')
  massage,
  @JsonValue('XONG_HOI')
  xongHoi,
  @JsonValue('TAM_TIEN')
  tamTien,
}
