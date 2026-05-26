import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_response.freezed.dart';
part 'create_payment_response.g.dart';

@freezed
abstract class CreatePaymentResponse with _$CreatePaymentResponse {
  const factory CreatePaymentResponse({required PaymentResponseData data}) =
      _CreatePaymentResponse;

  factory CreatePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentResponseFromJson(json);
}

@freezed
abstract class PaymentResponseData with _$PaymentResponseData {
  const factory PaymentResponseData({
    @Default('') String transactionId,
    @Default(0) double amount,
    @Default('') String paymentUrl,
    String? expiresAt,
  }) = _PaymentResponseData;

  factory PaymentResponseData.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseDataFromJson(json);
}
