import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourDetailViewModel extends ChangeNotifier {
  final TourRepository _tourRepository;

  TourDetailViewModel({required TourRepository tourRepository})
      : _tourRepository = tourRepository;

  Tour? _tour;
  Tour? get tour => _tour;

  List<TourInstance> _instances = [];
  List<TourInstance> get instances => _instances;

  TourInstance? _selectedInstance;
  TourInstance? get selectedInstance => _selectedInstance;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> loadTour(String id) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _tourRepository.getTourById(id);
      switch (result) {
        case Ok<Tour?>():
          _tour = result.value;
          if (_tour != null && (_tour!.instances?.isNotEmpty ?? false)) {
            _selectedInstance = _tour!.instances!.first;
          }
        case Error<Tour?>():
          _error = result.error.toString();
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadTourInstances(String tourId) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _tourRepository.getTourInstances(tourId);
      switch (result) {
        case Ok<List<TourInstance>>():
          _instances = result.value;
          if (_instances.isNotEmpty && _selectedInstance == null) {
            _selectedInstance = _instances.first;
          }
        case Error<List<TourInstance>>():
          _error = result.error.toString();
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void selectInstance(String instanceId) {
    for (final i in _instances) {
      if (i.id == instanceId) {
        _selectedInstance = i;
        break;
      }
    }
    notifyListeners();
  }

  void selectInstanceDirect(TourInstance instance) {
    _selectedInstance = instance;
    notifyListeners();
  }
}
