// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_trip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachTripImpl _$$CoachTripImplFromJson(Map<String, dynamic> json) =>
    _$CoachTripImpl(
      id: json['id'] as String?,
      routeId: json['routeId'] as String,
      coachId: json['coachId'] as String,
      driverId: json['driverId'] as String?,
      coordinatorId: json['coordinatorId'] as String?,
      departureTime: DateTime.parse(json['departureTime'] as String),
      arrivalTime: json['arrivalTime'] == null
          ? null
          : DateTime.parse(json['arrivalTime'] as String),
      status: $enumDecode(_$CoachTripStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      'routeId': instance.routeId,
      'coachId': instance.coachId,
      'driverId': instance.driverId,
      'coordinatorId': instance.coordinatorId,
      'departureTime': instance.departureTime.toIso8601String(),
      'arrivalTime': instance.arrivalTime?.toIso8601String(),
      'status': _$CoachTripStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
