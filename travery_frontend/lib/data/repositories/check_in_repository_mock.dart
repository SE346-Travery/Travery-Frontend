import 'package:travery_frontend/data/repositories/check_in_repository.dart';
import 'package:travery_frontend/data/seed_models/check_in/check_in_passenger.dart';
import 'package:travery_frontend/data/services/check_in/check_in_service_mock.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CheckInRepositoryMock implements CheckInRepository {
  @override
  Future<Result<CheckInPassengerList>> getPassengersByMission(
    String missionId,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockPassengerList);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<CheckInPassengerList>> searchPassengers({
    required String missionId,
    required String query,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      final lowerQuery = query.toLowerCase();
      final filtered = mockPassengerList.passengers.where((p) {
        return p.name.toLowerCase().contains(lowerQuery) ||
            p.idNumber.toLowerCase().contains(lowerQuery);
      }).toList();
      return Result.ok(
        CheckInPassengerList(
          passengers: filtered,
          totalCount: filtered.length,
          arrivedCount: filtered
              .where((p) => p.status == CheckInStatus.arrived)
              .length,
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<CheckInPassenger>> updatePassengerStatus({
    required String passengerId,
    required CheckInStatus status,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 200));
      final index = mockPassengerList.passengers.indexWhere(
        (p) => p.id == passengerId,
      );
      if (index == -1) {
        return Result.error(Exception('Passenger not found'));
      }
      final updated = mockPassengerList.passengers[index].copyWith(
        status: status,
      );
      return Result.ok(updated);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<bool>> completeCheckIn({
    required String missionId,
    required List<String> arrivedPassengerIds,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(true);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
