class CancelConfirmationModel {
  final String bookingId;
  final String tourName;
  final double totalAmount;
  final double refundAmount;
  final DateTime? lastFreeCancellationDate;
  final List<RefundTierInfo> refundTiers;

  const CancelConfirmationModel({
    required this.bookingId,
    required this.tourName,
    required this.totalAmount,
    required this.refundAmount,
    this.lastFreeCancellationDate,
    required this.refundTiers,
  });
}

class RefundTierInfo {
  final String label;
  final String description;
  final int refundPercentage;

  const RefundTierInfo({
    required this.label,
    required this.description,
    required this.refundPercentage,
  });
}
