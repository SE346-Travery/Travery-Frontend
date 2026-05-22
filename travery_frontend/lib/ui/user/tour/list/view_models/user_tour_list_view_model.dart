import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class UserTourListViewModel extends ChangeNotifier {
  final TourService _tourService;

  UserTourListViewModel({required TourService tourService})
    : _tourService = tourService {
    loadTours = Command0(_fetchTours);
    searchQuery.addListener(_applyFilters);
  }

  late final Command0<List<Tour>> loadTours;

  final ValueNotifier<String> searchQuery = ValueNotifier('');
  final ValueNotifier<List<Tour>> filteredTours = ValueNotifier([]);
  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  Future<Result<List<Tour>>> _fetchTours() async {
    isLoading.value = true;
    notifyListeners();

    final result = await _tourService.getTours();

    isLoading.value = false;
    notifyListeners();

    return result;
  }

  void _applyFilters() {
    if (!loadTours.completed) return;

    final allTours = (loadTours.result as Ok<List<Tour>>).value;
    final query = searchQuery.value.trim().toLowerCase();

    if (query.isEmpty) {
      filteredTours.value = List.from(allTours);
    } else {
      filteredTours.value = allTours.where((tour) {
        final nameMatches = tour.name.toLowerCase().contains(query);
        return nameMatches;
      }).toList();
    }
  }

  void onToursLoaded() {
    if (loadTours.completed) {
      _applyFilters();
    } else {
      filteredTours.value = [];
    }
  }

  void updateSearchQuery(String query) {
    searchQuery.value = query;
  }

  @override
  void dispose() {
    searchQuery.dispose();
    filteredTours.dispose();
    isLoading.dispose();
    loadTours.dispose();
    super.dispose();
  }
}
