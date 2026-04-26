import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/data/services/guide/guide_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class GuideServiceMock implements GuideService {
  @override
  Future<Result<List<GuideTour>>> getGuideTours() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(_mockGuideTours);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<GuideTour?>> getGuideTourById(String id) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      GuideTour? guideTour;
      for (final t in _mockGuideTours) {
        if (t.id == id) {
          guideTour = t;
          break;
        }
      }
      return Result.ok(guideTour);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<GuideTour>>> getGuideToursByStatus(
    GuideTourStatus status,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      final filtered = _mockGuideTours
          .where((t) => t.status == status)
          .toList();
      return Result.ok(filtered);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}

final List<GuideTour> _mockGuideTours = [
  GuideTour(
    id: 'guide_tour_1',
    tourInstanceId: 'ins_1_1',
    tourId: 'tour_1',
    tourName: 'Khám phá Vịnh Hạ Long & Hang Sửng Sốt',
    startDate: DateTime(2026, 4, 23),
    endDate: DateTime(2026, 4, 25),
    groupSize: 25,
    groupDescription: '18 người lớn, 7 trẻ em',
    status: GuideTourStatus.ongoing,
    customerName: 'Nguyễn Văn A',
    customerPhone: '0901234567',
    vehiclePlate: '29A-123.45',
    driverName: 'Trần Văn Tài',
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
  ),
  GuideTour(
    id: 'guide_tour_4',
    tourInstanceId: 'ins_4_1',
    tourId: 'tour_4',
    tourName: 'Hà Nội - Ninh Bình: Cố đô và Tràng An',
    startDate: DateTime(2026, 4, 5),
    endDate: DateTime(2026, 4, 6),
    groupSize: 18,
    groupDescription: 'Đoàn công ty ABC',
    status: GuideTourStatus.completed,
    customerName: 'Võ Thị D',
    customerPhone: '0934567890',
    vehiclePlate: '29D-333.44',
    driverName: 'Bùi Văn F',
  ),
];
