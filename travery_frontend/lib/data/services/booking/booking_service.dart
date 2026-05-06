import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class BookingService {
  Future<Result<BookingDetailModel?>> getBookingDetail(String bookingId);
}
