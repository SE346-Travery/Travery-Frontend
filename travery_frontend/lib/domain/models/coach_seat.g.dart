// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachSeatImpl _$$CoachSeatImplFromJson(Map<String, dynamic> json) =>
    _$CoachSeatImpl(
      id: json['id'] as String?,
      coachId: json['coachId'] as String,
      seatName: json['seatName'] as String,
      tier: $enumDecode(_$SeatTierEnumMap, json['tier']),
      position: $enumDecode(_$SeatPositionEnumMap, json['position']),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoachSeatImplToJson(_$CoachSeatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coachId': instance.coachId,
      'seatName': instance.seatName,
      'tier': _$SeatTierEnumMap[instance.tier]!,
      'position': _$SeatPositionEnumMap[instance.position]!,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'coach': instance.coach,
    };

const _$SeatTierEnumMap = {SeatTier.upper: 'UPPER', SeatTier.lower: 'LOWER'};

const _$SeatPositionEnumMap = {
  SeatPosition.front: 'FRONT',
  SeatPosition.middle: 'MIDDLE',
  SeatPosition.back: 'BACK',
};
