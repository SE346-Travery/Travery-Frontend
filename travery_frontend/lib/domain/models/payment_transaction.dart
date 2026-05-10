import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'payment_transaction.freezed.dart';
part 'payment_transaction.g.dart';

/// Polymorphic transaction record for all cash flows.
@freezed
class PaymentTransaction with _$PaymentTransaction {
  const factory PaymentTransaction({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'booking_id') String? bookingId,

    @JsonKey(name: 'booking_type') String? bookingType,

    @JsonKey(name: 'amount') required double amount,

    required TransactionType transactionType,

    required PaymentMethod paymentMethod,

    @JsonKey(name: 'gateway_trans_id') String? gatewayTransId,

    required PaymentStatus status,

    @JsonKey(name: 'gateway_response') Map<String, dynamic>? gatewayResponse,

    @JsonKey(name: 'paid_at') DateTime? paidAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
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
