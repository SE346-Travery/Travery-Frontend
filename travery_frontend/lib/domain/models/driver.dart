import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';
@freezed
class Driver with _$Driver {
  const factory Driver({
    String? id,

    String? userId,

    required String fullName,

    required String phoneNumber,

    required String licenseNumber,

    String? avatarUrl,

    required DriverStatus status,

    DateTime? createdAt,

    DateTime? updatedAt,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@JsonEnum()
enum DriverStatus {
  @JsonValue('AVAILABLE')
  available,
  @JsonValue('ON_TRIP')
  onTrip,
  @JsonValue('ON_LEAVE')
  onLeave,
}
