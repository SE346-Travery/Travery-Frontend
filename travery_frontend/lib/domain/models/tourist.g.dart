// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tourist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TouristImpl _$$TouristImplFromJson(Map<String, dynamic> json) =>
    _$TouristImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      passportNumber: json['passport_number'] as String?,
      dateOfBirth: json['date_of_birth'] == null
          ? null
          : DateTime.parse(json['date_of_birth'] as String),
      gender: $enumDecodeNullable(_$TouristGenderEnumMap, json['gender']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TouristImplToJson(_$TouristImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'passport_number': instance.passportNumber,
      'date_of_birth': instance.dateOfBirth?.toIso8601String(),
      'gender': _$TouristGenderEnumMap[instance.gender],
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
    };

const _$TouristGenderEnumMap = {
  TouristGender.male: 'MALE',
  TouristGender.female: 'FEMALE',
  TouristGender.other: 'OTHER',
};
