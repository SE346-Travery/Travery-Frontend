import 'package:travery_frontend/data/repositories/coordinator/coordinator_repository.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_station/coordinator_station.dart';
import 'package:travery_frontend/utils/core_result.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_coach/coordinator_coach.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_guide/coordinator_guilde.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_hotel/coordinator_hotel.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_template/coordinator_tour_template.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_template_initerary/coordinator_template_initerary.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour/coordinator_tour.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_tour_member/coordinator_tour_member.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';

/// Development/local implementation of [CoordinatorRepository] that returns
/// in-memory seed data. Simulates a network delay of 300 ms.
class CoordinatorRepositoryDev extends CoordinatorRepository {
  // ── Seed Data ──────────────────────────────────────────────────────────────

  static final List<CoordinatorVehicle> _vehicles = [
    const CoordinatorVehicle(
      licensePlate: '51B - 882.41',
      vehicleType: 'Limousine',
      vehicleStatus: 'Sẵn sàng',
      imageUrl:
          'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
    ),
    const CoordinatorVehicle(
      licensePlate: '29B - 110.02',
      vehicleType: 'Giường nằm',
      vehicleStatus: 'Đang chạy',
      imageUrl:
          'https://images.unsplash.com/photo-1570125909232-eb263c188f7e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
    ),
    const CoordinatorVehicle(
      licensePlate: '59B - 564.29',
      vehicleType: 'Ghế ngồi',
      vehicleStatus: 'Sẵn sàng',
      imageUrl:
          'https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
    ),
    const CoordinatorVehicle(
      licensePlate: '49B - 023.15',
      vehicleType: 'Limousine',
      vehicleStatus: 'Bảo trì',
      imageUrl:
          'https://images.unsplash.com/photo-1570125909232-eb263c188f7e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
    ),
  ];

  static final List<CoordinatorDriver> _drivers = [
    const CoordinatorDriver(
      name: 'Nguyễn Văn Hùng',
      email: 'hung.nguyen@travery.com',
      phoneNumber: '0908343129',
      imageUrl: 'https://i.pravatar.cc/150?u=hung',
      status: DriverStatus.available,
    ),
    const CoordinatorDriver(
      name: 'Trần Thanh Sơn',
      email: 'son.tran@travery.com',
      phoneNumber: '0984372384',
      imageUrl: 'https://i.pravatar.cc/150?u=son',
      status: DriverStatus.available,
    ),
    const CoordinatorDriver(
      name: 'Lê Minh Quốc',
      email: 'quoc.le@travery.com',
      phoneNumber: '0793493910',
      imageUrl: 'https://i.pravatar.cc/150?u=quoc',
      status: DriverStatus.unavailable,
    ),
    const CoordinatorDriver(
      name: 'Phạm Đức Anh',
      email: 'anh.pham@travery.com',
      phoneNumber: '0791923042',
      imageUrl: 'https://i.pravatar.cc/150?u=ducanh',
      status: DriverStatus.available,
    ),
  ];

  static final List<CoordinatorCoach> _coaches = [
    CoordinatorCoach(
      name: 'Limousine Đà Lạt VIP',
      vehicle: _vehicles[0],
      driver: _drivers[0],
      departureTime: '08:00, 20-05-2026',
      capacity: 9,
      status: 'Sẵn sàng',
    ),
    CoordinatorCoach(
      name: 'Sleeper Express Nha Trang',
      vehicle: _vehicles[1],
      driver: _drivers[1],
      departureTime: '22:30, 21-05-2026',
      capacity: 36,
      status: 'Đang chạy',
    ),
    CoordinatorCoach(
      name: 'City Tour Sài Gòn',
      vehicle: _vehicles[2],
      driver: _drivers[3],
      departureTime: '13:00, 19-05-2026',
      capacity: 29,
      status: 'Đang book',
    ),
  ];

