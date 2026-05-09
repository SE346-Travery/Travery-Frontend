import 'package:travery_frontend/data/services/check_in/check_in_service.dart';
import 'package:travery_frontend/data/seed_models/check_in/check_in_passenger.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CheckInServiceMock implements CheckInService {
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

final CheckInPassengerList mockPassengerList = CheckInPassengerList(
  passengers: mockPassengers,
  totalCount: mockPassengers.length,
  arrivedCount: mockPassengers
      .where((p) => p.status == CheckInStatus.arrived)
      .length,
);

final List<CheckInPassenger> mockPassengers = [
  CheckInPassenger(
    id: 'pax_001',
    name: 'Nguyễn Văn An',
    idNumber: '001203004567',
    email: 'an.nguyen@gmail.com',
    type: PassengerType.adult,
    status: CheckInStatus.arrived,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_002',
    name: 'Lê Thị Bích Hà',
    idNumber: '079198001234',
    email: 'ha.le@outlook.com',
    type: PassengerType.child,
    status: CheckInStatus.pending,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_003',
    name: 'Trần Hoàng Nam',
    idNumber: '012345678910',
    email: 'nam.tran@company.vn',
    type: PassengerType.adult,
    status: CheckInStatus.pending,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_004',
    name: 'Phạm Minh Tuấn',
    idNumber: '048185002233',
    email: 'tuan.pham@fpt.edu.vn',
    type: PassengerType.adult,
    status: CheckInStatus.arrived,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_005',
    name: 'Võ Thị Mai Lan',
    idNumber: '079195006789',
    email: 'lan.vothi@gmail.com',
    type: PassengerType.adult,
    status: CheckInStatus.pending,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_006',
    name: 'Đặng Hoàng Long',
    idNumber: '034186001122',
    email: 'long.dang@email.com',
    type: PassengerType.adult,
    status: CheckInStatus.arrived,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_007',
    name: 'Bùi Thị Hương Giang',
    idNumber: '079194005678',
    email: 'giang.bui@company.vn',
    type: PassengerType.child,
    status: CheckInStatus.pending,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
  CheckInPassenger(
    id: 'pax_008',
    name: 'Hoàng Đức Minh',
    idNumber: '025187003344',
    email: 'minh.hoang@gmail.com',
    type: PassengerType.adult,
    status: CheckInStatus.pending,
    bookingId: 'book_001',
    missionId: 'guide_tour_1',
  ),
];
