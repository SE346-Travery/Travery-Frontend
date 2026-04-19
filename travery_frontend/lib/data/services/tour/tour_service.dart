import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class TourService {
  Future<Result<List<Tour>>> getTours();
  Future<Result<Tour?>> getTourById(String id);
  Future<Result<List<TourInstance>>> getTourInstances(String tourId);
}
