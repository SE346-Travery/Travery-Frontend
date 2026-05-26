import 'package:travery_frontend/data/repositories/tour_progress_repository.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress_enums.dart';
import 'package:travery_frontend/data/services/tour_progress/tour_progress_service_mock.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourProgressRepositoryMock implements TourProgressRepository {
  @override
  Future<Result<TourProgress?>> getTourProgressByMission(
    String missionId,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockTourProgress);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<TourProgressStep>> updateStepStatus({
    required String progressId,
    required String stepId,
    required TimelineStepStatus newStatus,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      final progress = mockTourProgress;
      final stepIndex = progress.steps.indexWhere((s) => s.id == stepId);
      if (stepIndex == -1) {
        return Result.error(Exception('Step not found'));
      }
      final updatedStep = progress.steps[stepIndex].copyWith(status: newStatus);
      return Result.ok(updatedStep);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<bool>> reportEmergency({
    required String missionId,
    required String description,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(true);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
