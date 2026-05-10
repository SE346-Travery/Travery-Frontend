// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentTransactionImpl _$$PaymentTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentTransactionImpl(
  id: json['id'] as String?,
  userId: json['user_id'] as String,
  bookingId: json['booking_id'] as String?,
  bookingType: json['booking_type'] as String?,
  amount: (json['amount'] as num).toDouble(),
  transactionType: $enumDecode(
    _$TransactionTypeEnumMap,
    json['transactionType'],
  ),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  gatewayTransId: json['gateway_trans_id'] as String?,
  status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
  gatewayResponse: json['gateway_response'] as Map<String, dynamic>?,
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PaymentTransactionImplToJson(
  _$PaymentTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'booking_id': instance.bookingId,
  'booking_type': instance.bookingType,
  'amount': instance.amount,
  'transactionType': _$TransactionTypeEnumMap[instance.transactionType]!,
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'gateway_trans_id': instance.gatewayTransId,
  'status': _$PaymentStatusEnumMap[instance.status]!,
  'gateway_response': instance.gatewayResponse,
  'paid_at': instance.paidAt?.toIso8601String(),
  'created_at': instance.createdAt?.toIso8601String(),
  'updated_at': instance.updatedAt?.toIso8601String(),
  'user': instance.user,
};

const _$TransactionTypeEnumMap = {
  TransactionType.payment: 'PAYMENT',
  TransactionType.refund: 'REFUND',
};

const _$PaymentMethodEnumMap = {
  PaymentMethod.vnpay: 'VNPAY',
  PaymentMethod.momo: 'MOMO',
  PaymentMethod.cash: 'CASH',
};

const _$PaymentStatusEnumMap = {
  PaymentStatus.pending: 'PENDING',
  PaymentStatus.success: 'SUCCESS',
  PaymentStatus.failed: 'FAILED',
  PaymentStatus.refunded: 'REFUNDED',
};
