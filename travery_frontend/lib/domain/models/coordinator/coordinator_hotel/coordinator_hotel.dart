class CoordinatorHotel {
  final String id;
  final String name;
  final String imageUrl;
  final String address;
  final int slotsLeft;
  final String roomType;
  final int roomCount;

  const CoordinatorHotel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.address,
    required this.slotsLeft,
    required this.roomType,
    required this.roomCount,
  });
}
