enum CoachType { sleeper, limousine, standard }

class BusinessCoach {
  const BusinessCoach({
    required this.id,
    required this.plateNumber,
    required this.coachType,
    required this.seatCount,
  });

  final String id;
  final String plateNumber;
  final String coachType;
  final int seatCount;
}
