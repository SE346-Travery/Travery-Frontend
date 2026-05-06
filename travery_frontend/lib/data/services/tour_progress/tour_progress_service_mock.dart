import 'package:travery_frontend/data/services/tour_progress/tour_progress_service.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress_enums.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourProgressServiceMock implements TourProgressService {
  TourProgress? _currentProgress;

  @override
  Future<Result<TourProgress?>> getTourProgressByMission(
    String missionId,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(_currentProgress ?? mockTourProgress);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<TourProgressStep>> updateStepStatus({
    required String progressId,
    required String stepId,
    required TimelineStepStatus newStatus,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      final progress = _currentProgress ?? mockTourProgress;
      final stepIndex = progress.steps.indexWhere((s) => s.id == stepId);
      if (stepIndex == -1) {
        return Result.error(Exception('Step not found'));
      }
      final updatedStep = progress.steps[stepIndex].copyWith(status: newStatus);
      return Result.ok(updatedStep);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<bool>> reportEmergency({
    required String missionId,
    required String description,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(true);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}

final TourProgress mockTourProgress = TourProgress(
  id: 'progress_1',
  missionId: 'guide_tour_1',
  tourName: 'Khám phá Vịnh Hạ Long - Đảo Tuần Châu',
  tourCode: 'HL240502-VIP',
  driverName: 'Nguyễn Văn An',
  vehiclePlate: '29B-123.45',
  totalPassengers: 24,
  customerName: 'Mr. Smith & Friends',
  status: TourProgressStatus.inProgress,
  updatedAt: DateTime.now(),
  steps: [
    TourProgressStep(
      id: 'step_1',
      title: 'Đón khách',
      description: 'Đã đón đủ 24 khách tại điểm hẹn Sân bay Nội Bài.',
      time: 'Cập nhật lúc 08:30 AM',
      status: TimelineStepStatus.completed,
    ),
    TourProgressStep(
      id: 'step_2',
      title: 'Di chuyển',
      description:
          'Đoàn đang di chuyển trên cao tốc Hà Nội - Hải Phòng. Dự kiến tới Hạ Long sau 45 phút.',
      status: TimelineStepStatus.active,
    ),
    TourProgressStep(
      id: 'step_3',
      title: 'Nhận phòng khách sạn',
      description: 'Check-in tại Vinpearl Resort & Spa Ha Long.',
      status: TimelineStepStatus.upcoming,
    ),
    TourProgressStep(
      id: 'step_4',
      title: 'Tham quan',
      description: 'Tham quan Động Thiên Cung và chèo Kayak.',
      status: TimelineStepStatus.upcoming,
    ),
    TourProgressStep(
      id: 'step_5',
      title: 'Kết thúc',
      description: 'Đưa khách về điểm hẹn và trả khách.',
      status: TimelineStepStatus.upcoming,
      isLast: true,
    ),
  ],
);
