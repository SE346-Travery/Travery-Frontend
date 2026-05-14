// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spa_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpaServiceImpl _$$SpaServiceImplFromJson(Map<String, dynamic> json) =>
    _$SpaServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotelId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      serviceType: $enumDecode(_$SpaServiceTypeEnumMap, json['serviceType']),
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      isAvailable: json['isAvailable'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SpaServiceImplToJson(_$SpaServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelId': instance.hotelId,
      'name': instance.name,
      'description': instance.description,
      'serviceType': _$SpaServiceTypeEnumMap[instance.serviceType]!,
      'durationMinutes': instance.durationMinutes,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
    };

const _$SpaServiceTypeEnumMap = {
  SpaServiceType.massage: 'MASSAGE',
  SpaServiceType.xongHoi: 'XONG_HOI',
  SpaServiceType.tamTien: 'TAM_TIEN',
};
