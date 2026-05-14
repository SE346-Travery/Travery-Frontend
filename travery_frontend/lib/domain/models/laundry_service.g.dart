// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laundry_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaundryServiceImpl _$$LaundryServiceImplFromJson(Map<String, dynamic> json) =>
    _$LaundryServiceImpl(
      id: json['id'] as String?,
      hotelId: json['hotelId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      serviceType: $enumDecode(
        _$LaundryServiceTypeEnumMap,
        json['serviceType'],
      ),
      pricePerKg: (json['pricePerKg'] as num).toDouble(),
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

Map<String, dynamic> _$$LaundryServiceImplToJson(
  _$LaundryServiceImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'hotelId': instance.hotelId,
  'name': instance.name,
  'description': instance.description,
  'serviceType': _$LaundryServiceTypeEnumMap[instance.serviceType]!,
  'pricePerKg': instance.pricePerKg,
  'isAvailable': instance.isAvailable,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'hotel': instance.hotel,
};

const _$LaundryServiceTypeEnumMap = {
  LaundryServiceType.washDry: 'WASH_DRY',
  LaundryServiceType.steamPress: 'STEAM_PRESS',
};
