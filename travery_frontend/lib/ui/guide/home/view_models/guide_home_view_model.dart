import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/guide_tour/guide_tour.dart';
import 'package:travery_frontend/data/services/guide/guide_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class GuideHomeViewModel extends ChangeNotifier {
  final GuideService _guideService;

  GuideHomeViewModel({required GuideService guideService})
    : _guideService = guideService;

  List<GuideTour> _allTours = [];
  List<GuideTour> get allTours => _allTours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  int _selectedTabIndex = 0;
  int get selectedTabIndex => _selectedTabIndex;

  Future<void> loadGuideTours() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _guideService.getGuideTours();

    switch (result) {
      case Ok<List<GuideTour>>():
        _allTours = result.value;
      case Error<List<GuideTour>>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  void setSelectedTab(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }

  List<GuideTour> get displayedTours {
    switch (_selectedTabIndex) {
      case 0:
        return ongoingTours;
      case 1:
        return completedTours;
      default:
        return _allTours;
    }
  }

  List<GuideTour> get ongoingTours {
    return _allTours
        .where(
          (t) =>
              t.status == GuideTourStatus.ongoing ||
              t.status == GuideTourStatus.upcoming,
        )
        .toList();
  }

  List<GuideTour> get completedTours {
    return _allTours
        .where((t) => t.status == GuideTourStatus.completed)
        .toList();
  }

  int get ongoingCount => ongoingTours.length;
  int get completedCount => completedTours.length;
}
