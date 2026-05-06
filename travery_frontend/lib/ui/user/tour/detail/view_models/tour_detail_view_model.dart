import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourDetailViewModel extends ChangeNotifier {
  final TourService _tourService;

  TourDetailViewModel({required TourService tourService})
    : _tourService = tourService;

  Tour? _tour;
  Tour? get tour => _tour;

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
      case Ok<Tour?>():
        if (result.value != null) {
          _tour = result.value;
          _availableInstances = result.value!.instances ?? [];
        } else {
          _errorMessage = 'Tour not found';
        }
      case Error<Tour?>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadTourDetailFromTour(Tour tourData) async {
    _tour = tourData;
    _tourId = tourData.id;
    _availableInstances = tourData.instances ?? [];
    _selectedInstanceIndex = 0;
    _isLoading = false;
    _errorMessage = null;
    notifyListeners();
  }
}
