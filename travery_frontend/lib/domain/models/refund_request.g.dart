// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundRequestImpl _$$RefundRequestImplFromJson(Map<String, dynamic> json) =>
    _$RefundRequestImpl(
      id: json['id'] as String?,
      paymentTransactionId: json['paymentTransactionId'] as String,
      userId: json['userId'] as String,
      processedById: json['processedById'] as String?,
      requestedAmount: (json['requestedAmount'] as num).toDouble(),
      actualRefunded: (json['actualRefunded'] as num?)?.toDouble(),
      customerReason: json['customerReason'] as String?,
      status: $enumDecode(_$RefundRequestStatusEnumMap, json['status']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      paymentTransaction: json['paymentTransaction'] == null
          ? null
          : PaymentTransaction.fromJson(
              json['paymentTransaction'] as Map<String, dynamic>,
            ),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      processedBy: json['processedBy'] == null
          ? null
          : User.fromJson(json['processedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RefundRequestImplToJson(_$RefundRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentTransactionId': instance.paymentTransactionId,
      'userId': instance.userId,
      'processedById': instance.processedById,
      'requestedAmount': instance.requestedAmount,
      'actualRefunded': instance.actualRefunded,
      'customerReason': instance.customerReason,
      'status': _$RefundRequestStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'paymentTransaction': instance.paymentTransaction,
      'user': instance.user,
      'processedBy': instance.processedBy,
    };

const _$RefundRequestStatusEnumMap = {
  RefundRequestStatus.pending: 'PENDING',
  RefundRequestStatus.processing: 'PROCESSING',
  RefundRequestStatus.completed: 'COMPLETED',
  RefundRequestStatus.rejected: 'REJECTED',
};
