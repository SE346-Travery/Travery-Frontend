// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourInstanceImpl _$$TourInstanceImplFromJson(Map<String, dynamic> json) =>
    _$TourInstanceImpl(
      id: json['id'] as String?,
      tourId: json['tourId'] as String,
      coordinatorId: json['coordinatorId'] as String?,
      guideId: json['guideId'] as String?,
      coachId: json['coachId'] as String?,
      driverId: json['driverId'] as String?,
      hotelBookingId: json['hotelBookingId'] as String?,
      startDate: DateTime.parse(json['startDate'] as String),
      endDate: DateTime.parse(json['endDate'] as String),
      currentParticipants: (json['currentParticipants'] as num?)?.toInt() ?? 0,
      status: $enumDecode(_$TourInstanceStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      'tourId': instance.tourId,
      'coordinatorId': instance.coordinatorId,
      'guideId': instance.guideId,
      'coachId': instance.coachId,
      'driverId': instance.driverId,
      'hotelBookingId': instance.hotelBookingId,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'currentParticipants': instance.currentParticipants,
      'status': _$TourInstanceStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
