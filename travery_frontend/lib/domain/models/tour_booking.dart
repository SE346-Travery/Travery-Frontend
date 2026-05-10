import 'package:freezed_annotation/freezed_annotation.dart';

import 'payment_transaction.dart';
import 'refund_request.dart';
import 'tour_booking_member.dart';
import 'tour_instance.dart';
import 'tour_review.dart';
import 'user.dart';

part 'tour_booking.freezed.dart';
part 'tour_booking.g.dart';

/// A customer's reservation for a specific TourInstance.
@freezed
class TourBooking with _$TourBooking {
  const factory TourBooking({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'tour_instance_id') required String tourInstanceId,

    @JsonKey(name: 'total_price') required double totalPrice,

    @JsonKey(name: 'payment_deadline') DateTime? paymentDeadline,

    @JsonKey(name: 'special_requests') String? specialRequests,

    @JsonKey(name: 'no_show_note') String? noShowNote,

    @JsonKey(name: 'no_show_at') DateTime? noShowAt,

    required TourBookingStatus status,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'cancelled_by') String? cancelledBy,

    @JsonKey(name: 'refund_request_id') String? refundRequestId,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
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
