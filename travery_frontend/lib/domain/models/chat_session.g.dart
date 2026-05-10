// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSessionImpl _$$ChatSessionImplFromJson(Map<String, dynamic> json) =>
    _$ChatSessionImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      coordinatorId: json['coordinator_id'] as String?,
      cometchatGuid: json['cometchat_guid'] as String,
      tourId: json['tour_id'] as String?,
      status: $enumDecode(_$ChatSessionStatusEnumMap, json['status']),
      lastMessage: json['last_message'] as String?,
      lastMessageAt: json['last_message_at'] == null
          ? null
          : DateTime.parse(json['last_message_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
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
      'user_id': instance.userId,
      'coordinator_id': instance.coordinatorId,
      'cometchat_guid': instance.cometchatGuid,
      'tour_id': instance.tourId,
      'status': _$ChatSessionStatusEnumMap[instance.status]!,
      'last_message': instance.lastMessage,
      'last_message_at': instance.lastMessageAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'coordinator': instance.coordinator,
    };

const _$ChatSessionStatusEnumMap = {
  ChatSessionStatus.open: 'OPEN',
  ChatSessionStatus.closed: 'CLOSED',
};
