import 'package:freezed_annotation/freezed_annotation.dart';

import 'coach_trip.dart';
import 'refund_policy.dart';
import 'station.dart';

part 'route.freezed.dart';
part 'route.g.dart';
@freezed
class Route with _$Route {
  const factory Route({
    String? id,

    required String originStationId,

    required String destinationStationId,

    double? distanceKm,

    double? estimatedHours,

    required double basePrice,

    String? refundPolicyId,

    @Default(true) bool isActive,

    DateTime? createdAt,

    DateTime? updatedAt,
    Station? originStation,
    Station? destinationStation,
    RefundPolicy? refundPolicy,
    List<CoachTrip>? trips,
  }) = _Route;

  factory Route.fromJson(Map<String, dynamic> json) => _$RouteFromJson(json);
}
