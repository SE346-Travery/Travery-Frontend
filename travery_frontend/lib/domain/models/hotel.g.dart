// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelImpl _$$HotelImplFromJson(Map<String, dynamic> json) => _$HotelImpl(
  id: json['id'] as String?,
  name: json['name'] as String,
  starRating: (json['star_rating'] as num).toInt(),
  description: json['description'] as String?,
  address: json['address'] as String,
  cityProvince: json['city_province'] as String,
  latitude: (json['latitude'] as num?)?.toDouble(),
  longitude: (json['longitude'] as num?)?.toDouble(),
  checkInTime: json['check_in_time'] as String?,
  checkOutTime: json['check_out_time'] as String?,
  refundPolicyId: json['refund_policy_id'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$$HotelImplToJson(_$HotelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'star_rating': instance.starRating,
      'description': instance.description,
      'address': instance.address,
      'city_province': instance.cityProvince,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'check_in_time': instance.checkInTime,
      'check_out_time': instance.checkOutTime,
      'refund_policy_id': instance.refundPolicyId,
      'phone': instance.phone,
      'email': instance.email,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
