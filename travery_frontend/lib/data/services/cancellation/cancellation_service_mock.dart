import 'package:travery_frontend/data/seed_models/cancellation_success/cancellation_success_model.dart';
import 'package:travery_frontend/data/services/cancellation/cancellation_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CancellationServiceMock implements CancellationService {
  @override
  Future<Result<CancellationSuccessModel?>> getCancellationSuccess(
    String bookingId,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final mockData = CancellationSuccessModel(
        bookingId: bookingId,
        tourName: 'Kỳ nghỉ tại Vịnh Hạ Long',
        refundAmount: 4050000,
        paymentMethod: 'Ví VNPay',
        processingDays: 3,
        cancelledAt: DateTime.now(),
      );

      return Result.ok(mockData);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
