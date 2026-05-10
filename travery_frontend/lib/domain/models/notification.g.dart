// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
  Map<String, dynamic> json,
) => _$AppNotificationImpl(
  id: json['id'] as String?,
  userId: json['user_id'] as String?,
  staffId: json['staff_id'] as String?,
  notificationType: $enumDecode(
    _$NotificationTypeEnumMap,
    json['notificationType'],
  ),
  title: json['title'] as String,
  body: json['body'] as String?,
  referenceType: json['reference_type'] as String?,
  referenceId: json['referenceId'] as String?,
  imageUrl: json['image_url'] as String?,
  actionUrl: json['action_url'] as String?,
  isRead: json['is_read'] as bool? ?? false,
  readAt: json['read_at'] == null
      ? null
      : DateTime.parse(json['read_at'] as String),
  sentAt: json['sent_at'] == null
      ? null
      : DateTime.parse(json['sent_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AppNotificationImplToJson(
  _$AppNotificationImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'staff_id': instance.staffId,
  'notificationType': _$NotificationTypeEnumMap[instance.notificationType]!,
  'title': instance.title,
  'body': instance.body,
  'reference_type': instance.referenceType,
  'referenceId': instance.referenceId,
  'image_url': instance.imageUrl,
  'action_url': instance.actionUrl,
  'is_read': instance.isRead,
  'read_at': instance.readAt?.toIso8601String(),
  'sent_at': instance.sentAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'user': instance.user,
};

const _$NotificationTypeEnumMap = {
  NotificationType.bookingConfirmation: 'BOOKING_CONFIRMATION',
  NotificationType.paymentSuccess: 'PAYMENT_SUCCESS',
  NotificationType.paymentFailed: 'PAYMENT_FAILED',
  NotificationType.tourReminder: 'TOUR_REMINDER',
  NotificationType.checkInReminder: 'CHECK_IN_REMINDER',
  NotificationType.checkOutReminder: 'CHECK_OUT_REMINDER',
  NotificationType.refundStatus: 'REFUND_STATUS',
  NotificationType.cancellation: 'CANCELLATION',
  NotificationType.chatMessage: 'CHAT_MESSAGE',
  NotificationType.reviewRequest: 'REVIEW_REQUEST',
  NotificationType.promotion: 'PROMOTION',
  NotificationType.general: 'GENERAL',
};
