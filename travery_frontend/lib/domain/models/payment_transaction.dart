import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'payment_transaction.freezed.dart';
part 'payment_transaction.g.dart';
@freezed
class PaymentTransaction with _$PaymentTransaction {
  const factory PaymentTransaction({
    String? id,

    required String userId,

    String? bookingId,

    String? bookingType,

    required double amount,

    required TransactionType transactionType,

    required PaymentMethod paymentMethod,

    String? gatewayTransId,

    required PaymentStatus status,

    Map<String, dynamic>? gatewayResponse,

    DateTime? paidAt,

    DateTime? createdAt,

    DateTime? updatedAt,
    User? user,
  }) = _PaymentTransaction;

  factory PaymentTransaction.fromJson(Map<String, dynamic> json) =>
      _$PaymentTransactionFromJson(json);
}

@JsonEnum()
enum TransactionType {
  @JsonValue('PAYMENT')
  payment,
  @JsonValue('REFUND')
  refund,
}

@JsonEnum()
enum PaymentMethod {
  @JsonValue('VNPAY')
  vnpay,
  @JsonValue('MOMO')
  momo,
  @JsonValue('CASH')
  cash,
}

@JsonEnum()
enum PaymentStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('SUCCESS')
  success,
  @JsonValue('FAILED')
  failed,
  @JsonValue('REFUNDED')
  refunded,
}
