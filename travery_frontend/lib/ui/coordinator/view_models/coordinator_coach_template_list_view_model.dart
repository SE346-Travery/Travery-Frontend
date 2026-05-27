import 'package:travery_frontend/domain/models/coordinator/coordinator_station/coordinator_station.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

/// ViewModel for the coach template list screen.
/// Stations are not yet served by the coordinator API; returns empty list
/// with a TODO for wiring up the proper endpoint.
class CoordinatorCoachTemplateListViewModel {
  CoordinatorCoachTemplateListViewModel({
    // ignore: unused_element
    Object? coordinatorRepository,
  }) {
    loadStations = Command0(_loadStations);
  }

  late final Command0<List<CoordinatorStation>> loadStations;

  Future<Result<List<CoordinatorStation>>> _loadStations() async {
    // TODO: wire up to a real coach/station API endpoint when available.
    await Future.delayed(const Duration(milliseconds: 200));
    return const Result.ok([]);
  }

  void dispose() {
    loadStations.dispose();
  }
}
