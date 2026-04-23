import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class MissionRepository {
  Future<Result<GuideTour?>> getMissionById(String id);
  Future<Result<GuideTour>> getMissionDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  });
}
