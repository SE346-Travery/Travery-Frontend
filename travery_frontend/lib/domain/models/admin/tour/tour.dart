enum TourTrend { up, down, stable }

class Tour {
  const Tour({
    required this.id,
    required this.rank,
    required this.tourName,
    required this.category,
    required this.trend,
    this.imageUrl,
  });

  final String id;
  final int rank;
  final String tourName;
  final String category;
  final TourTrend trend;
  final String? imageUrl;
}
