import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourHomeViewModel extends ChangeNotifier {
  final TourService _tourService;

  TourHomeViewModel({required TourService tourService})
    : _tourService = tourService;

  List<Tour> _tours = [];
  List<Tour> get tours => _tours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadTours() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _tourService.getTours();

    switch (result) {
      case Ok<List<Tour>>():
        _tours = result.value;
      case Error<List<Tour>>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  List<Tour> get featuredTours {
    return _tours.where((tour) => tour.status == TourStatus.active).toList();
  }
}
