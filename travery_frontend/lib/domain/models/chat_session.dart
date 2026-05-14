import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'chat_session.freezed.dart';
part 'chat_session.g.dart';
@freezed
class ChatSession with _$ChatSession {
  const factory ChatSession({
    String? id,
    required String userId,
    String? coordinatorId,
    required String cometchatGuid,
    String? tourId,
    required ChatSessionStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
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
