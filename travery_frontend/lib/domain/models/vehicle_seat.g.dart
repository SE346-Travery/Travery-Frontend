// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleSeatImpl _$$VehicleSeatImplFromJson(Map<String, dynamic> json) =>
    _$VehicleSeatImpl(
      id: json['id'] as String?,
      vehicleId: json['vehicleId'] as String,
      seatCode: json['seatCode'] as String,
      floorNumber: (json['floorNumber'] as num?)?.toInt(),
      rowZone: $enumDecode(_$SeatRowZoneEnumMap, json['rowZone']),
      isAvailable: json['isAvailable'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VehicleSeatImplToJson(_$VehicleSeatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicleId': instance.vehicleId,
      'seatCode': instance.seatCode,
      'floorNumber': instance.floorNumber,
      'rowZone': _$SeatRowZoneEnumMap[instance.rowZone]!,
      'isAvailable': instance.isAvailable,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'vehicle': instance.vehicle,
    };

const _$SeatRowZoneEnumMap = {
  SeatRowZone.front: 'FRONT',
  SeatRowZone.middle: 'MIDDLE',
  SeatRowZone.rear: 'REAR',
};
