import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_travery/model/tour_booking/tour_booking.dart';

part 'tour_instance.freezed.dart';
part 'tour_instance.g.dart';

@freezed
class TourInstance with _$TourInstance {
  const factory TourInstance({
    String? id,

    @JsonKey(name: 'tour_id') required String tourId,

    @JsonKey(name: 'start_date') required DateTime startDate,

    @JsonKey(name: 'end_date') required DateTime endDate,

    @JsonKey(name: 'vehicle_id') String? vehicleId,

    @JsonKey(name: 'driver_id') String? driverId,

    @JsonKey(name: 'guide_id') String? guideId,

    @JsonKey(name: 'assigned_by') String? assignedBy,

    required TourInstanceStatus status,

    @JsonKey(name: 'postponement_reason') String? postponementReason,

    @JsonKey(name: 'postponed_at') DateTime? postponedAt,

    @JsonKey(name: 'postponed_by') String? postponedBy,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'cancelled_by') String? cancelledBy,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    List<TourBooking>? bookings,
  }) = _TourInstance;

  factory TourInstance.fromJson(Map<String, dynamic> json) =>
      _$TourInstanceFromJson(json);
}

@JsonEnum()
enum TourInstanceStatus {
  scheduled,
  pickedUp,
  checkedIn,
  inDiscovery,
  checkedOut,
  completed,
  cancelled,
  postponed,
}
