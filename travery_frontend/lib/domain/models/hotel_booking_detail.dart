import 'package:freezed_annotation/freezed_annotation.dart';

part 'hotel_booking_detail.freezed.dart';
part 'hotel_booking_detail.g.dart';
@freezed
class HotelBookingDetail with _$HotelBookingDetail {
  const factory HotelBookingDetail({
    String? id,
    required String hotelBookingId,
    required String roomTypeId,
    required int quantity,
    required double priceAtBooking,
    required DateTime startDate,
    required DateTime endDate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _HotelBookingDetail;

  factory HotelBookingDetail.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingDetailFromJson(json);
}
