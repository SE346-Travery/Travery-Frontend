import 'package:travery_frontend/data/repositories/tour_completed_repository.dart';
import 'package:travery_frontend/data/seed_models/tour_completed/tour_completed.dart';
import 'package:travery_frontend/data/services/tour_completed/tour_completed_service_mock.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourCompletedRepositoryMock implements TourCompletedRepository {
  @override
  Future<Result<TourCompletedDetail?>> getTourCompletedDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockTourCompletedDetail);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<TourCompletedSummary>>> getCompletedTours() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockCompletedSummaries);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
