// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refund_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefundRequestImpl _$$RefundRequestImplFromJson(Map<String, dynamic> json) =>
    _$RefundRequestImpl(
      id: json['id'] as String?,
      paymentTransactionId: json['payment_transaction_id'] as String,
      userId: json['user_id'] as String,
      processedById: json['processed_by_id'] as String?,
      requestedAmount: (json['requested_amount'] as num).toDouble(),
      actualRefunded: (json['actual_refunded'] as num?)?.toDouble(),
      customerReason: json['customer_reason'] as String?,
      adminResponse: json['admin_response'] as String?,
      status: $enumDecode(_$RefundRequestStatusEnumMap, json['status']),
      processedAt: json['processed_at'] == null
          ? null
          : DateTime.parse(json['processed_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
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
      'payment_transaction_id': instance.paymentTransactionId,
      'user_id': instance.userId,
      'processed_by_id': instance.processedById,
      'requested_amount': instance.requestedAmount,
      'actual_refunded': instance.actualRefunded,
      'customer_reason': instance.customerReason,
      'admin_response': instance.adminResponse,
      'status': _$RefundRequestStatusEnumMap[instance.status]!,
      'processed_at': instance.processedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
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
