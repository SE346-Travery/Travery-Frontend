import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

/// System notification for users.
@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    String? id,

    @JsonKey(name: 'user_id') String? userId,

    @JsonKey(name: 'staff_id') String? staffId,

    required NotificationType notificationType,

    required String title,

    String? body,

    @JsonKey(name: 'reference_type') String? referenceType,

    String? referenceId,

    @JsonKey(name: 'image_url') String? imageUrl,

    @JsonKey(name: 'action_url') String? actionUrl,

    @JsonKey(name: 'is_read') @Default(false) bool isRead,

    @JsonKey(name: 'read_at') DateTime? readAt,

    @JsonKey(name: 'sent_at') DateTime? sentAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    /// RELATION
    User? user,
  }) = _AppNotification;

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$AppNotificationFromJson(json);
}

@JsonEnum()
enum NotificationType {
  @JsonValue('BOOKING_CONFIRMATION')
  bookingConfirmation,
  @JsonValue('PAYMENT_SUCCESS')
  paymentSuccess,
  @JsonValue('PAYMENT_FAILED')
  paymentFailed,
  @JsonValue('TOUR_REMINDER')
  tourReminder,
  @JsonValue('CHECK_IN_REMINDER')
  checkInReminder,
  @JsonValue('CHECK_OUT_REMINDER')
  checkOutReminder,
  @JsonValue('REFUND_STATUS')
  refundStatus,
  @JsonValue('CANCELLATION')
  cancellation,
  @JsonValue('CHAT_MESSAGE')
  chatMessage,
  @JsonValue('REVIEW_REQUEST')
  reviewRequest,
  @JsonValue('PROMOTION')
  promotion,
  @JsonValue('GENERAL')
  general,
}
