// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomAssignmentImpl _$$RoomAssignmentImplFromJson(Map<String, dynamic> json) =>
    _$RoomAssignmentImpl(
      id: json['id'] as String?,
      hotelBookingDetailId: json['hotelBookingDetailId'] as String,
      roomId: json['roomId'] as String,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$RoomAssignmentImplToJson(
  _$RoomAssignmentImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'hotelBookingDetailId': instance.hotelBookingDetailId,
  'roomId': instance.roomId,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
