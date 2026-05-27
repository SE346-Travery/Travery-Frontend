import 'package:travery_frontend/data/seed_models/cancellation_success/cancellation_success_model.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class CancellationService {
  Future<Result<CancellationSuccessModel?>> getCancellationSuccess(
    String bookingId,
  );
}
