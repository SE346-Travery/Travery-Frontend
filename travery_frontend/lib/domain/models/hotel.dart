import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';
@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    String? id,
    required String name,
    required int starRating,
    String? description,
    required String address,
    required String cityProvince,
    double? latitude,
    double? longitude,
    String? checkInTime,
    String? checkOutTime,
    String? refundPolicyId,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}

@JsonEnum()
enum HotelStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('INACTIVE')
  inactive,
  @JsonValue('MAINTENANCE')
  maintenance,
}
