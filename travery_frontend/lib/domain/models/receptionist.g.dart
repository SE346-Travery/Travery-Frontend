// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receptionist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceptionistImpl _$$ReceptionistImplFromJson(Map<String, dynamic> json) =>
    _$ReceptionistImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      hotelId: json['hotel_id'] as String,
      employeeCode: json['employee_code'] as String,
      shiftType: $enumDecodeNullable(_$ShiftTypeEnumMap, json['shift_type']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReceptionistImplToJson(_$ReceptionistImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'hotel_id': instance.hotelId,
      'employee_code': instance.employeeCode,
      'shift_type': _$ShiftTypeEnumMap[instance.shiftType],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'hotel': instance.hotel,
    };

const _$ShiftTypeEnumMap = {ShiftType.day: 'DAY', ShiftType.night: 'NIGHT'};
