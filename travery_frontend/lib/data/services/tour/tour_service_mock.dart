import 'package:travery_frontend/data/mock/mock_data.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourServiceMock implements TourService {
  @override
  Future<Result<List<Tour>>> getTours() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockTours);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<Tour?>> getTourById(String id) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      Tour? tour;
      for (final t in mockTours) {
        if (t.id == id) {
          tour = t;
          break;
        }
      }
      return Result.ok(tour);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<TourInstance>>> getTourInstances(String tourId) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      Tour? tour;
      for (final t in mockTours) {
        if (t.id == tourId) {
          tour = t;
          break;
        }
      }
      if (tour == null) {
        return Result.ok([]);
      }
      return Result.ok(tour.instances ?? []);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
