// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImpl _$$TourImplFromJson(Map<String, dynamic> json) => _$TourImpl(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  coordinatorId: json['coordinatorId'] as String?,
  hotelId: json['hotelId'] as String?,
  requestedByUserId: json['requestedByUserId'] as String?,
  destinationId: json['destinationId'] as String?,
  pickupLocation: json['pickupLocation'] as String?,
  averageRating: (json['averageRating'] as num?)?.toDouble() ?? 0.0,
  pricePerAdult: (json['pricePerAdult'] as num).toDouble(),
  pricePerChild: (json['pricePerChild'] as num).toDouble(),
  minParticipants: (json['minParticipants'] as num?)?.toInt() ?? 10,
  maxParticipants: (json['maxParticipants'] as num?)?.toInt() ?? 30,
  durationDays: (json['durationDays'] as num?)?.toInt() ?? 1,
  isCustom: json['isCustom'] as bool? ?? false,
  refundPolicyId: json['refundPolicyId'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$TourImplToJson(_$TourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'coordinatorId': instance.coordinatorId,
      'hotelId': instance.hotelId,
      'requestedByUserId': instance.requestedByUserId,
      'destinationId': instance.destinationId,
      'pickupLocation': instance.pickupLocation,
      'averageRating': instance.averageRating,
      'pricePerAdult': instance.pricePerAdult,
      'pricePerChild': instance.pricePerChild,
      'minParticipants': instance.minParticipants,
      'maxParticipants': instance.maxParticipants,
      'durationDays': instance.durationDays,
      'isCustom': instance.isCustom,
      'refundPolicyId': instance.refundPolicyId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
