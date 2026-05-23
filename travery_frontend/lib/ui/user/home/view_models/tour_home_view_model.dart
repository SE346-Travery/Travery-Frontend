import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/tour/tour_featured_response.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourHomeViewModel extends ChangeNotifier {
  TourHomeViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  List<TourFeaturedItem> _featuredTours = [];
  List<TourFeaturedItem> get featuredTours => _featuredTours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  Future<void> loadTours() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _tourService.getFeaturedTours();

    switch (result) {
      case Ok<List<TourFeaturedItem>>():
        _featuredTours = result.value;
      case Error<List<TourFeaturedItem>>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
