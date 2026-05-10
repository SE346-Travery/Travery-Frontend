import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour_booking.dart';

part 'tour_booking_member.freezed.dart';
part 'tour_booking_member.g.dart';

/// Polymorphic entity representing an individual passenger in a tour booking.
@freezed
class TourBookingMember with _$TourBookingMember {
  const factory TourBookingMember({
    String? id,

    @JsonKey(name: 'booking_id') required String bookingId,

    @JsonKey(name: 'booking_type') required String bookingType,

    @JsonKey(name: 'full_name') required String fullName,

    @JsonKey(name: 'passport_number') String? passportNumber,

    @JsonKey(name: 'date_of_birth') DateTime? dateOfBirth,

    @JsonKey(name: 'gender') String? gender,

    @JsonKey(name: 'is_child') @Default(false) bool isChild,

    @JsonKey(name: 'cancelled_at') DateTime? cancelledAt,

    @JsonKey(name: 'created_at') DateTime? createdAt,

    @JsonKey(name: 'updated_at') DateTime? updatedAt,

    /// RELATION
    TourBooking? booking,
  }) = _TourBookingMember;

  factory TourBookingMember.fromJson(Map<String, dynamic> json) =>
      _$TourBookingMemberFromJson(json);
}

@JsonEnum()
enum BookingMemberStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('CANCELLED')
  cancelled,
}

@JsonEnum()
enum IdentityType {
  @JsonValue('CCCD')
  cccd,
  @JsonValue('PASSPORT')
  passport,
  @JsonValue('BIRTH_CERTIFICATE')
  birthCertificate,
}
