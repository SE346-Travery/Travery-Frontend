import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';
import 'package:travery_frontend/data/services/api/model/booking/cancel_booking_request/cancel_booking_request.dart';
import 'package:travery_frontend/data/services/api/model/booking/cancel_booking_response/cancel_booking_response.dart';
import 'package:travery_frontend/data/services/api/model/booking/user_booking_list_response/user_booking_list_response.dart';
import 'package:travery_frontend/data/services/booking/booking_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class BookingServiceMock implements BookingService {
  @override
  Future<Result<BookingDetailModel?>> getBookingDetail(String bookingId) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      final mockDetail = _createMockBookingDetail(bookingId);
      return Result.ok(mockDetail);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<UserBookingPageData>> getMyBookings({
    String? status,
    int page = 0,
    int size = 20,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(
        const UserBookingPageData(
          totalElements: 3,
          totalPages: 1,
          size: 20,
          content: [],
          number: 0,
          first: true,
          last: true,
          empty: false,
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<CancelData>> cancelBooking({
    required String bookingId,
    required CancelBookingRequest request,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return Result.ok(
        const CancelData(
          bookingId: 'mock-booking-id',
          bookingStatus: 'CANCELLED',
          refundAmount: 4500000.0,
          refundPercentage: 100.0,
          refundStatus: 'PENDING',
          refundMessage: 'Tiền sẽ được hoàn trong 3-5 ngày làm việc',
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  BookingDetailModel _createMockBookingDetail(String bookingId) {
    final departureDate = DateTime(2025, 10, 15);
    return BookingDetailModel(
      bookingId: bookingId,
      tourName: 'Kỳ nghỉ tại Vịnh Hạ Long',
      tourImageUrl:
          'https://images.unsplash.com/photo-1524230507669-5ff97982bb5e?auto=format&fit=crop&q=80&w=1000',
      totalPrice: 4500000,
      departureDate: departureDate,
      guestCount: 2,
      paymentMethod: 'VNPay',
      status: 'Đã xác nhận',
      refundPolicy: RefundPolicy(
        lastFreeCancellationDate: DateTime(2025, 10, 12, 23, 59),
        tiers: [
          RefundTier(
            label: 'Trước ngày 12/10',
            description: 'Hoàn 100%',
            refundPercentage: 100,
            startDate: null,
            endDate: DateTime(2025, 10, 12),
          ),
          RefundTier(
            label: '13/10 - 14/10',
            description: 'Hoàn 50%',
            refundPercentage: 50,
            startDate: DateTime(2025, 10, 13),
            endDate: DateTime(2025, 10, 14),
          ),
          RefundTier(
            label: 'Ngày khởi hành (15/10)',
            description: '0% Hoàn trả',
            refundPercentage: 0,
            startDate: DateTime(2025, 10, 15),
            endDate: null,
          ),
        ],
      ),
    );
  }
}
