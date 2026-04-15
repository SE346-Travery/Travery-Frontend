class BookingPaymentModel {
  final String bookingId;
  final String tourName;
  final DateTime departureDate;
  final int adultCount;
  final int childCount;
  final double totalPrice;
  final int reservationMinutes;
  final String? qrCodeUrl;
  final String? vnpayTransactionId;
  final PaymentStatus status;

  const BookingPaymentModel({
    required this.bookingId,
    required this.tourName,
    required this.departureDate,
    required this.adultCount,
    required this.childCount,
    required this.totalPrice,
    this.reservationMinutes = 15,
    this.qrCodeUrl,
    this.vnpayTransactionId,
    this.status = PaymentStatus.pending,
  });

  int get totalGuests => adultCount + childCount;

  String get guestDescription {
    if (adultCount > 0 && childCount > 0) {
      return '$adultCount Người lớn, $childCount Trẻ em';
    } else if (adultCount > 0) {
      return '$adultCount Người lớn';
    } else {
      return '$childCount Trẻ em';
    }
  }

  BookingPaymentModel copyWith({
    String? bookingId,
    String? tourName,
    DateTime? departureDate,
    int? adultCount,
    int? childCount,
    double? totalPrice,
    int? reservationMinutes,
    String? qrCodeUrl,
    String? vnpayTransactionId,
    PaymentStatus? status,
  }) {
    return BookingPaymentModel(
      bookingId: bookingId ?? this.bookingId,
      tourName: tourName ?? this.tourName,
      departureDate: departureDate ?? this.departureDate,
      adultCount: adultCount ?? this.adultCount,
      childCount: childCount ?? this.childCount,
      totalPrice: totalPrice ?? this.totalPrice,
      reservationMinutes: reservationMinutes ?? this.reservationMinutes,
      qrCodeUrl: qrCodeUrl ?? this.qrCodeUrl,
      vnpayTransactionId: vnpayTransactionId ?? this.vnpayTransactionId,
      status: status ?? this.status,
    );
  }
}

enum PaymentStatus {
  pending,
  processing,
  completed,
  failed,
  expired,
  refunded,
}

extension PaymentStatusExtension on PaymentStatus {
  String get displayName {
    switch (this) {
      case PaymentStatus.pending:
        return 'Đang chờ thanh toán';
      case PaymentStatus.processing:
        return 'Đang xử lý';
      case PaymentStatus.completed:
        return 'Thanh toán thành công';
      case PaymentStatus.failed:
        return 'Thanh toán thất bại';
      case PaymentStatus.expired:
        return 'Đã hết hạn';
      case PaymentStatus.refunded:
        return 'Đã hoàn tiền';
    }
  }

  bool get isPending => this == PaymentStatus.pending;
  bool get isCompleted => this == PaymentStatus.completed;
  bool get isFailed => this == PaymentStatus.failed;
}
