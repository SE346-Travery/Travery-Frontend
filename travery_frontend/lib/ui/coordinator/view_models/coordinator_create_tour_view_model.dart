import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/utils/command.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CoordinatorCreateTourViewModel extends ChangeNotifier {
  final CoordinatorRepository _coordinatorRepository;

  CoordinatorCreateTourViewModel({
    required CoordinatorRepository coordinatorRepository,
  }) : _coordinatorRepository = coordinatorRepository {
    createTour = Command1<CoordinatorTour, _CreateTourParams>(_createTour);
  }

  late final Command1<CoordinatorTour, _CreateTourParams> createTour;

  Future<Result<CoordinatorTour>> _createTour(
    _CreateTourParams params,
  ) async {
    return await _coordinatorRepository.createTourInstance(
      tourId: params.tourId,
      startDate: params.startDate,
      endDate: params.endDate,
    );
  }

  void execute({
    required String tourId,
    required String startDate,
    required String endDate,
  }) {
    createTour.execute(
      _CreateTourParams(
        tourId: tourId,
        startDate: startDate,
        endDate: endDate,
      ),
    );
  }

  @override
  void dispose() {
    createTour.dispose();
    super.dispose();
  }
}

class _CreateTourParams {
  final String tourId;
  final String startDate;
  final String endDate;

  const _CreateTourParams({
    required this.tourId,
    required this.startDate,
    required this.endDate,
  });
}
