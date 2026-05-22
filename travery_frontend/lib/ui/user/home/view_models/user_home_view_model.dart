import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class UserHomeViewModel extends ChangeNotifier {
  final TourService _tourService;

  UserHomeViewModel({required TourService tourService})
    : _tourService = tourService {
    loadFeaturedTours = Command0(_fetchFeaturedTours);
  }

  late final Command0<List<Tour>> loadFeaturedTours;

  String _userName = 'User';
  String get userName => _userName;

  setUserName(String name) {
    _userName = name;
    notifyListeners();
  }

  Future<Result<List<Tour>>> _fetchFeaturedTours() async {
    return await _tourService.getTours();
  }
}
