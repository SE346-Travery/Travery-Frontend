enum CoachStatus { running, available }

class Coach {
  const Coach({
    required this.id,
    required this.routeFrom,
    required this.routeTo,
    required this.status,
    required this.plateNumber,
    required this.vehicleType,
    required this.seatCount,
    required this.driverName,
  });

  final String id;
  final String routeFrom;
  final String routeTo;
  final CoachStatus status;
  final String plateNumber;
  final String vehicleType;
  final int seatCount;
  final String driverName;
}
