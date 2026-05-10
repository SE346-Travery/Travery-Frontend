// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_assignment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomAssignmentImpl _$$RoomAssignmentImplFromJson(Map<String, dynamic> json) =>
    _$RoomAssignmentImpl(
      id: json['id'] as String?,
      hotelBookingDetailId: json['hotel_booking_detail_id'] as String,
      roomId: json['room_id'] as String,
      checkInTime: json['check_in_time'] == null
          ? null
          : DateTime.parse(json['check_in_time'] as String),
      checkOutTime: json['check_out_time'] == null
          ? null
          : DateTime.parse(json['check_out_time'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RoomAssignmentImplToJson(
  _$RoomAssignmentImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'hotel_booking_detail_id': instance.hotelBookingDetailId,
  'room_id': instance.roomId,
  'check_in_time': instance.checkInTime?.toIso8601String(),
  'check_out_time': instance.checkOutTime?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
};
