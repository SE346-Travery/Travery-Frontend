// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachTripImpl _$$CoachTripImplFromJson(Map<String, dynamic> json) =>
    _$CoachTripImpl(
      id: json['id'] as String?,
      routeId: json['route_id'] as String,
      coachId: json['coach_id'] as String,
      driverId: json['driver_id'] as String?,
      coordinatorId: json['coordinator_id'] as String?,
      departureTime: DateTime.parse(json['departure_time'] as String),
      arrivalTime: json['arrival_time'] == null
          ? null
          : DateTime.parse(json['arrival_time'] as String),
      status: $enumDecode(_$CoachTripStatusEnumMap, json['status']),
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      cancellationReason: json['cancellation_reason'] as String?,
      cancelledBy: json['cancelled_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      route: json['route'] == null
          ? null
          : Route.fromJson(json['route'] as Map<String, dynamic>),
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
      coordinator: json['coordinator'] == null
          ? null
          : User.fromJson(json['coordinator'] as Map<String, dynamic>),
      bookings: (json['bookings'] as List<dynamic>?)
          ?.map((e) => CoachBooking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CoachTripImplToJson(_$CoachTripImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'route_id': instance.routeId,
      'coach_id': instance.coachId,
      'driver_id': instance.driverId,
      'coordinator_id': instance.coordinatorId,
      'departure_time': instance.departureTime.toIso8601String(),
      'arrival_time': instance.arrivalTime?.toIso8601String(),
      'status': _$CoachTripStatusEnumMap[instance.status]!,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'cancelled_by': instance.cancelledBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'route': instance.route,
      'coach': instance.coach,
      'driver': instance.driver,
      'coordinator': instance.coordinator,
      'bookings': instance.bookings,
    };

const _$CoachTripStatusEnumMap = {
  CoachTripStatus.scheduled: 'SCHEDULED',
  CoachTripStatus.inProgress: 'IN_PROGRESS',
  CoachTripStatus.completed: 'COMPLETED',
  CoachTripStatus.cancelled: 'CANCELLED',
};
