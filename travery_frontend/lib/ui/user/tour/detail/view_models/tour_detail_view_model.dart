import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/tour/tour_detail_page_data.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourDetailViewModel extends ChangeNotifier {
  TourDetailViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  TourDetailPageData? _tour;
  TourDetailPageData? get tour => _tour;

  List<TourInstance> _availableInstances = [];
  List<TourInstance> get availableInstances => _availableInstances;

  int _selectedInstanceIndex = 0;
  int get selectedInstanceIndex => _selectedInstanceIndex;

  TourInstance? get selectedInstance {
    if (_availableInstances.isEmpty) return null;
    if (_selectedInstanceIndex >= _availableInstances.length) return null;
    return _availableInstances[_selectedInstanceIndex];
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  String? _tourId;
  String? get tourId => _tourId;

  void selectInstance(int index) {
    if (index >= 0 && index < _availableInstances.length) {
      _selectedInstanceIndex = index;
      notifyListeners();
    }
  }

  Future<void> loadTourDetail(String tourId) async {
    _tourId = tourId;
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _tourService.getTourById(tourId);

    switch (result) {
      case Ok<TourDetailPageData?>():
        if (result.value != null) {
          _tour = result.value;
        } else {
          _errorMessage = 'Tour not found';
        }
      case Error<TourDetailPageData?>():
        _errorMessage = result.error.toString();
    }

    final instancesResult = await _tourService.getTourInstances(tourId);
    switch (instancesResult) {
      case Ok<List<TourInstance>>():
        _availableInstances = instancesResult.value;
      case Error<List<TourInstance>>():
        _availableInstances = [];
    }

    _isLoading = false;
    notifyListeners();
  }

  void clear() {
    _tour = null;
    _availableInstances = [];
    _selectedInstanceIndex = 0;
    _errorMessage = null;
    _tourId = null;
  }
}
