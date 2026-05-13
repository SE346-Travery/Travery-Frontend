import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';
import 'tour_booking.dart';
import 'user.dart';

part 'incident.freezed.dart';
part 'incident.g.dart';
@freezed
class Incident with _$Incident {
  const factory Incident({
    String? id,

    String? bookingId,

    String? bookingType,

    String? reportedByUserId,

    String? reportedByStaffId,

    required IncidentType type,

    required IncidentSeverity severity,

    String? description,

    List<String>? imageUrls,

    String? location,

    DateTime? resolvedAt,

    String? resolutionNotes,

    required IncidentStatus status,

    DateTime? reportedAt,

    DateTime? createdAt,

    DateTime? updatedAt,
    User? reportedByUser,
    User? reportedByStaff,
    TourBooking? tourBooking,
    HotelBooking? hotelBooking,
  }) = _Incident;

  factory Incident.fromJson(Map<String, dynamic> json) =>
      _$IncidentFromJson(json);
}

@JsonEnum()
enum IncidentType {
  @JsonValue('VEHICLE')
  vehicle,
  @JsonValue('HEALTH')
  health,
  @JsonValue('LOSS')
  loss,
  @JsonValue('SERVICE')
  service,
  @JsonValue('OTHER')
  other,
}

@JsonEnum()
enum IncidentSeverity {
  @JsonValue('LOW')
  low,
  @JsonValue('MEDIUM')
  medium,
  @JsonValue('HIGH')
  high,
}

@JsonEnum()
enum IncidentStatus {
  @JsonValue('REPORTED')
  reported,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('RESOLVED')
  resolved,
}
