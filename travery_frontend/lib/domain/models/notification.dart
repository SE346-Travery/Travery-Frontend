import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';
@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    String? id,

    String? userId,

    String? staffId,

    required NotificationType notificationType,

    required String title,

    String? body,

    String? referenceType,

    String? referenceId,

    String? imageUrl,

    String? actionUrl,

    @Default(false) bool isRead,

    DateTime? readAt,

    DateTime? sentAt,

    DateTime? createdAt,
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
