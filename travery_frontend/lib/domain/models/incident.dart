import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';
import 'tour_booking.dart';
import 'user.dart';

part 'incident.freezed.dart';
part 'incident.g.dart';

/// Represents an incident or issue reported during a booking.
@freezed
class Incident with _$Incident {
  const factory Incident({
    String? id,

    @JsonKey(name: 'booking_id') String? bookingId,

    @JsonKey(name: 'booking_type') String? bookingType,

    @JsonKey(name: 'reported_by_user_id') String? reportedByUserId,

    @JsonKey(name: 'reported_by_staff_id') String? reportedByStaffId,

    required IncidentType type,

    required IncidentSeverity severity,

    String? description,

    @JsonKey(name: 'image_urls') List<String>? imageUrls,

    String? location,

    @JsonKey(name: 'resolved_at') DateTime? resolvedAt,

    @JsonKey(name: 'resolution_notes') String? resolutionNotes,

    required IncidentStatus status,

    @JsonKey(name: 'reported_at') DateTime? reportedAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
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
