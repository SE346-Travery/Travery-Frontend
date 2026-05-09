import 'package:travery_frontend/data/services/mission/mission_service.dart';
import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/utils/core_result.dart';

class MissionServiceMock implements MissionService {
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

final List<GuideTour> mockMissions = [
  GuideTour(
    id: 'guide_tour_1',
    tourInstanceId: 'ins_1_1',
    tourId: 'tour_1',
    tourName: 'Khám phá Vịnh Hạ Long - Đảo Tuần Châu',
    startDate: DateTime(2026, 4, 23),
    endDate: DateTime(2026, 4, 25),
    groupSize: 25,
    groupDescription: '18 người lớn, 7 trẻ em',
    status: GuideTourStatus.ongoing,
    customerName: 'Nguyễn Văn A',
    customerPhone: '0901234567',
    vehiclePlate: '29B-123.45',
    driverName: 'Nguyễn Văn Hùng',
    bookingId: 'book_001',
  ),
  GuideTour(
    id: 'guide_tour_2',
    tourInstanceId: 'ins_2_1',
    tourId: 'tour_2',
    tourName: 'Hành trình Sapa: Bản Cát Cát - Fansipan',
    startDate: DateTime(2026, 4, 28),
    endDate: DateTime(2026, 4, 30),
    groupSize: 12,
    groupDescription: 'Đoàn VIP cao cấp',
    status: GuideTourStatus.upcoming,
    customerName: 'Lê Thị B',
    customerPhone: '0912345678',
    vehiclePlate: '24B-678.90',
    driverName: 'Hoàng Văn Đức',
    bookingId: 'book_002',
  ),
  GuideTour(
    id: 'guide_tour_3',
    tourInstanceId: 'ins_3_1',
    tourId: 'tour_3',
    tourName: 'Phú Quốc - Thiên đường biển đảo',
    startDate: DateTime(2026, 4, 10),
    endDate: DateTime(2026, 4, 13),
    groupSize: 20,
    groupDescription: '15 người lớn, 5 trẻ em',
    status: GuideTourStatus.completed,
    customerName: 'Phạm Thị C',
    customerPhone: '0923456789',
    vehiclePlate: '21C-111.22',
    driverName: 'Đặng Văn Em',
    bookingId: 'book_003',
  ),
];
