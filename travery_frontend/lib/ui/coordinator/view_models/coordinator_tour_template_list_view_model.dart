import 'package:flutter/foundation.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

/// ViewModel for the template list screen.
/// Templates are fetched from the tours API; for now this returns an empty
/// list until the tours-templates endpoint is wired up.
class CoordinatorTourTemplateListViewModel {
  CoordinatorTourTemplateListViewModel({
    // ignore: unused_element
    Object? coordinatorRepository,
  }) {
    loadTemplates = Command0(_loadTemplates);
    searchQuery.addListener(_applyFilters);
    loadTemplates.addListener(_onTemplatesLoaded);
  }

  late final Command0<List<CoordinatorTourTemplate>> loadTemplates;
  final ValueNotifier<String> searchQuery = ValueNotifier('');
  final ValueNotifier<List<CoordinatorTourTemplate>> filteredTemplates =
      ValueNotifier([]);

  Future<Result<List<CoordinatorTourTemplate>>> _loadTemplates() async {
    // TODO: wire up to a real tours/templates API service when available.
    await Future.delayed(const Duration(milliseconds: 200));
    return const Result.ok([]);
  }

  void _onTemplatesLoaded() {
    if (loadTemplates.completed) {
      _applyFilters();
    } else {
      filteredTemplates.value = [];
    }
  }

  void _applyFilters() {
    if (!loadTemplates.completed) return;

    final allTemplates =
        (loadTemplates.result as Ok<List<CoordinatorTourTemplate>>).value;
    final query = searchQuery.value.trim().toLowerCase();

    if (query.isEmpty) {
      filteredTemplates.value = List.from(allTemplates);
    } else {
      filteredTemplates.value =
          allTemplates.where((template) {
            final nameMatches = template.name.toLowerCase().contains(query);
            final descMatches =
                template.description.toLowerCase().contains(query);
            return nameMatches || descMatches;
          }).toList();
    }
  }

  void dispose() {
    searchQuery.dispose();
    filteredTemplates.dispose();
    loadTemplates.dispose();
  }
}
