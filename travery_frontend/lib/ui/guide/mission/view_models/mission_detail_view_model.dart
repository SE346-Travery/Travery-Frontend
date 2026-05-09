import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/data/repositories/mission_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class MissionDetailViewModel extends ChangeNotifier {
  final MissionRepository _missionRepository;

  MissionDetailViewModel({required MissionRepository missionRepository})
    : _missionRepository = missionRepository;

  GuideTour? _mission;
  GuideTour? get mission => _mission;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadMissionDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  }) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _missionRepository.getMissionDetail(
      missionId: missionId,
      tourId: tourId,
      tourInstanceId: tourInstanceId,
    );

    switch (result) {
      case Ok<GuideTour>():
        _mission = result.value;
      case Error<GuideTour>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshMission() async {
    if (_mission?.id == null) return;

    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _missionRepository.getMissionDetail(
      missionId: _mission!.id!,
    );

    switch (result) {
      case Ok<GuideTour>():
        _mission = result.value;
      case Error<GuideTour>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  String get formattedTourCode {
    if (_mission == null) return '';
    final id = _mission!.id ?? '';
    return '#${id.substring(id.length - 8).toUpperCase()}';
  }

  String get formattedDepartureDate {
    if (_mission == null) return '';
    final date = _mission!.startDate;
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }
}
