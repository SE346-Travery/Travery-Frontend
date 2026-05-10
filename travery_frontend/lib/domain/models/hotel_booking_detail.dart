import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_booking_detail.freezed.dart';
part 'hotel_booking_detail.g.dart';

/// Specific room type requirements within a HotelBooking.
@freezed
class HotelBookingDetail with _$HotelBookingDetail {
  const factory HotelBookingDetail({
    String? id,

    @JsonKey(name: 'hotel_booking_id') required String hotelBookingId,

    @JsonKey(name: 'room_type_id') required String roomTypeId,

    @JsonKey(name: 'quantity') required int quantity,

    @JsonKey(name: 'price_at_booking') required double priceAtBooking,

    @JsonKey(name: 'start_date') required DateTime startDate,

    @JsonKey(name: 'end_date') required DateTime endDate,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _HotelBookingDetail;

  factory HotelBookingDetail.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingDetailFromJson(json);
}
