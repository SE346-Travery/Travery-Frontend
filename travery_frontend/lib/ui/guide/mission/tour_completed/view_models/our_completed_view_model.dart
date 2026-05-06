import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/tour_completed/tour_completed.dart';
import 'package:travery_frontend/data/repositories/tour_completed_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourCompletedViewModel extends ChangeNotifier {
  final TourCompletedRepository _repository;

  TourCompletedViewModel({required TourCompletedRepository repository})
    : _repository = repository;

  String? _missionId;
  TourCompletedDetail? _detail;
  TourCompletedDetail? get detail => _detail;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadTourDetail({
    required String missionId,
    String? tourId,
    String? tourInstanceId,
  }) async {
    _missionId = missionId;
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _repository.getTourCompletedDetail(
      missionId: missionId,
      tourId: tourId,
      tourInstanceId: tourInstanceId,
    );

    switch (result) {
      case Ok<TourCompletedDetail?>():
        _detail = result.value;
      case Error<TourCompletedDetail?>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshDetail() async {
    if (_missionId == null) return;
    await loadTourDetail(missionId: _missionId!);
  }

  String get formattedTripCode =>
      _detail != null ? '#${_detail!.tripCode}' : '';
}
