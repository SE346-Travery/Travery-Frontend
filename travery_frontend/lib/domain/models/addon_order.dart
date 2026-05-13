import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';
import 'hotel_service.dart';

part 'addon_order.freezed.dart';
part 'addon_order.g.dart';
@freezed
class AddonOrder with _$AddonOrder {
  const factory AddonOrder({
    String? id,

    required String hotelBookingId,

    required String hotelServiceId,

    required int quantity,

    required double unitPrice,

    required double totalPrice,

    DateTime? scheduledAt,

    String? specialRequests,

    required AddonOrderStatus status,

    DateTime? cancelledAt,

    String? cancellationReason,

    DateTime? createdAt,

    DateTime? updatedAt,
    HotelBooking? hotelBooking,
    HotelService? hotelService,
  }) = _AddonOrder;

  factory AddonOrder.fromJson(Map<String, dynamic> json) =>
      _$AddonOrderFromJson(json);
}

@JsonEnum()
enum AddonOrderStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('CONFIRMED')
  confirmed,
  @JsonValue('IN_PROGRESS')
  inProgress,
  @JsonValue('DELIVERED')
  delivered,
  @JsonValue('CANCELLED')
  cancelled,
}
