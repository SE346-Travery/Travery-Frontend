class CancellationSuccessModel {
  final String bookingId;
  final String tourName;
  final double refundAmount;
  final String paymentMethod;
  final int processingDays;
  final DateTime cancelledAt;

  const CancellationSuccessModel({
    required this.bookingId,
    required this.tourName,
    required this.refundAmount,
    required this.paymentMethod,
    required this.processingDays,
    required this.cancelledAt,
  });
}
