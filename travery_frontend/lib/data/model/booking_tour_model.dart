class BookingTour {
  final String id;
  final String userId;
  final String tourInstanceId;

  final String passengerName;
  final String passengerPhone;

  final String status;
  final Map<String, dynamic>? statusRefund;

  final int adultCount;
  final int childCount;

  final double totalPrice;

  final List<dynamic>? memberList;

  final String? roomRequest;
  final String? specialNotes;
  final String? responseByCoordinator;

  final String? coordinatorId;
  final String? cancellationReason;

  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? cancelledAt;

  final String? noShowNote;
  final DateTime? noShowAt;

  BookingTour({
    required this.id,
    required this.userId,
    required this.tourInstanceId,
    required this.passengerName,
    required this.passengerPhone,
    required this.status,
    this.statusRefund,
    required this.adultCount,
    required this.childCount,
    required this.totalPrice,
    this.memberList,
    this.roomRequest,
    this.specialNotes,
    this.responseByCoordinator,
    this.coordinatorId,
    this.cancellationReason,
    required this.createdAt,
    required this.updatedAt,
    this.cancelledAt,
    this.noShowNote,
    this.noShowAt,
  });

  factory BookingTour.fromJson(Map<String, dynamic> json) {
    return BookingTour(
      id: json['id'],
      userId: json['user_id'],
      tourInstanceId: json['tour_instance_id'],
      passengerName: json['passenger_name'],
      passengerPhone: json['passenger_phone'],
      status: json['status'],
      statusRefund: json['status_refund'],
      adultCount: json['adult_count'],
      childCount: json['child_count'],
      totalPrice: (json['total_price'] as num).toDouble(),
      memberList: json['member_list'],
      roomRequest: json['room_request'],
      specialNotes: json['special_notes'],
      responseByCoordinator: json['response_by_coordinator'],
      coordinatorId: json['coordinatorID'],
      cancellationReason: json['cancellation_reason'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      cancelledAt: json['cancelled_at'] != null
          ? DateTime.parse(json['cancelled_at'])
          : null,
      noShowNote: json['no_show_note'],
      noShowAt: json['no_show_at'] != null
          ? DateTime.parse(json['no_show_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'tour_instance_id': tourInstanceId,
      'passenger_name': passengerName,
      'passenger_phone': passengerPhone,
      'status': status,
      'status_refund': statusRefund,
      'adult_count': adultCount,
      'child_count': childCount,
      'total_price': totalPrice,
      'member_list': memberList,
      'room_request': roomRequest,
      'special_notes': specialNotes,
      'response_by_coordinator': responseByCoordinator,
      'coordinatorID': coordinatorId,
      'cancellation_reason': cancellationReason,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
      'cancelled_at': cancelledAt?.toIso8601String(),
      'no_show_note': noShowNote,
      'no_show_at': noShowAt?.toIso8601String(),
    };
  }
}
