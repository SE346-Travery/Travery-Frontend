import 'package:travery_frontend/data/services/tour_completed/tour_completed_service.dart';
import 'package:travery_frontend/data/seed_models/tour_completed/tour_completed.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourCompletedServiceMock implements TourCompletedService {
  @override
  Future<Result<TourCompletedDetail?>> getTourCompletedDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockTourCompletedDetail);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<TourCompletedSummary>>> getCompletedTours() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(mockCompletedSummaries);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}

final TourCompletedDetail mockTourCompletedDetail = TourCompletedDetail(
  id: 'completed_1',
  missionId: 'guide_tour_3',
  tripCode: 'TRV123',
  title: 'Hoàng Thành Huế & Sông Hương',
  date: DateTime(2023, 10, 24),
  status: TourCompletedStatus.completed,
  totalPassengers: 24,
  presentPassengers: 22,
  absentPassengers: 2,
  completedSteps: [
    CompletedStep(
      id: 'step_c1',
      time: '08:00 AM',
      title: 'Đón khách',
      location: 'Điểm hẹn Alpha',
      status: StepStatus.completed,
    ),
    CompletedStep(
      id: 'step_c2',
      time: '09:30 AM',
      title: 'Nhận phòng',
      location: 'Khách sạn Silk Path',
      status: StepStatus.completed,
    ),
    CompletedStep(
      id: 'step_c3',
      time: '10:45 AM',
      title: 'Tham quan',
      location: 'Quần thể Đại Nội',
      status: StepStatus.completed,
    ),
    CompletedStep(
      id: 'step_c4',
      time: '04:30 PM',
      title: 'Trả phòng',
      location: 'Hậu cần cuối',
      status: StepStatus.completed,
    ),
    CompletedStep(
      id: 'step_c5',
      time: '05:00 PM',
      title: 'Kết thúc',
      location: 'Giải tán đoàn',
      status: StepStatus.completed,
      isLast: true,
    ),
  ],
  incidents: [],
);

final List<TourCompletedSummary> mockCompletedSummaries = [
  TourCompletedSummary(
    id: 'completed_1',
    missionId: 'guide_tour_3',
    tripCode: 'TRV123',
    title: 'Hoàng Thành Huế & Sông Hương',
    date: DateTime(2023, 10, 24),
    status: TourCompletedStatus.completed,
    totalPassengers: 24,
    presentPassengers: 22,
    absentPassengers: 2,
  ),
];
