import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel.dart';

part 'spa_service.freezed.dart';
part 'spa_service.g.dart';
@freezed
class SpaService with _$SpaService {
  const factory SpaService({
    String? id,

    required String hotelId,

    required String name,

    String? description,

    required SpaServiceType serviceType,

    required int durationMinutes,

    required double price,

    @Default(true) bool isAvailable,

    DateTime? createdAt,

    DateTime? updatedAt,
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
