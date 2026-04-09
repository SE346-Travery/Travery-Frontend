class TourInstance {
  final String id;
  final String tourId;
  final DateTime startDate;
  final DateTime endDate;
  final String status;

  TourInstance({
    required this.id,
    required this.tourId,
    required this.startDate,
    required this.endDate,
    required this.status,
  });

  factory TourInstance.fromJson(Map<String, dynamic> json) {
    return TourInstance(
      id: json['id'],
      tourId: json['tour_id'],
      startDate: DateTime.parse(json['start_date']),
      endDate: DateTime.parse(json['end_date']),
      status: json['status'],
    );
  }
}
