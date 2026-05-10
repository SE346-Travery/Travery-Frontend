import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach_trip.dart';
import 'refund_policy.dart';
import 'station.dart';

part 'route.freezed.dart';
part 'route.g.dart';

/// Logical fixed-route connecting two Stations.
@freezed
class Route with _$Route {
  const factory Route({
    String? id,

    @JsonKey(name: 'origin_station_id') required String originStationId,

    @JsonKey(name: 'destination_station_id')
    required String destinationStationId,

    @JsonKey(name: 'distance_km') double? distanceKm,

    @JsonKey(name: 'estimated_hours') double? estimatedHours,

    @JsonKey(name: 'base_price') required double basePrice,

    @JsonKey(name: 'refund_policy_id') String? refundPolicyId,

    @JsonKey(name: 'is_active') @Default(true) bool isActive,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    Station? originStation,
    Station? destinationStation,
    RefundPolicy? refundPolicy,
    List<CoachTrip>? trips,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
