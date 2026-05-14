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
@freezed
class HotelBooking with _$HotelBooking {
  const factory HotelBooking({
    String? id,
    required String userId,
    String? tourInstanceId,
    required double totalPrice,
    DateTime? paymentDeadline,
    required HotelBookingStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
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
