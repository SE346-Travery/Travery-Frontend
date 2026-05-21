import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorTourTemplateListViewModel extends ChangeNotifier {
  final CoordinatorRepository _coordinatorRepository;

  CoordinatorTourTemplateListViewModel({
    required CoordinatorRepository coordinatorRepository,
  }) : _coordinatorRepository = coordinatorRepository;

  List<CoordinatorTourTemplate> _allTemplates = [];
  List<CoordinatorTourTemplate> _filteredTemplates = [];
  List<CoordinatorTourTemplate> get templates => _filteredTemplates;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  String _searchQuery = '';
  String get searchQuery => _searchQuery;

  Future<void> loadTemplates() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _coordinatorRepository.getAllTemplates();

    switch (result) {
      case Ok<List<CoordinatorTourTemplate>>():
        _allTemplates = result.value;
        _applyFilters();
      case Error<List<CoordinatorTourTemplate>>():
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
      _filteredTemplates = List.from(_allTemplates);
    } else {
      final lowercaseQuery = _searchQuery.toLowerCase();
      _filteredTemplates = _allTemplates.where((template) {
        final nameMatches = template.name.toLowerCase().contains(
          lowercaseQuery,
        );
        final descMatches = template.description.toLowerCase().contains(
          lowercaseQuery,
        );
        return nameMatches || descMatches;
      }).toList();
    }
  }
}
