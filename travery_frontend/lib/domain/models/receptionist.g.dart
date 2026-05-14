// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receptionist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReceptionistImpl _$$ReceptionistImplFromJson(Map<String, dynamic> json) =>
    _$ReceptionistImpl(
      userId: json['userId'] as String,
      hotelId: json['hotelId'] as String,
      employeeCode: json['employeeCode'] as String,
      shiftType: $enumDecodeNullable(_$ShiftTypeEnumMap, json['shiftType']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReceptionistImplToJson(_$ReceptionistImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'hotelId': instance.hotelId,
      'employeeCode': instance.employeeCode,
      'shiftType': _$ShiftTypeEnumMap[instance.shiftType],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'hotel': instance.hotel,
    };

const _$ShiftTypeEnumMap = {ShiftType.day: 'DAY', ShiftType.night: 'NIGHT'};
