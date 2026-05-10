class TourSummary {
  const TourSummary({
    required this.completed,
    required this.ongoing,
    required this.occupancyRate,
    required this.avgRating,
    required this.cancellations,
  });

  final int completed;
  final int ongoing;
  final double occupancyRate;
  final double avgRating;
  final int cancellations;
}
