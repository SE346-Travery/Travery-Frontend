import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress_enums.dart';

class TourProgressStep {
  final String id;
  final String title;
  final String description;
  final String? time;
  final TimelineStepStatus status;
  final bool isLast;

  const TourProgressStep({
    required this.id,
    required this.title,
    required this.description,
    this.time,
    required this.status,
    this.isLast = false,
  });

  TourProgressStep copyWith({
    String? id,
    String? title,
    String? description,
    String? time,
    TimelineStepStatus? status,
    bool? isLast,
  }) {
    return TourProgressStep(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      time: time ?? this.time,
      status: status ?? this.status,
      isLast: isLast ?? this.isLast,
    );
  }

  bool get isCompleted => status == TimelineStepStatus.completed;
  bool get isActive => status == TimelineStepStatus.active;
  bool get isUpcoming => status == TimelineStepStatus.upcoming;
}

class TourProgress {
  final String id;
  final String missionId;
  final String tourName;
  final String tourCode;
  final String driverName;
  final String vehiclePlate;
  final int totalPassengers;
  final String customerName;
  final TourProgressStatus status;
  final List<TourProgressStep> steps;
  final DateTime updatedAt;

  const TourProgress({
    required this.id,
    required this.missionId,
    required this.tourName,
    required this.tourCode,
    required this.driverName,
    required this.vehiclePlate,
    required this.totalPassengers,
    required this.customerName,
    required this.status,
    required this.steps,
    required this.updatedAt,
  });

  int get completedStepsCount =>
      steps.where((s) => s.status == TimelineStepStatus.completed).length;
  int get activeStepIndex =>
      steps.indexWhere((s) => s.status == TimelineStepStatus.active);
  double get progress => steps.isEmpty ? 0 : completedStepsCount / steps.length;

  TourProgress copyWith({
    String? id,
    String? missionId,
    String? tourName,
    String? tourCode,
    String? driverName,
    String? vehiclePlate,
    int? totalPassengers,
    String? customerName,
    TourProgressStatus? status,
    List<TourProgressStep>? steps,
    DateTime? updatedAt,
  }) {
    return TourProgress(
      id: id ?? this.id,
      missionId: missionId ?? this.missionId,
      tourName: tourName ?? this.tourName,
      tourCode: tourCode ?? this.tourCode,
      driverName: driverName ?? this.driverName,
      vehiclePlate: vehiclePlate ?? this.vehiclePlate,
      totalPassengers: totalPassengers ?? this.totalPassengers,
      customerName: customerName ?? this.customerName,
      status: status ?? this.status,
      steps: steps ?? this.steps,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
