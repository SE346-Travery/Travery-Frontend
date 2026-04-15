import 'package:travery_frontend/data/mock/mock_data.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_booking/tour_booking.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourRepositoryMock implements TourRepository {
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

  @override
  Future<Result<TourInstance?>> getTourInstanceById(String id) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      TourInstance? instance;
      for (final tour in mockTours) {
        if (tour.instances != null) {
          for (final i in tour.instances!) {
            if (i.id == id) {
              instance = i;
              break;
            }
          }
        }
        if (instance != null) break;
      }
      return Result.ok(instance);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<TourBooking>> createBooking({
    required String tourInstanceId,
    required String passengerName,
    required String passengerPhone,
    required int adultCount,
    required int childCount,
    required double totalPrice,
    String? specialNotes,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final booking = TourBooking(
        id: 'book_${DateTime.now().millisecondsSinceEpoch}',
        userId: 'user_1',
        tourInstanceId: tourInstanceId,
        passengerName: passengerName,
        passengerPhone: passengerPhone,
        adultCount: adultCount,
        childCount: childCount,
        totalPrice: totalPrice,
        specialNotes: specialNotes,
        status: BookingStatus.pending,
        members: [],
      );
      return Result.ok(booking);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
