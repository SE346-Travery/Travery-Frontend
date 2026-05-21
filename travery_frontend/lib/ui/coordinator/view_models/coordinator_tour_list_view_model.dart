import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorTourListViewModel {
  final CoordinatorRepository _coordinatorRepository;

  CoordinatorTourListViewModel({
    required CoordinatorRepository coordinatorRepository,
  }) : _coordinatorRepository = coordinatorRepository {
    loadTours = Command0(_loadTours);
    searchQuery.addListener(_applyFilters);
    loadTours.addListener(_onToursLoaded);
  }

  late final Command0<List<CoordinatorTour>> loadTours;
  final ValueNotifier<String> searchQuery = ValueNotifier('');
  final ValueNotifier<List<CoordinatorTour>> filteredTours = ValueNotifier([]);

  Future<Result<List<CoordinatorTour>>> _loadTours() async {
    return await _coordinatorRepository.getAllTours();
  }

  void _onToursLoaded() {
    if (loadTours.completed) {
      _applyFilters();
    } else {
      filteredTours.value = [];
    }
  }

  void _applyFilters() {
    if (!loadTours.completed) return;
    
    final allTours = (loadTours.result as Ok<List<CoordinatorTour>>).value;
    final query = searchQuery.value.trim().toLowerCase();
    
    if (query.isEmpty) {
      filteredTours.value = List.from(allTours);
    } else {
      filteredTours.value = allTours.where((tour) {
        final nameMatches = tour.tourTemplate.name.toLowerCase().contains(query);
        final descMatches = tour.tourTemplate.description.toLowerCase().contains(query);
        return nameMatches || descMatches;
      }).toList();
    }
  }

  void dispose() {
    searchQuery.dispose();
    filteredTours.dispose();
    loadTours.dispose();
  }
}
