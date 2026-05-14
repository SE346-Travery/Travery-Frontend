// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentTransactionImpl _$$PaymentTransactionImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentTransactionImpl(
  id: json['id'] as String?,
  userId: json['userId'] as String,
  bookingId: json['bookingId'] as String?,
  bookingType: json['bookingType'] as String?,
  amount: (json['amount'] as num).toDouble(),
  transactionType: $enumDecode(
    _$TransactionTypeEnumMap,
    json['transactionType'],
  ),
  paymentMethod: $enumDecode(_$PaymentMethodEnumMap, json['paymentMethod']),
  gatewayTransId: json['gatewayTransId'] as String?,
  status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
  paidAt: json['paidAt'] == null
      ? null
      : DateTime.parse(json['paidAt'] as String),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PaymentTransactionImplToJson(
  _$PaymentTransactionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'bookingId': instance.bookingId,
  'bookingType': instance.bookingType,
  'amount': instance.amount,
  'transactionType': _$TransactionTypeEnumMap[instance.transactionType]!,
  'paymentMethod': _$PaymentMethodEnumMap[instance.paymentMethod]!,
  'gatewayTransId': instance.gatewayTransId,
  'status': _$PaymentStatusEnumMap[instance.status]!,
  'paidAt': instance.paidAt?.toIso8601String(),
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
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
