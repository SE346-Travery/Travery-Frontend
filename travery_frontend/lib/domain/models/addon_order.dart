import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';
import 'hotel_service.dart';

part 'addon_order.freezed.dart';
part 'addon_order.g.dart';

/// A request for a HotelService during a stay.
@freezed
class AddonOrder with _$AddonOrder {
  const factory AddonOrder({
    String? id,

    @JsonKey(name: 'hotel_booking_id') required String hotelBookingId,

    @JsonKey(name: 'hotel_service_id') required String hotelServiceId,

    @JsonKey(name: 'quantity') required int quantity,

    @JsonKey(name: 'unit_price') required double unitPrice,

    @JsonKey(name: 'total_price') required double totalPrice,

    @JsonKey(name: 'scheduled_at') DateTime? scheduledAt,

    @JsonKey(name: 'special_requests') String? specialRequests,

    required AddonOrderStatus status,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'cancellation_reason') String? cancellationReason,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATIONS
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
