import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress.dart';
import 'package:travery_frontend/data/seed_models/tour_progress/tour_progress_enums.dart';
import 'package:travery_frontend/data/repositories/tour_progress_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourProgressViewModel extends ChangeNotifier {
  final TourProgressRepository _repository;

  TourProgressViewModel({required TourProgressRepository repository})
    : _repository = repository;

  String? _missionId;
  TourProgress? _progress;
  TourProgress? get progress => _progress;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isUpdating = false;
  bool get isUpdating => _isUpdating;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  String? _successMessage;
  String? get successMessage => _successMessage;

  List<TourProgressStep> get steps => _progress?.steps ?? [];

  int get completedStepsCount => steps.where((s) => s.isCompleted).length;
  int get totalSteps => steps.length;
  double get progressPercentage =>
      totalSteps > 0 ? completedStepsCount / totalSteps : 0;

  Future<void> loadTourProgress(String missionId) async {
    _missionId = missionId;
    _isLoading = true;
    _errorMessage = null;
    _successMessage = null;
    notifyListeners();

    final result = await _repository.getTourProgressByMission(missionId);

    switch (result) {
      case Ok<TourProgress?>():
        _progress = result.value;
      case Error<TourProgress?>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshProgress() async {
    if (_missionId == null) return;
    await loadTourProgress(_missionId!);
  }

  Future<bool> completeCurrentStep() async {
    if (_progress == null) return false;

    final activeStepIndex = steps.indexWhere((s) => s.isActive);
    if (activeStepIndex == -1) return false;

    final activeStep = steps[activeStepIndex];
    return await _completeStep(activeStep.id);
  }

  Future<bool> completeStepById(String stepId) async {
    return await _completeStep(stepId);
  }

  Future<bool> _completeStep(String stepId) async {
    final stepIndex = steps.indexWhere((s) => s.id == stepId);
    if (stepIndex == -1) return false;

    _isUpdating = true;
    notifyListeners();

    final result = await _repository.updateStepStatus(
      progressId: _progress!.id,
      stepId: stepId,
      newStatus: TimelineStepStatus.completed,
    );

    bool success = false;
    switch (result) {
      case Ok<TourProgressStep>():
        success = true;
        _successMessage = 'Cập nhật thành công';
        final updatedSteps = List<TourProgressStep>.from(steps);
        updatedSteps[stepIndex] = result.value;

        // Mark next step as active
        if (stepIndex + 1 < updatedSteps.length) {
          updatedSteps[stepIndex + 1] = updatedSteps[stepIndex + 1].copyWith(
            status: TimelineStepStatus.active,
          );
        }
        _progress = _progress!.copyWith(steps: updatedSteps);
      case Error<TourProgressStep>():
        _errorMessage = 'Cập nhật thất bại';
    }

    _isUpdating = false;
    notifyListeners();
    return success;
  }

  Future<bool> reportEmergency(String description) async {
    if (_missionId == null) return false;

    _isUpdating = true;
    notifyListeners();

    final result = await _repository.reportEmergency(
      missionId: _missionId!,
      description: description,
    );

    bool success = false;
    switch (result) {
      case Ok<bool>():
        success = true;
        _successMessage = 'Đã gửi báo cáo sự cố';
      case Error<bool>():
        _errorMessage = 'Gửi báo cáo thất bại';
    }

    _isUpdating = false;
    notifyListeners();
    return success;
  }

  void clearMessages() {
    _errorMessage = null;
    _successMessage = null;
    notifyListeners();
  }
}
