import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class GuideRepository {
  Future<Result<List<GuideTour>>> getGuideTours();
  Future<Result<GuideTour?>> getGuideTourById(String id);
  Future<Result<List<GuideTour>>> getGuideToursByStatus(GuideTourStatus status);
}
