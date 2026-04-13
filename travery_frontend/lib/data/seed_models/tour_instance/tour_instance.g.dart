// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_instance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourInstanceImpl _$$TourInstanceImplFromJson(Map<String, dynamic> json) =>
    _$TourInstanceImpl(
      id: json['id'] as String?,
      tourId: json['tour_id'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      vehicleId: json['vehicle_id'] as String?,
      driverId: json['driver_id'] as String?,
      guideId: json['guide_id'] as String?,
      assignedBy: json['assigned_by'] as String?,
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
      bookings: (json['bookings'] as List<dynamic>?)
          ?.map((e) => TourBooking.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TourInstanceImplToJson(_$TourInstanceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tour_id': instance.tourId,
      'start_date': instance.startDate.toIso8601String(),
      'end_date': instance.endDate.toIso8601String(),
      'vehicle_id': instance.vehicleId,
      'driver_id': instance.driverId,
      'guide_id': instance.guideId,
      'assigned_by': instance.assignedBy,
      'status': _$TourInstanceStatusEnumMap[instance.status]!,
      'postponement_reason': instance.postponementReason,
      'postponed_at': instance.postponedAt?.toIso8601String(),
      'postponed_by': instance.postponedBy,
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'cancelled_by': instance.cancelledBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'bookings': instance.bookings,
    };

const _$TourInstanceStatusEnumMap = {
  TourInstanceStatus.scheduled: 'scheduled',
  TourInstanceStatus.pickedUp: 'pickedUp',
  TourInstanceStatus.checkedIn: 'checkedIn',
  TourInstanceStatus.inDiscovery: 'inDiscovery',
  TourInstanceStatus.checkedOut: 'checkedOut',
  TourInstanceStatus.completed: 'completed',
  TourInstanceStatus.cancelled: 'cancelled',
  TourInstanceStatus.postponed: 'postponed',
};
