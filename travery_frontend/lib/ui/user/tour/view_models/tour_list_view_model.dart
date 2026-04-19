import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/tour_repository.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourListViewModel extends ChangeNotifier {
  final TourRepository _tourRepository;

  TourListViewModel({required TourRepository tourRepository})
      : _tourRepository = tourRepository;

  List<Tour> _tours = [];
  List<Tour> get tours => _tours;

  List<TourInstance> _tourInstances = [];
  List<TourInstance> get tourInstances => _tourInstances;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  Future<void> loadTours() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _tourRepository.getTours();
      switch (result) {
        case Ok<List<Tour>>():
          _tours = result.value;
        case Error<List<Tour>>():
          _error = result.error.toString();
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadTourInstances() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final allInstances = <TourInstance>[];
      for (final tour in _tours) {
        if (tour.id != null) {
          final result = await _tourRepository.getTourInstances(tour.id!);
          switch (result) {
            case Ok<List<TourInstance>>():
              allInstances.addAll(result.value);
            case Error<List<TourInstance>>():
              break;
          }
        }
      }
      _tourInstances = allInstances;
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Tour? getTourById(String id) {
    for (final t in _tours) {
      if (t.id == id) return t;
    }
    return null;
  }

  TourInstance? getTourInstanceById(String id) {
    for (final i in _tourInstances) {
      if (i.id == id) return i;
    }
    return null;
  }
}