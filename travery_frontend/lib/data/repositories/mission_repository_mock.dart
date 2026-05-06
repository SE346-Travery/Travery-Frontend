import 'package:travery_frontend/data/repositories/mission_repository.dart';
import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/data/services/mission/mission_service_mock.dart';
import 'package:travery_frontend/utils/core_result.dart';

class MissionRepositoryMock implements MissionRepository {
  @override
  Future<Result<GuideTour?>> getMissionById(String id) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      GuideTour? mission;
      for (final t in mockMissions) {
        if (t.id == id) {
          mission = t;
          break;
        }
      }
      return Result.ok(mission);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<GuideTour>> getMissionDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      GuideTour? mission;
      for (final t in mockMissions) {
        if (t.id == missionId) {
          mission = t;
          break;
        }
      }
      if (mission == null) {
        return Result.error(Exception('Mission not found'));
      }
      return Result.ok(mission);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
