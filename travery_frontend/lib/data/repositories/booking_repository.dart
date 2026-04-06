import 'dart:async';
import '../model/booking_model.dart';

class BookingRepository {
  /// Fake delay như call API
  Future<List<Booking>> getBookings() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return _mockBookings;
  }

  Future<Booking> getBookingDetail(String id) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _mockBookings.firstWhere((e) => e.id == id);
  }

  Future<bool> createBooking(Booking booking) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }

  Future<bool> cancelBooking(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}

/// ================= MOCK DATA =================

final List<Booking> _mockBookings = [
  Booking(
    id: "TRV-8829-VN",
    tourName: "Tour Cao cấp Vịnh Hạ Long 2 Ngày 1 Đêm",
    location: "Vịnh Hạ Long",
    image: "https://images.unsplash.com/photo-1528127269322-539801943592",
    startDate: DateTime(2024, 10, 24),
    endDate: DateTime(2024, 10, 25),
    adults: 2,
    children: 0,
    totalPrice: 8450000,
    status: BookingStatus.paid,
    contact: ContactInfo(name: "Nguyễn Văn A", email: "nguyenvana@gmail.com"),
    passengers: [
      Passenger(
        name: "Nguyễn Văn A",
        idNumber: "012345678901",
        type: PassengerType.adult,
      ),
      Passenger(
        name: "Trần Thị B",
        idNumber: "012345678902",
        type: PassengerType.adult,
      ),
    ],
    note: "Chúng tôi muốn phòng có view đẹp",
  ),

  Booking(
    id: "TRV-9921-VN",
    tourName: "Khám phá Đà Nẵng - Hội An 3N2Đ",
    location: "Đà Nẵng",
    image: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
    startDate: DateTime(2024, 11, 10),
    endDate: DateTime(2024, 11, 12),
    adults: 2,
    children: 1,
    totalPrice: 12500000,
    status: BookingStatus.pending,
    contact: ContactInfo(name: "Lê Minh C", email: "minh.le@gmail.com"),
    passengers: [
      Passenger(
        name: "Lê Minh C",
        idNumber: "098765432101",
        type: PassengerType.adult,
      ),
      Passenger(
        name: "Nguyễn Thị D",
        idNumber: "098765432102",
        type: PassengerType.adult,
      ),
      Passenger(name: "Bé E", idNumber: "CHILD001", type: PassengerType.child),
    ],
  ),

  Booking(
    id: "TRV-5555-VN",
    tourName: "Tour Phú Quốc Nghỉ dưỡng 4N3Đ",
    location: "Phú Quốc",
    image: "https://images.unsplash.com/photo-1506929562872-bb421503ef21",
    startDate: DateTime(2024, 9, 15),
    endDate: DateTime(2024, 9, 18),
    adults: 2,
    children: 0,
    totalPrice: 9800000,
    status: BookingStatus.completed,
    contact: ContactInfo(name: "Phạm Văn F", email: "phamf@gmail.com"),
    passengers: [
      Passenger(
        name: "Phạm Văn F",
        idNumber: "111222333",
        type: PassengerType.adult,
      ),
      Passenger(
        name: "Hoàng Thị G",
        idNumber: "444555666",
        type: PassengerType.adult,
      ),
    ],
  ),

  Booking(
    id: "TRV-0001-VN",
    tourName: "Tour Sapa 3N2Đ",
    location: "Sapa",
    image: "https://images.unsplash.com/photo-1528127269322-539801943592",
    startDate: DateTime(2024, 8, 20),
    endDate: DateTime(2024, 8, 22),
    adults: 1,
    children: 0,
    totalPrice: 3200000,
    status: BookingStatus.cancelled,
    contact: ContactInfo(name: "Trần Văn H", email: "tranvanh@gmail.com"),
    passengers: [
      Passenger(
        name: "Trần Văn H",
        idNumber: "777888999",
        type: PassengerType.adult,
      ),
    ],
  ),
];
