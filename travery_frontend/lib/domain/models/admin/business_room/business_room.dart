enum RoomType { single, double, suite }

enum BedType { single, double }

class BusinessRoom {
  final String id;
  final String name;
  final RoomType type;
  final double pricePerNight;
  final int capacity;
  final int maxAdults;
  final int maxChildren;
  final String status;
  final String hotelId;

  BusinessRoom({
    required this.id,
    required this.name,
    required this.type,
    required this.pricePerNight,
    required this.capacity,
    required this.maxAdults,
    required this.maxChildren,
    required this.status,
    required this.hotelId,
  });
}
