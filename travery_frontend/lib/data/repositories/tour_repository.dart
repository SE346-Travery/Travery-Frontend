import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/data/seed_models/tour_booking/tour_booking.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class TourRepository {
  Future<Result<List<Tour>>> getTours();
  Future<Result<Tour?>> getTourById(String id);
  Future<Result<List<TourInstance>>> getTourInstances(String tourId);
  Future<Result<TourInstance?>> getTourInstanceById(String id);
  Future<Result<TourBooking>> createBooking({
    required String tourInstanceId,
    required String passengerName,
    required String passengerPhone,
    required int adultCount,
    required int childCount,
    required double totalPrice,
    String? specialNotes,
  });
}
