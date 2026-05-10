// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleSeatImpl _$$VehicleSeatImplFromJson(Map<String, dynamic> json) =>
    _$VehicleSeatImpl(
      id: json['id'] as String?,
      vehicleId: json['vehicle_id'] as String,
      seatCode: json['seat_code'] as String,
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      rowZone: $enumDecode(_$SeatRowZoneEnumMap, json['rowZone']),
      isAvailable: json['is_available'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      vehicle: json['vehicle'] == null
          ? null
          : Vehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VehicleSeatImplToJson(_$VehicleSeatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vehicle_id': instance.vehicleId,
      'seat_code': instance.seatCode,
      'floor_number': instance.floorNumber,
      'rowZone': _$SeatRowZoneEnumMap[instance.rowZone]!,
      'is_available': instance.isAvailable,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'vehicle': instance.vehicle,
    };

const _$SeatRowZoneEnumMap = {
  SeatRowZone.front: 'FRONT',
  SeatRowZone.middle: 'MIDDLE',
  SeatRowZone.rear: 'REAR',
};
