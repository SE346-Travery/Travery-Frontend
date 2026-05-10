import 'package:freezed_annotation/freezed_annotation.dart';

import 'hotel_booking.dart';

part 'hotel_booking_member.freezed.dart';
part 'hotel_booking_member.g.dart';

/// Individual guest in a hotel booking.
@freezed
class HotelBookingMember with _$HotelBookingMember {
  const factory HotelBookingMember({
    String? id,

    @JsonKey(name: 'hotel_booking_id') required String hotelBookingId,

    @JsonKey(name: 'full_name') required String fullName,

    @JsonKey(name: 'passport_number') required String passportNumber,

    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,

    @JsonKey(name: 'gender') String? gender,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    HotelBooking? hotelBooking,
  }) = _HotelBookingMember;

  factory HotelBookingMember.fromJson(Map<String, dynamic> json) =>
      _$HotelBookingMemberFromJson(json);
}
