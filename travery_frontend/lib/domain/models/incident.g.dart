// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncidentImpl _$$IncidentImplFromJson(Map<String, dynamic> json) =>
    _$IncidentImpl(
      id: json['id'] as String?,
      bookingId: json['booking_id'] as String?,
      bookingType: json['booking_type'] as String?,
      reportedByUserId: json['reported_by_user_id'] as String?,
      reportedByStaffId: json['reported_by_staff_id'] as String?,
      type: $enumDecode(_$IncidentTypeEnumMap, json['type']),
      severity: $enumDecode(_$IncidentSeverityEnumMap, json['severity']),
      description: json['description'] as String?,
      imageUrls: (json['image_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: json['location'] as String?,
      resolvedAt: json['resolved_at'] == null
          ? null
          : DateTime.parse(json['resolved_at'] as String),
      resolutionNotes: json['resolution_notes'] as String?,
      status: $enumDecode(_$IncidentStatusEnumMap, json['status']),
      reportedAt: json['reported_at'] == null
          ? null
          : DateTime.parse(json['reported_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      reportedByUser: json['reportedByUser'] == null
          ? null
          : User.fromJson(json['reportedByUser'] as Map<String, dynamic>),
      reportedByStaff: json['reportedByStaff'] == null
          ? null
          : User.fromJson(json['reportedByStaff'] as Map<String, dynamic>),
      tourBooking: json['tourBooking'] == null
          ? null
          : TourBooking.fromJson(json['tourBooking'] as Map<String, dynamic>),
      hotelBooking: json['hotelBooking'] == null
          ? null
          : HotelBooking.fromJson(json['hotelBooking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IncidentImplToJson(_$IncidentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'booking_type': instance.bookingType,
      'reported_by_user_id': instance.reportedByUserId,
      'reported_by_staff_id': instance.reportedByStaffId,
      'type': _$IncidentTypeEnumMap[instance.type]!,
      'severity': _$IncidentSeverityEnumMap[instance.severity]!,
      'description': instance.description,
      'image_urls': instance.imageUrls,
      'location': instance.location,
      'resolved_at': instance.resolvedAt?.toIso8601String(),
      'resolution_notes': instance.resolutionNotes,
      'status': _$IncidentStatusEnumMap[instance.status]!,
      'reported_at': instance.reportedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'reportedByUser': instance.reportedByUser,
      'reportedByStaff': instance.reportedByStaff,
      'tourBooking': instance.tourBooking,
      'hotelBooking': instance.hotelBooking,
    };

const _$IncidentTypeEnumMap = {
  IncidentType.vehicle: 'VEHICLE',
  IncidentType.health: 'HEALTH',
  IncidentType.loss: 'LOSS',
  IncidentType.service: 'SERVICE',
  IncidentType.other: 'OTHER',
};

const _$IncidentSeverityEnumMap = {
  IncidentSeverity.low: 'LOW',
  IncidentSeverity.medium: 'MEDIUM',
  IncidentSeverity.high: 'HIGH',
};

const _$IncidentStatusEnumMap = {
  IncidentStatus.reported: 'REPORTED',
  IncidentStatus.inProgress: 'IN_PROGRESS',
  IncidentStatus.resolved: 'RESOLVED',
};
