import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

/// Represents a driver operating vehicles for Travery.
@freezed
class Driver with _$Driver {
  const factory Driver({
    String? id,

    @JsonKey(name: 'user_id') String? userId,

    @JsonKey(name: 'full_name') required String fullName,

    @JsonKey(name: 'phone_number') required String phoneNumber,

    @JsonKey(name: 'license_number') required String licenseNumber,

    @JsonKey(name: 'avatar_url') String? avatarUrl,

    required DriverStatus status,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
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
