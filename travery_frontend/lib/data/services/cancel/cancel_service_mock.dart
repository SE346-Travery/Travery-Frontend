import 'package:travery_frontend/data/seed_models/cancel_confirmation/cancel_confirmation_model.dart';
import 'package:travery_frontend/data/services/cancel/cancel_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CancelServiceMock implements CancelService {
  @override
  Future<Result<CancelConfirmationModel?>> getCancelConfirmation(
    String bookingId,
  ) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final mockData = CancelConfirmationModel(
        bookingId: bookingId,
        tourName: 'Kỳ nghỉ tại Vịnh Hạ Long',
        totalAmount: 4500000,
        refundAmount: 4050000,
        lastFreeCancellationDate: DateTime(2025, 10, 12, 23, 59),
        refundTiers: [
          RefundTierInfo(
            label: 'Trước ngày 12/10',
            description: 'Hoàn 100%',
            refundPercentage: 100,
          ),
          RefundTierInfo(
            label: '13/10 - 14/10',
            description: 'Hoàn 50%',
            refundPercentage: 50,
          ),
          RefundTierInfo(
            label: 'Ngày khởi hành (15/10)',
            description: '0% Hoàn trả',
            refundPercentage: 0,
          ),
        ],
      );

      return Result.ok(mockData);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<bool>> submitCancellation(
    String bookingId,
    String? reason,
  ) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return Result.ok(true);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
