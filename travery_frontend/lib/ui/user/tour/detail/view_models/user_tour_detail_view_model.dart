import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class UserTourDetailViewModel extends ChangeNotifier {
  final TourService _tourService;

  UserTourDetailViewModel({required TourService tourService})
    : _tourService = tourService {
    loadTourDetail = Command1(_fetchTourDetail);
    loadTourInstances = Command1(_fetchTourInstances);
  }

  late final Command1<Tour?, String> loadTourDetail;
  late final Command1<List<TourInstance>, String> loadTourInstances;

  Tour? _tour;
  Tour? get tour => _tour;

  List<TourInstance> _instances = [];
  List<TourInstance> get instances => _instances;

  TourInstance? _selectedInstance;
  TourInstance? get selectedInstance => _selectedInstance;

  void selectInstance(TourInstance instance) {
    _selectedInstance = instance;
    notifyListeners();
  }

  Future<Result<Tour?>> _fetchTourDetail(String tourId) async {
    _tour = null;
    notifyListeners();

    return await _tourService.getTourById(tourId);
  }

  Future<Result<List<TourInstance>>> _fetchTourInstances(String tourId) async {
    _instances = [];
    _selectedInstance = null;
    notifyListeners();

    final result = await _tourService.getTourInstances(tourId);

    if (result is Ok<List<TourInstance>>) {
      _instances = result.value;
      if (_instances.isNotEmpty) {
        _selectedInstance = _instances.first;
      }
      notifyListeners();
    }

    return result;
  }

  void setTour(Tour tour) {
    _tour = tour;
    notifyListeners();
  }

  void onTourLoaded(Tour? tour) {
    _tour = tour;
    notifyListeners();
  }

  void onInstancesLoaded(List<TourInstance> instances) {
    _instances = instances;
    if (instances.isNotEmpty && _selectedInstance == null) {
      _selectedInstance = instances.first;
    }
    notifyListeners();
  }
}
