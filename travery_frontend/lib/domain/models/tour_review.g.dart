// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tour_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TourReviewImpl _$$TourReviewImplFromJson(Map<String, dynamic> json) =>
    _$TourReviewImpl(
      id: json['id'] as String?,
      bookingId: json['bookingId'] as String,
      bookingType: json['bookingType'] as String,
      userId: json['userId'] as String,
      tourId: json['tourId'] as String,
      rating: (json['rating'] as num).toInt(),
      content: json['content'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      booking: json['booking'] == null
          ? null
          : TourBooking.fromJson(json['booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TourReviewImplToJson(_$TourReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bookingId': instance.bookingId,
      'bookingType': instance.bookingType,
      'userId': instance.userId,
      'tourId': instance.tourId,
      'rating': instance.rating,
      'content': instance.content,
      'images': instance.images,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'booking': instance.booking,
    };
