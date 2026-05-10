// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coach_seat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoachSeatImpl _$$CoachSeatImplFromJson(Map<String, dynamic> json) =>
    _$CoachSeatImpl(
      id: json['id'] as String?,
      coachId: json['coach_id'] as String,
      seatName: json['seat_name'] as String,
      tier: $enumDecode(_$SeatTierEnumMap, json['tier']),
      position: $enumDecode(_$SeatPositionEnumMap, json['position']),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      isAvailable: json['is_available'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoachSeatImplToJson(_$CoachSeatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coach_id': instance.coachId,
      'seat_name': instance.seatName,
      'tier': _$SeatTierEnumMap[instance.tier]!,
      'position': _$SeatPositionEnumMap[instance.position]!,
      'floor_number': instance.floorNumber,
      'is_available': instance.isAvailable,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'coach': instance.coach,
    };

const _$SeatTierEnumMap = {SeatTier.upper: 'UPPER', SeatTier.lower: 'LOWER'};

const _$SeatPositionEnumMap = {
  SeatPosition.front: 'FRONT',
  SeatPosition.middle: 'MIDDLE',
  SeatPosition.back: 'BACK',
};
