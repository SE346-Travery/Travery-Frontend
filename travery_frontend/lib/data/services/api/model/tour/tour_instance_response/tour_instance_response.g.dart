// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_instance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TourInstanceResponse _$TourInstanceResponseFromJson(
  Map<String, dynamic> json,
) => _TourInstanceResponse(
  id: json['id'] as String,
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String,
  status: json['status'] as String,
  availableSlots: (json['availableSlots'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$TourInstanceResponseToJson(
  _TourInstanceResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'startDate': instance.startDate,
  'endDate': instance.endDate,
  'status': instance.status,
  'availableSlots': instance.availableSlots,
};
