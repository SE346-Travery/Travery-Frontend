import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_transaction.dart';
import 'refund_request.dart';
import 'tour_booking_member.dart';
import 'tour_instance.dart';
import 'tour_review.dart';
import 'user.dart';

part 'tour_booking.freezed.dart';
part 'tour_booking.g.dart';
@freezed
class TourBooking with _$TourBooking {
  const factory TourBooking({
    String? id,
    required String userId,
    required String tourInstanceId,
    required double totalPrice,
    DateTime? paymentDeadline,
    required TourBookingStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
    User? user,
    TourInstance? tourInstance,
    List<TourBookingMember>? members,
    List<PaymentTransaction>? payments,
    RefundRequest? refundRequest,
    TourReview? review,
  }) = _TourBooking;

  factory TourBooking.fromJson(Map<String, dynamic> json) =>
      _$TourBookingFromJson(json);
}

@JsonEnum()
enum TourBookingStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('PAID')
  paid,
  @JsonValue('CONFIRMED')
  confirmed,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('NO_SHOW')
  noShow,
}
