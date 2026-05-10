import 'package:freezed_annotation/freezed_annotation.dart';

import 'addon_order.dart';
import 'hotel_booking_detail.dart';
import 'hotel_booking_member.dart';
import 'hotel_review.dart';
import 'room.dart';
import 'tour_instance.dart';
import 'user.dart';

part 'hotel_booking.freezed.dart';
part 'hotel_booking.g.dart';

/// A reservation for lodging. Can be stand-alone or part of a TourInstance.
@freezed
class HotelBooking with _$HotelBooking {
  const factory HotelBooking({
    String? id,

    @JsonKey(name: 'user_id') required String userId,

    @JsonKey(name: 'tour_instance_id') String? tourInstanceId,

    @JsonKey(name: 'room_id') String? roomId,

    @JsonKey(name: 'check_in_date') required DateTime checkInDate,

    @JsonKey(name: 'check_out_date') required DateTime checkOutDate,

    @JsonKey(name: 'night_count') required int nightCount,

    @JsonKey(name: 'guest_count') required int guestCount,

    @JsonKey(name: 'total_price') required double totalPrice,

    @JsonKey(name: 'payment_deadline') DateTime? paymentDeadline,

    @JsonKey(name: 'special_request') String? specialRequest,

    @JsonKey(name: 'late_checkout_fee') double? lateCheckoutFee,

    @JsonKey(name: 'addon_total') double? addonTotal,

    @JsonKey(name: 'no_show_note') String? noShowNote,

    @JsonKey(name: 'no_show_at') DateTime? noShowAt,

    required HotelBookingStatus status,

    @JsonKey(name: 'actual_check_in_at') DateTime? actualCheckInAt,

    @JsonKey(name: 'actual_check_out_at') DateTime? actualCheckOutAt,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'cancelled_by') String? cancelledBy,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
    User? user,
    TourInstance? tourInstance,
    Room? room,
    List<HotelBookingDetail>? details,
    List<HotelBookingMember>? members,
    List<AddonOrder>? addonOrders,
    HotelReview? review,
  }) = _HotelBooking;

  factory HotelBooking.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingFromJson(json);
}

@JsonEnum()
enum HotelBookingStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('PAID')
  paid,
  @JsonValue('CHECKED_IN')
  checkedIn,
  @JsonValue('PENDING_CHECKOUT')
  pendingCheckout,
  @JsonValue('CHECKED_OUT')
  checkedOut,
  @JsonValue('COMPLETED')
  completed,
  @JsonValue('CANCELLED')
  cancelled,
  @JsonValue('NO_SHOW')
  noShow,
}
