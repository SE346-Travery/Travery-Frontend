// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incident.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncidentImpl _$$IncidentImplFromJson(Map<String, dynamic> json) =>
    _$IncidentImpl(
      id: json['id'] as String?,
      bookingId: json['bookingId'] as String?,
      bookingType: json['bookingType'] as String?,
      reportedByUserId: json['reportedByUserId'] as String?,
      reportedByStaffId: json['reportedByStaffId'] as String?,
      type: $enumDecode(_$IncidentTypeEnumMap, json['type']),
      severity: $enumDecode(_$IncidentSeverityEnumMap, json['severity']),
      description: json['description'] as String?,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      location: json['location'] as String?,
      resolvedAt: json['resolvedAt'] == null
          ? null
          : DateTime.parse(json['resolvedAt'] as String),
      resolutionNotes: json['resolutionNotes'] as String?,
      status: $enumDecode(_$IncidentStatusEnumMap, json['status']),
      reportedAt: json['reportedAt'] == null
          ? null
          : DateTime.parse(json['reportedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
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
      'bookingId': instance.bookingId,
      'bookingType': instance.bookingType,
      'reportedByUserId': instance.reportedByUserId,
      'reportedByStaffId': instance.reportedByStaffId,
      'type': _$IncidentTypeEnumMap[instance.type]!,
      'severity': _$IncidentSeverityEnumMap[instance.severity]!,
      'description': instance.description,
      'imageUrls': instance.imageUrls,
      'location': instance.location,
      'resolvedAt': instance.resolvedAt?.toIso8601String(),
      'resolutionNotes': instance.resolutionNotes,
      'status': _$IncidentStatusEnumMap[instance.status]!,
      'reportedAt': instance.reportedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