  static final List<CoordinatorStation> _stations = [
    const CoordinatorStation(
      name: 'Ben Thanh Station',
      detailAdress: '120 Lê Lai, Quận 1, TP. Hồ Chí Minh',
      cityProvince: 'Ho Chi Minh',
      country: 'Vietnam',
    ),
    const CoordinatorStation(
      name: 'Da Nang Station',
      detailAdress: '274 Trường Sa, Ngũ Hành Sơn, Đà Nẵng',
      cityProvince: 'Da Nang',
      country: 'Vietnam',
    ),
    const CoordinatorStation(
      name: 'Da Lat Station',
      detailAdress: '15 Triệu Việt Vương, Đà Lạt, Lâm Đồng',
      cityProvince: 'Da Lat',
      country: 'Vietnam',
    ),
  ];
  static final List<CoordinatorHotel> _hotels = [
    const CoordinatorHotel(
      id: 'hot_c1',
      name: 'Grand Diamond Saigon',
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-4e6a850e645b?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      address: '120 Lê Lai, Quận 1, TP. Hồ Chí Minh',
      slotsLeft: 5,
      roomType: 'Deluxe Suite',
      roomCount: 120,
    ),
    const CoordinatorHotel(
      id: 'hot_c2',
      name: 'Coastal Breeze Resort Da Nang',
      imageUrl:
          'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      address: '274 Trường Sa, Ngũ Hành Sơn, Đà Nẵng',
      slotsLeft: 12,
      roomType: 'Ocean View Villa',
      roomCount: 85,
    ),
    const CoordinatorHotel(
      id: 'hot_c3',
      name: 'Pine Valley Retreat Da Lat',
      imageUrl:
          'https://images.unsplash.com/photo-1584132967334-10e028bd69f7?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      address: '15 Triệu Việt Vương, Đà Lạt, Lâm Đồng',
      slotsLeft: 3,
      roomType: 'Forest Bungalow',
      roomCount: 30,
    ),
  ];

  static final List<CoordinatorGuide> _guides = [
    CoordinatorGuide(
      name: 'Phạm Hoài Nam',
      label: 'HDV kì cựu miền Trung',
      phoneNumber: '0912345678',
      email: 'nam.pham@travery.com',
    ),
    CoordinatorGuide(
      name: 'Lê Thu Thủy',
      label: 'HDV năng động, giỏi ngoại ngữ',
      phoneNumber: '0987654321',
      email: 'thuy.le@travery.com',
    ),
    CoordinatorGuide(
      name: 'Nguyễn Tiến Dũng',
      label: 'HDV chuyên trekking Tây Bắc',
      phoneNumber: '0905123456',
      email: 'dung.nguyen@travery.com',
    ),
  ];

  static final List<CoordinatorTemplateItinerary> _halongItineraries = [
    CoordinatorTemplateItinerary(
      name: 'Khám phá Vịnh',
      label: 'Ngày 1',
      imageUrl:
          'https://images.unsplash.com/photo-1524230572899-a752b3835840?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Lên tàu sang trọng, ăn trưa ngắm cảnh Vịnh Hạ Long, tham quan Hang Sửng Sốt và chèo thuyền kayak tại Đảo Titop.',
    ),
    CoordinatorTemplateItinerary(
      name: 'Làng chài & Hang Luồn',
      label: 'Ngày 2',
      imageUrl:
          'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Thăm làng chài Cửa Vạn cổ kính, tham gia lớp học nấu ăn trên boong tàu và thư giãn ngắm hoàng hôn.',
    ),
    CoordinatorTemplateItinerary(
      name: 'Ngắm bình minh & Trở về',
      label: 'Ngày 3',
      imageUrl:
          'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Tập Taichi đón bình minh trên boong tàu, thưởng thức bữa sáng nhẹ trước khi tàu cập bến Tuần Châu.',
    ),
  ];

  static final List<CoordinatorTemplateItinerary> _dalatItineraries = [
    CoordinatorTemplateItinerary(
      name: 'Thành phố Tình yêu',
      label: 'Ngày 1',
      imageUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Check-in Quảng trường Lâm Viên, Thung lũng Tình Yêu và thưởng thức cà phê ngắm Hồ Xuân Hương.',
    ),
    CoordinatorTemplateItinerary(
      name: 'Săn mây & Chinh phục đỉnh Langbiang',
      label: 'Ngày 2',
      imageUrl:
          'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Săn mây lúc bình minh tại Đồi chè Cầu Đất, chinh phục đỉnh Langbiang huyền thoại bằng xe Jeep.',
    ),
  ];

