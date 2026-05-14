import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_transaction.dart';
import 'user.dart';

part 'refund_request.freezed.dart';
part 'refund_request.g.dart';
@freezed
class RefundRequest with _$RefundRequest {
  const factory RefundRequest({
    String? id,
    required String paymentTransactionId,
    required String userId,
    String? processedById,
    required double requestedAmount,
    double? actualRefunded,
    String? customerReason,
    required RefundRequestStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    PaymentTransaction? paymentTransaction,
    User? user,
    User? processedBy,
  }) = _RefundRequest;

  factory RefundRequest.fromJson(Map<String, dynamic> json) =>
      _$RefundRequestFromJson(json);
}

@JsonEnum()
enum RefundRequestStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('PROCESSING')
  processing,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('REJECTED')
  rejected,
}
