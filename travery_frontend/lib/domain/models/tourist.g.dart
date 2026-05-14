// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TouristImpl _$$TouristImplFromJson(Map<String, dynamic> json) =>
    _$TouristImpl(
      userId: json['userId'] as String,
      passportNumber: json['passportNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      gender: $enumDecodeNullable(_$TouristGenderEnumMap, json['gender']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TouristImplToJson(_$TouristImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'passportNumber': instance.passportNumber,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'gender': _$TouristGenderEnumMap[instance.gender],
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

const _$TouristGenderEnumMap = {
  TouristGender.male: 'MALE',
  TouristGender.female: 'FEMALE',
  TouristGender.other: 'OTHER',
};
