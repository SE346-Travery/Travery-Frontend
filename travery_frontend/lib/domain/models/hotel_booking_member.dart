import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';

part 'hotel_booking_member.freezed.dart';
part 'hotel_booking_member.g.dart';
@freezed
class HotelBookingMember with _$HotelBookingMember {
  const factory HotelBookingMember({
    String? id,

    required String hotelBookingId,

    required String fullName,

    required String passportNumber,

    DateTime? dateOfBirth,

    String? gender,

    DateTime? createdAt,

    DateTime? updatedAt,
    HotelBooking? hotelBooking,
  }) = _HotelBookingMember;

  factory HotelBookingMember.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingMemberFromJson(json);
}
