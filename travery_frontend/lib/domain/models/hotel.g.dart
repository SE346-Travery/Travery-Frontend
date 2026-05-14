// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
  id: json['id'] as String?,
  name: json['name'] as String,
  starRating: (json['starRating'] as num).toInt(),
  description: json['description'] as String?,
  address: json['address'] as String,
  cityProvince: json['cityProvince'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  checkInTime: json['checkInTime'] as String?,
  checkOutTime: json['checkOutTime'] as String?,
  refundPolicyId: json['refundPolicyId'] as String?,
  isActive: json['isActive'] as bool? ?? true,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'starRating': instance.starRating,
      'description': instance.description,
      'address': instance.address,
      'cityProvince': instance.cityProvince,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'checkInTime': instance.checkInTime,
      'checkOutTime': instance.checkOutTime,
      'refundPolicyId': instance.refundPolicyId,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
