class HotelData {
  const HotelData({
    required this.id,
    required this.name,
    required this.district,
    required this.location,
    required this.roomCount,
    required this.occupancyRate,
    required this.rating,
    this.imageUrl,
  });

  final String id;
  final String name;
  final String district;
  final String location;
  final int roomCount;
  final double occupancyRate;
  final double rating;
  final String? imageUrl;
}

