import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

/// Represents a lodging establishment owned and operated by Travery.
@freezed
class Hotel with _$Hotel {
  const factory Hotel({
    String? id,

    @JsonKey(name: 'name') required String name,

    @JsonKey(name: 'star_rating') required int starRating,

    @JsonKey(name: 'description') String? description,

    @JsonKey(name: 'address') required String address,

    @JsonKey(name: 'city_province') required String cityProvince,

    @JsonKey(name: 'latitude') double? latitude,

    @JsonKey(name: 'longitude') double? longitude,

    @JsonKey(name: 'check_in_time') String? checkInTime,

    @JsonKey(name: 'check_out_time') String? checkOutTime,

    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,

    @JsonKey(name: 'phone') String? phone,

    @JsonKey(name: 'email') String? email,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
