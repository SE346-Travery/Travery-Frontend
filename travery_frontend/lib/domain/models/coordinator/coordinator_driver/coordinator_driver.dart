enum DriverStatus { available, unavailable }

class CoordinatorDriver {
  final String name;
  final String email;
  final String imageUrl;
  final DriverStatus status;

  const CoordinatorDriver({
    required this.name,
    required this.email,
    required this.imageUrl,
    required this.status,
  });
}
