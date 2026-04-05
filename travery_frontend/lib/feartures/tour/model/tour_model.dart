class Tour {
  final String id;
  final String title;
  final String? description;
  final String thumbnail;
  final List<String>? images;
  final String departureLocation;
  final String destination;
  final String duration;
  final DateTime departureDate;
  final double price;
  final int availableSlots;
  final int totalSlots;
  final double? rating;
  final int? reviewCount;
  final List<Itinerary>? itinerary;

  Tour({
    required this.id,
    required this.title,
    this.description,
    required this.thumbnail,
    this.images,
    required this.departureLocation,
    required this.destination,
    required this.duration,
    required this.departureDate,
    required this.price,
    required this.availableSlots,
    required this.totalSlots,
    this.rating,
    this.reviewCount,
    this.itinerary,
  });
}

class Itinerary {
  final int day;
  final String title;
  final String? description;
  final String? image;

  Itinerary({
    required this.day,
    required this.title,
    this.description,
    this.image,
  });
}
