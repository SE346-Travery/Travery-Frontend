import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_transaction.dart';
import 'user.dart';

part 'refund_request.freezed.dart';
part 'refund_request.g.dart';

/// A request to return funds for a cancelled service.
@freezed
class RefundRequest with _$RefundRequest {
  const factory RefundRequest({
    String? id,

    @JsonKey(name: 'payment_transaction_id')
    required String paymentTransactionId,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'processed_by_id') String? processedById,

    @JsonKey(name: 'requested_amount') required double requestedAmount,

    @JsonKey(name: 'actual_refunded') double? actualRefunded,

    @JsonKey(name: 'customer_reason') String? customerReason,

    @JsonKey(name: 'admin_response') String? adminResponse,

    required RefundRequestStatus status,

    @JsonKey(name: 'processed_at') DateTime? processedAt,

    @JsonKey(name: 'completed_at') DateTime? completedAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
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
