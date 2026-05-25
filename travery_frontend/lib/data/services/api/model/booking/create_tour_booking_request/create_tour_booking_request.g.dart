// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_tour_booking_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTourBookingRequestImpl _$$CreateTourBookingRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateTourBookingRequestImpl(
  members: (json['members'] as List<dynamic>)
      .map((e) => BookingMemberRequest.fromJson(e as Map<String, dynamic>))
      .toList(),
  specialRequests: json['specialRequests'] as String? ?? '',
);

Map<String, dynamic> _$$CreateTourBookingRequestImplToJson(
  _$CreateTourBookingRequestImpl instance,
) => <String, dynamic>{
  'members': instance.members,
  'specialRequests': instance.specialRequests,
};

_$BookingMemberRequestImpl _$$BookingMemberRequestImplFromJson(
  Map<String, dynamic> json,
) => _$BookingMemberRequestImpl(
  fullName: json['fullName'] as String,
  identityNumber: json['identityNumber'] as String? ?? '',
  dateOfBirth: json['dateOfBirth'] as String? ?? '',
  memberType: json['memberType'] as String? ?? 'ADULT',
);

Map<String, dynamic> _$$BookingMemberRequestImplToJson(
  _$BookingMemberRequestImpl instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'identityNumber': instance.identityNumber,
  'dateOfBirth': instance.dateOfBirth,
  'memberType': instance.memberType,
};
