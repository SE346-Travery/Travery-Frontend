import 'package:freezed_annotation/freezed_annotation.dart';

part 'station.freezed.dart';
part 'station.g.dart';
@freezed
class Station with _$Station {
  const factory Station({
    String? id,
    required String name,
    required String address,
    required String cityProvince,
    double? latitude,
    double? longitude,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Station;

  factory Station.fromJson(Map<String, dynamic> json) =>
      _$StationFromJson(json);
}
