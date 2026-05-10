// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourInstanceImpl _$$TourInstanceImplFromJson(Map<String, dynamic> json) =>
    _$TourInstanceImpl(
      id: json['id'] as String?,
      tourId: json['tour_id'] as String,
      coordinatorId: json['coordinator_id'] as String?,
      guideId: json['guide_id'] as String?,
      coachId: json['coach_id'] as String?,
      driverId: json['driver_id'] as String?,
      hotelBookingId: json['hotel_booking_id'] as String?,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      minParticipants: (json['min_participants'] as num?)?.toInt() ?? 10,
      maxParticipants: (json['max_participants'] as num?)?.toInt() ?? 30,
      currentParticipants: (json['current_participants'] as num?)?.toInt() ?? 0,
      status: $enumDecode(_$TourInstanceStatusEnumMap, json['status']),
      postponementReason: json['postponement_reason'] as String?,
      postponedAt: json['postponed_at'] == null
          ? null
          : DateTime.parse(json['postponed_at'] as String),
      postponedBy: json['postponed_by'] as String?,
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
      tour: json['tour'] == null
          ? null
          : Tour.fromJson(json['tour'] as Map<String, dynamic>),
      coordinator: json['coordinator'] == null
          ? null
          : User.fromJson(json['coordinator'] as Map<String, dynamic>),
      guide: json['guide'] == null
          ? null
          : User.fromJson(json['guide'] as Map<String, dynamic>),
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
      driver: json['driver'] == null
          ? null
          : Driver.fromJson(json['driver'] as Map<String, dynamic>),
      hotelBooking: json['hotelBooking'] == null
          ? null
          : HotelBooking.fromJson(json['hotelBooking'] as Map<String, dynamic>),
      bookings: (json['bookings'] as List<dynamic>?)
          ?.map((e) => TourBooking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TourInstanceImplToJson(_$TourInstanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tour_id': instance.tourId,
      'coordinator_id': instance.coordinatorId,
      'guide_id': instance.guideId,
      'coach_id': instance.coachId,
      'driver_id': instance.driverId,
      'hotel_booking_id': instance.hotelBookingId,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'min_participants': instance.minParticipants,
      'max_participants': instance.maxParticipants,
      'current_participants': instance.currentParticipants,
      'status': _$TourInstanceStatusEnumMap[instance.status]!,
      'postponement_reason': instance.postponementReason,
      'postponed_at': instance.postponedAt?.toIso8601String(),
      'postponed_by': instance.postponedBy,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'cancelled_by': instance.cancelledBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'tour': instance.tour,
      'coordinator': instance.coordinator,
      'guide': instance.guide,
      'coach': instance.coach,
      'driver': instance.driver,
      'hotelBooking': instance.hotelBooking,
      'bookings': instance.bookings,
    };

const _$TourInstanceStatusEnumMap = {
  TourInstanceStatus.planning: 'PLANNING',
  TourInstanceStatus.open: 'OPEN',
  TourInstanceStatus.full: 'FULL',
  TourInstanceStatus.inProgress: 'IN_PROGRESS',
  TourInstanceStatus.completed: 'COMPLETED',
  TourInstanceStatus.cancelled: 'CANCELLED',
};
