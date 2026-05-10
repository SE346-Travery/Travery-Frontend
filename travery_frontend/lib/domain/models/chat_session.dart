import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'chat_session.freezed.dart';
part 'chat_session.g.dart';

/// Represents a real-time consultation or support session.
@freezed
class ChatSession with _$ChatSession {
  const factory ChatSession({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'coordinator_id') String? coordinatorId,

    @JsonKey(name: 'cometchat_guid') required String cometchatGuid,

    @JsonKey(name: 'tour_id') String? tourId,

    required ChatSessionStatus status,

    @JsonKey(name: 'last_message') String? lastMessage,

    @JsonKey(name: 'last_message_at') DateTime? lastMessageAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    User? user,
    User? coordinator,
  }) = _ChatSession;

  factory ChatSession.fromJson(Map<String, dynamic> json) =>
      _$ChatSessionFromJson(json);
}

@JsonEnum()
enum ChatSessionStatus {
  @JsonValue('OPEN')
  open,
  @JsonValue('CLOSED')
  closed,
}
