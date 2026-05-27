import 'package:travery_frontend/data/seed_models/cancel_confirmation/cancel_confirmation_model.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class CancelService {
  Future<Result<CancelConfirmationModel?>> getCancelConfirmation(
    String bookingId,
  );
  Future<Result<bool>> submitCancellation(String bookingId, String? reason);
}
