import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';

/// Physical bus terminals or office locations acting as departure/arrival points.
@freezed
class Station with _$Station {
  const factory Station({
    String? id,

    required String name,

    required String address,

    @JsonKey(name: 'city_province') required String cityProvince,

    @JsonKey(name: 'latitude') double? latitude,

    @JsonKey(name: 'longitude') double? longitude,

    @JsonKey(name: 'is_pickup_point') @Default(false) bool isPickupPoint,

    @JsonKey(name: 'is_dropoff_point') @Default(false) bool isDropoffPoint,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
