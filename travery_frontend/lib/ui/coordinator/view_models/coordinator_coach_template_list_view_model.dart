import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_station/coordinator_station.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorCoachTemplateListViewModel {
  final CoordinatorRepository _coordinatorRepository;

  CoordinatorCoachTemplateListViewModel({
    required CoordinatorRepository coordinatorRepository,
  }) : _coordinatorRepository = coordinatorRepository {
    loadStations = Command0(_loadStations);
  }

  late final Command0<List<CoordinatorStation>> loadStations;

  Future<Result<List<CoordinatorStation>>> _loadStations() async {
    return await _coordinatorRepository.getAllStations();
  }

  void dispose() {
    loadStations.dispose();
  }
}
