// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppNotificationImpl _$$AppNotificationImplFromJson(
  Map<String, dynamic> json,
) => _$AppNotificationImpl(
  id: json['id'] as String?,
  userId: json['userId'] as String?,
  staffId: json['staffId'] as String?,
  notificationType: $enumDecode(
    _$NotificationTypeEnumMap,
    json['notificationType'],
  ),
  title: json['title'] as String,
  body: json['body'] as String?,
  referenceType: json['referenceType'] as String?,
  referenceId: json['referenceId'] as String?,
  imageUrl: json['imageUrl'] as String?,
  actionUrl: json['actionUrl'] as String?,
  isRead: json['isRead'] as bool? ?? false,
  readAt: json['readAt'] == null
      ? null
      : DateTime.parse(json['readAt'] as String),
  sentAt: json['sentAt'] == null
      ? null
      : DateTime.parse(json['sentAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AppNotificationImplToJson(
  _$AppNotificationImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'staffId': instance.staffId,
  'notificationType': _$NotificationTypeEnumMap[instance.notificationType]!,
  'title': instance.title,
  'body': instance.body,
  'referenceType': instance.referenceType,
  'referenceId': instance.referenceId,
  'imageUrl': instance.imageUrl,
  'actionUrl': instance.actionUrl,
  'isRead': instance.isRead,
  'readAt': instance.readAt?.toIso8601String(),
  'sentAt': instance.sentAt?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
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
