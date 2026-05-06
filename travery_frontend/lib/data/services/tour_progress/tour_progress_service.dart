import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress_enums.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class TourProgressService {
  Future<Result<TourProgress?>> getTourProgressByMission(String missionId);
  Future<Result<TourProgressStep>> updateStepStatus({
    required String progressId,
    required String stepId,
    required TimelineStepStatus newStatus,
  });
  Future<Result<bool>> reportEmergency({
    required String missionId,
    required String description,
  });
}
