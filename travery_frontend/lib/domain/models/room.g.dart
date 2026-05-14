// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
  id: json['id'] as String?,
  hotelId: json['hotelId'] as String,
  roomTypeId: json['roomTypeId'] as String,
  roomNumber: json['roomNumber'] as String,
  status: $enumDecode(_$RoomStatusEnumMap, json['status']),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  hotel: json['hotel'] == null
      ? null
      : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
  roomType: json['roomType'] == null
      ? null
      : RoomType.fromJson(json['roomType'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hotelId': instance.hotelId,
      'roomTypeId': instance.roomTypeId,
      'roomNumber': instance.roomNumber,
      'status': _$RoomStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'hotel': instance.hotel,
      'roomType': instance.roomType,
    };

const _$RoomStatusEnumMap = {
  RoomStatus.available: 'AVAILABLE',
  RoomStatus.occupied: 'OCCUPIED',
  RoomStatus.maintenance: 'MAINTENANCE',
};
