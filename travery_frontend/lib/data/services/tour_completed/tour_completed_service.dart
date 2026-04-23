import 'package:travery_frontend/data/seed_models/tour_completed/tour_completed.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class TourCompletedService {
  Future<Result<TourCompletedDetail?>> getTourCompletedDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  });
  Future<Result<List<TourCompletedSummary>>> getCompletedTours();
}