  static final List<CoordinatorTourTemplate> _templates = [
    CoordinatorTourTemplate(
      id: 'temp_c1',
      name: 'Kỳ quan Hạ Long Huyền Thoại',
      imageUrl:
          'https://images.unsplash.com/photo-1524230572899-a752b3835840?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Trải nghiệm du thuyền 5 sao đẳng cấp thế giới giữa lòng di sản thiên nhiên thế giới Vịnh Hạ Long.',
      adultPrice: '3200000',
      childPrice: '2100000',
      startTime: '08:00',
      endTime: '16:00',
      minTotalPerson: 10,
      maxTotalPerson: 30,
      itineraries: _halongItineraries,
    ),
    CoordinatorTourTemplate(
      id: 'temp_c2',
      name: 'Đà Lạt - Thành Phố Ngàn Hoa',
      imageUrl:
          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&auto=format&fit=crop&w=800&q=80',
      description:
          'Hành trình lãng mạn ngập tràn sắc hoa và sương mù phố núi với các điểm check-in cực hot.',
      adultPrice: '2400000',
      childPrice: '1600000',
      startTime: '07:30',
      endTime: '18:00',
      minTotalPerson: 8,
      maxTotalPerson: 20,
      itineraries: _dalatItineraries,
    ),
  ];

  static final List<CoordinatorTourMember> _tourMembers = [
    const CoordinatorTourMember(
      userBookingName: 'Nguyễn Thị Minh Thư',
      phoneNumber: '0934567890',
      userAvatarUrl: 'https://i.pravatar.cc/150?u=thu',
      aldultNames: ['Nguyễn Thị Minh Thư', 'Trần Anh Khoa'],
      aldultBirth: ['12-05-1994', '23-11-1992'],
      childName: ['Trần Minh Ngọc'],
      childBirth: ['14-07-2019'],
    ),
    const CoordinatorTourMember(
      userBookingName: 'Lê Hoàng Long',
      phoneNumber: '0977654321',
      userAvatarUrl: 'https://i.pravatar.cc/150?u=long',
      aldultNames: ['Lê Hoàng Long', 'Phan Quỳnh Anh'],
      aldultBirth: ['05-09-1990', '18-02-1993'],
      childName: ['Lê Quỳnh Chi'],
      childBirth: ['30-10-2020'],
    ),
  ];

  static final List<CoordinatorTour> _tours = [
    CoordinatorTour(
      tourTemplate: _templates[0],
      hotel: _hotels[0],
      guide: _guides[0],
      tourMember: _tourMembers[0],
    ),
    CoordinatorTour(
      tourTemplate: _templates[1],
      hotel: _hotels[1],
      guide: _guides[1],
      tourMember: _tourMembers[1],
    ),
  ];

  // ── Mutable copies for CRUD / Local operations ─────────────────────────────

  final List<CoordinatorVehicle> _mutableVehicles = List.of(_vehicles);
  final List<CoordinatorDriver> _mutableDrivers = List.of(_drivers);
  final List<CoordinatorCoach> _mutableCoaches = List.of(_coaches);
  final List<CoordinatorHotel> _mutableHotels = List.of(_hotels);
  final List<CoordinatorGuide> _mutableGuides = List.of(_guides);
  final List<CoordinatorTourTemplate> _mutableTemplates = List.of(_templates);
  final List<CoordinatorTour> _mutableTours = List.of(_tours);

  // ── Helpers ────────────────────────────────────────────────────────────────

  Future<Result<T>> _delay<T>(T value) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Result.ok(value);
  }

  // ── Repository Methods Implementation ──────────────────────────────────────

  @override
  Future<Result<List<CoordinatorTour>>> getAllTours() =>
      _delay(List.unmodifiable(_mutableTours));

  @override
  Future<Result<List<CoordinatorCoach>>> getAllCoaches() =>
      _delay(List.unmodifiable(_mutableCoaches));

  @override
  Future<Result<List<CoordinatorVehicle>>> getAllVehicles() =>
      _delay(List.unmodifiable(_mutableVehicles));

  @override
  Future<Result<List<CoordinatorDriver>>> getAllDrivers() =>
      _delay(List.unmodifiable(_mutableDrivers));

  @override
  Future<Result<List<CoordinatorHotel>>> getAllHotels() =>
      _delay(List.unmodifiable(_mutableHotels));

  @override
  Future<Result<List<CoordinatorGuide>>> getAllGuides() =>
      _delay(List.unmodifiable(_mutableGuides));

  @override
  Future<Result<List<CoordinatorTourTemplate>>> getAllTemplates() =>
      _delay(List.unmodifiable(_mutableTemplates));

  @override
  Future<Result<List<CoordinatorStation>>> getAllStations() =>
      _delay(List.unmodifiable(_stations));
}
