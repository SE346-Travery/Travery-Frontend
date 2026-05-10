// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spa_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpaServiceImpl _$$SpaServiceImplFromJson(Map<String, dynamic> json) =>
    _$SpaServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotel_id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      serviceType: $enumDecode(_$SpaServiceTypeEnumMap, json['serviceType']),
      durationMinutes: (json['duration_minutes'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      isAvailable: json['is_available'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpaServiceImplToJson(_$SpaServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotel_id': instance.hotelId,
      'name': instance.name,
      'description': instance.description,
      'serviceType': _$SpaServiceTypeEnumMap[instance.serviceType]!,
      'duration_minutes': instance.durationMinutes,
      'price': instance.price,
      'is_available': instance.isAvailable,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
    };

const _$SpaServiceTypeEnumMap = {
  SpaServiceType.massage: 'MASSAGE',
  SpaServiceType.xongHoi: 'XONG_HOI',
  SpaServiceType.tamTien: 'TAM_TIEN',
};
