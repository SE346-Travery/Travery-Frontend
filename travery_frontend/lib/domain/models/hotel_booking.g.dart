// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel_booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotelBookingImpl _$$HotelBookingImplFromJson(Map<String, dynamic> json) =>
    _$HotelBookingImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String,
      tourInstanceId: json['tour_instance_id'] as String?,
      roomId: json['room_id'] as String?,
      checkInDate: DateTime.parse(json['check_in_date'] as String),
      checkOutDate: DateTime.parse(json['check_out_date'] as String),
      nightCount: (json['night_count'] as num).toInt(),
      guestCount: (json['guest_count'] as num).toInt(),
      totalPrice: (json['total_price'] as num).toDouble(),
      paymentDeadline: json['payment_deadline'] == null
          ? null
          : DateTime.parse(json['payment_deadline'] as String),
      specialRequest: json['special_request'] as String?,
      lateCheckoutFee: (json['late_checkout_fee'] as num?)?.toDouble(),
      addonTotal: (json['addon_total'] as num?)?.toDouble(),
      noShowNote: json['no_show_note'] as String?,
      noShowAt: json['no_show_at'] == null
          ? null
          : DateTime.parse(json['no_show_at'] as String),
      status: $enumDecode(_$HotelBookingStatusEnumMap, json['status']),
      actualCheckInAt: json['actual_check_in_at'] == null
          ? null
          : DateTime.parse(json['actual_check_in_at'] as String),
      actualCheckOutAt: json['actual_check_out_at'] == null
          ? null
          : DateTime.parse(json['actual_check_out_at'] as String),
      cancelledAt: json['cancelled_at'] == null
          ? null
          : DateTime.parse(json['cancelled_at'] as String),
      cancellationReason: json['cancellation_reason'] as String?,
      cancelledBy: json['cancelled_by'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      tourInstance: json['tour_instance'] == null
          ? null
          : TourInstance.fromJson(
              json['tour_instance'] as Map<String, dynamic>,
            ),
      room: json['room'] == null
          ? null
          : Room.fromJson(json['room'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) => HotelBookingDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      members: (json['members'] as List<dynamic>?)
          ?.map((e) => HotelBookingMember.fromJson(e as Map<String, dynamic>))
          .toList(),
      addonOrders: (json['addon_orders'] as List<dynamic>?)
          ?.map((e) => AddonOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: json['review'] == null
          ? null
          : HotelReview.fromJson(json['review'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotelBookingImplToJson(_$HotelBookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'tour_instance_id': instance.tourInstanceId,
      'room_id': instance.roomId,
      'check_in_date': instance.checkInDate.toIso8601String(),
      'check_out_date': instance.checkOutDate.toIso8601String(),
      'night_count': instance.nightCount,
      'guest_count': instance.guestCount,
      'total_price': instance.totalPrice,
      'payment_deadline': instance.paymentDeadline?.toIso8601String(),
      'special_request': instance.specialRequest,
      'late_checkout_fee': instance.lateCheckoutFee,
      'addon_total': instance.addonTotal,
      'no_show_note': instance.noShowNote,
      'no_show_at': instance.noShowAt?.toIso8601String(),
      'status': _$HotelBookingStatusEnumMap[instance.status]!,
      'actual_check_in_at': instance.actualCheckInAt?.toIso8601String(),
      'actual_check_out_at': instance.actualCheckOutAt?.toIso8601String(),
      'cancelled_at': instance.cancelledAt?.toIso8601String(),
      'cancellation_reason': instance.cancellationReason,
      'cancelled_by': instance.cancelledBy,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user': instance.user,
      'tour_instance': instance.tourInstance,
      'room': instance.room,
      'details': instance.details,
      'members': instance.members,
      'addon_orders': instance.addonOrders,
      'review': instance.review,
    };

const _$HotelBookingStatusEnumMap = {
  HotelBookingStatus.pending: 'PENDING',
  HotelBookingStatus.paid: 'PAID',
  HotelBookingStatus.checkedIn: 'CHECKED_IN',
  HotelBookingStatus.pendingCheckout: 'PENDING_CHECKOUT',
  HotelBookingStatus.checkedOut: 'CHECKED_OUT',
  HotelBookingStatus.completed: 'COMPLETED',
  HotelBookingStatus.cancelled: 'CANCELLED',
  HotelBookingStatus.noShow: 'NO_SHOW',
};
