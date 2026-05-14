import 'package:freezed_annotation/freezed_annotation.dart';

import 'tour_booking.dart';

part 'tour_booking_member.freezed.dart';
part 'tour_booking_member.g.dart';
@freezed
class TourBookingMember with _$TourBookingMember {
  const factory TourBookingMember({
    String? id,
    required String fullName,
    String? identityNumber,
    IdentityType? identityType,
    @Default(false) bool isChild,
    required BookingMemberStatus status,
    DateTime? createdAt,
    DateTime? updatedAt,
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
