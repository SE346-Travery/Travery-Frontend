// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelReviewImpl _$$HotelReviewImplFromJson(Map<String, dynamic> json) =>
    _$HotelReviewImpl(
      id: json['id'] as String?,
      bookingId: json['booking_id'] as String,
      bookingType: json['booking_type'] as String,
      userId: json['user_id'] as String,
      hotelId: json['hotel_id'] as String,
      rating: (json['rating'] as num).toInt(),
      content: json['content'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      booking: json['booking'] == null
          ? null
          : HotelBooking.fromJson(json['booking'] as Map<String, dynamic>),
      hotel: json['hotel'] == null
          ? null
          : Hotel.fromJson(json['hotel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelReviewImplToJson(_$HotelReviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'booking_id': instance.bookingId,
      'booking_type': instance.bookingType,
      'user_id': instance.userId,
      'hotel_id': instance.hotelId,
      'rating': instance.rating,
      'content': instance.content,
      'images': instance.images,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'booking': instance.booking,
      'hotel': instance.hotel,
    };
