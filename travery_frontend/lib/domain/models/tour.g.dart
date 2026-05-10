// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourImpl _$$TourImplFromJson(Map<String, dynamic> json) => _$TourImpl(
  id: json['id'] as String?,
  name: json['name'] as String,
  description: json['description'] as String?,
  coordinatorId: json['coordinator_id'] as String?,
  hotelId: json['hotel_id'] as String?,
  requestedByUserId: json['requested_by_user_id'] as String?,
  destinationId: json['destination_id'] as String?,
  pickupLocation: json['pickup_location'] as String?,
  pricePerAdult: (json['price_per_adult'] as num).toDouble(),
  pricePerChild: (json['price_per_child'] as num).toDouble(),
  isCustom: json['is_custom'] as bool? ?? false,
  refundPolicyId: json['refund_policy_id'] as String?,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$TourImplToJson(_$TourImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'coordinator_id': instance.coordinatorId,
      'hotel_id': instance.hotelId,
      'requested_by_user_id': instance.requestedByUserId,
      'destination_id': instance.destinationId,
      'pickup_location': instance.pickupLocation,
      'price_per_adult': instance.pricePerAdult,
      'price_per_child': instance.pricePerChild,
      'is_custom': instance.isCustom,
      'refund_policy_id': instance.refundPolicyId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
