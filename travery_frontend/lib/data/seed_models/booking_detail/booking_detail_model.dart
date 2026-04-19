class BookingDetailModel {
  final String bookingId;
  final String tourName;
  final String? tourImageUrl;
  final double totalPrice;
  final DateTime departureDate;
  final int guestCount;
  final String? paymentMethod;
  final String status;
  final RefundPolicy refundPolicy;

  const BookingDetailModel({
    required this.bookingId,
    required this.tourName,
    this.tourImageUrl,
    required this.totalPrice,
    required this.departureDate,
    required this.guestCount,
    this.paymentMethod,
    required this.status,
    required this.refundPolicy,
  });

  BookingDetailModel copyWith({
    String? bookingId,
    String? tourName,
    String? tourImageUrl,
    double? totalPrice,
    DateTime? departureDate,
    int? guestCount,
    String? paymentMethod,
    String? status,
    RefundPolicy? refundPolicy,
  }) {
    return BookingDetailModel(
      bookingId: bookingId ?? this.bookingId,
      tourName: tourName ?? this.tourName,
      tourImageUrl: tourImageUrl ?? this.tourImageUrl,
      totalPrice: totalPrice ?? this.totalPrice,
      departureDate: departureDate ?? this.departureDate,
      guestCount: guestCount ?? this.guestCount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      refundPolicy: refundPolicy ?? this.refundPolicy,
    );
  }
}

class RefundPolicy {
  final List<RefundTier> tiers;
  final DateTime? lastFreeCancellationDate;

  const RefundPolicy({
    required this.tiers,
    this.lastFreeCancellationDate,
  });
}

class RefundTier {
  final String label;
  final String description;
  final int refundPercentage;
  final DateTime? startDate;
  final DateTime? endDate;

  const RefundTier({
    required this.label,
    required this.description,
    required this.refundPercentage,
    this.startDate,
    this.endDate,
  });
}
