import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorTourListViewModel extends ChangeNotifier {
  final CoordinatorRepository _coordinatorRepository;

  CoordinatorTourListViewModel({
    required CoordinatorRepository coordinatorRepository,
  }) : _coordinatorRepository = coordinatorRepository;

  List<CoordinatorTour> _allTours = [];
  List<CoordinatorTour> _filteredTours = [];
  List<CoordinatorTour> get tours => _filteredTours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  Future<void> loadTours() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _coordinatorRepository.getAllTours();

    switch (result) {
      case Ok<List<CoordinatorTour>>():
        _allTours = result.value;
        _applyFilters();
      case Error<List<CoordinatorTour>>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    _applyFilters();
    notifyListeners();
  }

  void _applyFilters() {
    if (_searchQuery.trim().isEmpty) {
      _filteredTours = List.from(_allTours);
    } else {
      final lowercaseQuery = _searchQuery.toLowerCase();
      _filteredTours = _allTours.where((tour) {
        final nameMatches = tour.tourTemplate.name.toLowerCase().contains(
          lowercaseQuery,
        );
        final descMatches = tour.tourTemplate.description
            .toLowerCase()
            .contains(lowercaseQuery);
        return nameMatches || descMatches;
      }).toList();
    }
  }
}
