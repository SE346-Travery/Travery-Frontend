import 'package:travery_frontend/data/repositories/guide/guide_repository.dart';
import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/data/services/guide/guide_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class GuideRepositoryImpl implements GuideRepository {
  final GuideService _guideService;

  GuideRepositoryImpl({required GuideService guideService})
    : _guideService = guideService;

  @override
  Future<Result<List<GuideTour>>> getGuideTours() async {
    return await _guideService.getGuideTours();
  }

  @override
  Future<Result<GuideTour?>> getGuideTourById(String id) async {
    return await _guideService.getGuideTourById(id);
  }

  @override
  Future<Result<List<GuideTour>>> getGuideToursByStatus(
    GuideTourStatus status,
  ) async {
    return await _guideService.getGuideToursByStatus(status);
  }
}
