// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSessionImpl _$$ChatSessionImplFromJson(Map<String, dynamic> json) =>
    _$ChatSessionImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      coordinatorId: json['coordinatorId'] as String?,
      cometchatGuid: json['cometchatGuid'] as String,
      tourId: json['tourId'] as String?,
      status: $enumDecode(_$ChatSessionStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      coordinator: json['coordinator'] == null
          ? null
          : User.fromJson(json['coordinator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChatSessionImplToJson(_$ChatSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'coordinatorId': instance.coordinatorId,
      'cometchatGuid': instance.cometchatGuid,
      'tourId': instance.tourId,
      'status': _$ChatSessionStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'coordinator': instance.coordinator,
    };

const _$ChatSessionStatusEnumMap = {
  ChatSessionStatus.open: 'OPEN',
  ChatSessionStatus.closed: 'CLOSED',
};
