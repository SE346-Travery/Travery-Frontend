import 'package:travery_frontend/domain/models/admin/admin_data_models.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

/// Development/local implementation of [AdminRepository] that returns
/// in-memory seed data. Simulates a network delay of 300 ms.
class AdminRepositoryDev extends AdminRepository {
  // ── Seed data ──────────────────────────────────────────────────────────────

  static final List<Account> _accounts = [
    Account(
      id: 'acc_1',
      name: 'Alex Morgan',
      email: 'alex.morgan@travery.com',
      employeeId: 'TRV-2022-001',
      role: AccountRole.guide,
      status: AccountStatus.active,
      joinDate: DateTime(2022, 3, 15),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_1',
    ),
    Account(
      id: 'acc_2',
      name: 'Julian Kross',
      email: 'j.kross@travery.com',
      employeeId: 'TRV-2021-008',
      role: AccountRole.coordinator,
      status: AccountStatus.active,
      joinDate: DateTime(2021, 7, 1),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_2',
    ),
    Account(
      id: 'acc_3',
      name: 'Sarah Chen',
      email: 's.chen@travery.com',
      employeeId: 'TRV-2023-014',
      role: AccountRole.receptionist,
      status: AccountStatus.inactive,
      joinDate: DateTime(2023, 1, 20),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_3',
    ),
    Account(
      id: 'acc_4',
      name: 'Marcus Reed',
      email: 'm.reed@travery.com',
      employeeId: 'TRV-2022-022',
      role: AccountRole.guide,
      status: AccountStatus.active,
      joinDate: DateTime(2022, 9, 5),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_4',
    ),
    Account(
      id: 'acc_5',
      name: 'Linh Nguyễn',
      email: 'l.nguyen@travery.com',
      employeeId: 'TRV-2023-031',
      role: AccountRole.coordinator,
      status: AccountStatus.active,
      joinDate: DateTime(2023, 5, 12),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_5',
    ),
    Account(
      id: 'acc_6',
      name: 'Trần Minh Khoa',
      email: 't.minhkhoa@travery.com',
      employeeId: 'TRV-2024-045',
      role: AccountRole.receptionist,
      status: AccountStatus.active,
      joinDate: DateTime(2024, 2, 10),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_6',
    ),
    Account(
      id: 'acc_7',
      name: 'Nguyễn Thị Hoa',
      email: 'n.thihoa@travery.com',
      employeeId: 'TRV-2023-058',
      role: AccountRole.guide,
      status: AccountStatus.inactive,
      joinDate: DateTime(2023, 8, 22),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_7',
    ),
    Account(
      id: 'acc_8',
      name: 'David Park',
      email: 'd.park@travery.com',
      employeeId: 'TRV-2022-077',
      role: AccountRole.coordinator,
      status: AccountStatus.active,
      joinDate: DateTime(2022, 11, 3),
      avatarUrl: 'https://i.pravatar.cc/150?u=acc_8',
    ),
  ];

  static final List<CoachData> _vehicles = [
    CoachData(
      id: 'veh_1',
      routeFrom: 'SGN',
      routeTo: 'DLT',
      status: CoachStatus.running,
      plateNumber: '51B - 882.41',
      vehicleType: 'VIP Sleeper',
      seatCount: 22,
      driverName: 'Nguyễn Văn Minh',
    ),
    CoachData(
      id: 'veh_2',
      routeFrom: 'HAN',
      routeTo: 'HPH',
      status: CoachStatus.available,
      plateNumber: '29B - 110.02',
      vehicleType: 'Standard',
      seatCount: 45,
      driverName: 'Trần Quang Khải',
    ),
    CoachData(
      id: 'veh_3',
      routeFrom: 'SGN',
      routeTo: 'CAM',
      status: CoachStatus.available,
      plateNumber: '59B - 564.29',
      vehicleType: 'Limousine',
      seatCount: 9,
      driverName: 'Lê Anh Tuấn',
    ),
    CoachData(
      id: 'veh_4',
      routeFrom: 'DLT',
      routeTo: 'SGN',
      status: CoachStatus.running,
      plateNumber: '49B - 023.15',
      vehicleType: 'Standard',
      seatCount: 34,
      driverName: 'Võ Hoàng Phi',
    ),
    CoachData(
      id: 'veh_5',
      routeFrom: 'HAN',
      routeTo: 'DLT',
      status: CoachStatus.available,
      plateNumber: '30A - 765.33',
      vehicleType: 'VIP Sleeper',
      seatCount: 18,
      driverName: 'Phạm Đức Long',
    ),
    CoachData(
      id: 'veh_6',
      routeFrom: 'NHA',
      routeTo: 'SGN',
      status: CoachStatus.running,
      plateNumber: '79C - 441.88',
      vehicleType: 'Standard',
      seatCount: 40,
      driverName: 'Bùi Thị Thanh',
    ),
  ];

  static final List<HotelData> _hotels = [
    HotelData(
      id: 'hot_1',
      name: 'Grand Diamond Saigon',
      district: 'Quận 1',
      location: 'TP. Hồ Chí Minh',
      roomCount: 120,
      occupancyRate: 0.92,
      rating: 4.8,
      imageUrl:
          'https://images.unsplash.com/photo-1566073771259-4e6a850e645b?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80',
    ),
    HotelData(
      id: 'hot_2',
      name: 'Coastal Breeze Resort',
      district: 'Ngũ Hành Sơn',
      location: 'Đà Nẵng',
      roomCount: 85,
      occupancyRate: 0.78,
      rating: 4.9,
    ),
    HotelData(
      id: 'hot_3',
      name: 'Urban Sky Suites',
      district: 'Hoàn Kiếm',
      location: 'Hà Nội',
      roomCount: 45,
      occupancyRate: 0.64,
      rating: 4.2,
    ),
    HotelData(
      id: 'hot_4',
      name: 'Pine Valley Retreat',
      district: 'Đà Lạt',
      location: 'Lâm Đồng',
      roomCount: 30,
      occupancyRate: 0.88,
      rating: 4.9,
    ),
    HotelData(
      id: 'hot_5',
      name: 'Pearl Island Resort',
      district: 'Phú Quốc',
      location: 'Kiên Giang',
      roomCount: 210,
      occupancyRate: 0.45,
      rating: 4.7,
    ),
    HotelData(
      id: 'hot_6',
      name: 'Ancient Town Villas',
      district: 'Hội An',
      location: 'Quảng Nam',
      roomCount: 18,
      occupancyRate: 1.0,
      rating: 4.6,
    ),
    HotelData(
      id: 'hot_7',
      name: 'Cliff Edge Hotel',
      district: 'Nha Trang',
      location: 'Khánh Hòa',
      roomCount: 65,
      occupancyRate: 0.52,
      rating: 4.4,
    ),
    HotelData(
      id: 'hot_8',
      name: 'Metropolis Lodge',
      district: 'Bình Thạnh',
      location: 'TP. HCM',
      roomCount: 54,
      occupancyRate: 0.71,
      rating: 4.3,
    ),
  ];

  static final List<Tour> _tours = [
    Tour(
      id: 'tour_1',
      rank: 1,
      tourName: 'Hạ Long – Cát Bà 3N2D',
      category: 'Cruise & Luxury Resort',
      trend: TourTrend.up,
      imageUrl:
          'https://images.unsplash.com/photo-1543726016-0a9e60a594e4?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80',
    ),
    Tour(
      id: 'tour_2',
      rank: 2,
      tourName: 'Phố cổ Hội An – Đà Nẵng',
      category: 'Văn hóa & Ẩm thực',
      trend: TourTrend.up,
    ),
    Tour(
      id: 'tour_3',
      rank: 3,
      tourName: 'Sapa – Đỉnh Fansipan',
      category: 'Trekking & Trải nghiệm',
      trend: TourTrend.up,
    ),
    Tour(
      id: 'tour_4',
      rank: 4,
      tourName: 'Phú Quốc Pearl Island',
      category: 'Nghỉ dưỡng 5 sao',
      trend: TourTrend.down,
    ),
    Tour(
      id: 'tour_5',
      rank: 5,
      tourName: 'Cố đô Huế – Lăng tẩm',
      category: 'Lịch sử & Di sản',
      trend: TourTrend.up,
    ),
  ];

  static const Dashboard _dashboardStats = Dashboard(
    totalRevenue: 4820150,
    totalBooking: 12842,
    netProfit: 1204500,
    revenueGrowthPercent: 12.4,
    bookingGrowthPercent: 5.2,
    profitGrowthPercent: 8.1,
    ongoingTours: 24,
    vehicleUtilizationPercent: 88,
    hotelOccupancyPercent: 94,
    systemStabilityPercent: 99.9,
    tourRevenueM: 400,
    carRevenueM: 400,
    hotelRevenueM: 400,
    tourRevenueQuarterM: 320,
    carRevenueQuarterM: 360,
    hotelRevenueQuarterM: 450,
  );

  static const TourSummary _tourSummaryStats = TourSummary(
    completed: 1284,
    ongoing: 42,
    occupancyRate: 94,
    avgRating: 4.8,
    cancellations: 2,
  );

  // ── Mutable copies for CRUD operations ─────────────────────────────────────

  final List<Account> _mutableAccounts = List.of(_accounts);
  final List<CoachData> _mutableVehicles = List.of(_vehicles);
  final List<HotelData> _mutableHotels = List.of(_hotels);
  final List<Tour> _mutableTours = List.of(_tours);

  // ── Helpers ────────────────────────────────────────────────────────────────

  Future<Result<T>> _delay<T>(T value) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Result.ok(value);
  }

  // ── Dashboard ──────────────────────────────────────────────────────────────

  @override
  Future<Result<Dashboard>> getDashboardStats() => _delay(_dashboardStats);

  @override
  Future<Result<List<double>>> getRevenueByMonth({
    required int month,
    required int year,
  }) {
    // Returns [tourRevenue, carRevenue, hotelRevenue] per month (unit: triệu VNĐ).
    // Simulates seasonal fluctuation based on month.
    const monthlyData = <int, List<double>>{
      1: [280, 310, 350],
      2: [320, 290, 380],
      3: [370, 340, 400],
      4: [410, 360, 420],
      5: [390, 380, 410],
      6: [450, 420, 460],
      7: [500, 470, 510],
      8: [480, 440, 490],
      9: [420, 400, 440],
      10: [460, 430, 470],
      11: [380, 370, 400],
      12: [440, 410, 450],
    };
    final data = monthlyData[month] ?? [400.0, 400.0, 400.0];
    return _delay(data);
  }

  // ── Accounts ───────────────────────────────────────────────────────────────

  @override
  Future<Result<List<Account>>> getAllAccounts() =>
      _delay(List.unmodifiable(_mutableAccounts));

  @override
  Future<Result<Account>> getAccount({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_mutableAccounts.firstWhere((a) => a.id == id));
    } catch (_) {
      return Result.error(Exception('Account not found: $id'));
    }
  }

  @override
  Future<Result<void>> createAccount({
    required String name,
    required String email,
    required String employeeId,
    required String role,
    required bool isActive,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final newId = 'acc_${_mutableAccounts.length + 1}';
    _mutableAccounts.add(
      Account(
        id: newId,
        name: name,
        email: email,
        employeeId: employeeId,
        role: _parseRole(role),
        status: isActive ? AccountStatus.active : AccountStatus.inactive,
        joinDate: DateTime.now(),
      ),
    );
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> updateAccount({
    required String id,
    required String name,
    required String email,
    required String employeeId,
    required String role,
    required bool isActive,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final idx = _mutableAccounts.indexWhere((a) => a.id == id);
    if (idx == -1) {
      return Result.error(Exception('Account not found: $id'));
    }
    final existing = _mutableAccounts[idx];
    _mutableAccounts[idx] = Account(
      id: existing.id,
      name: name,
      email: email,
      employeeId: employeeId,
      role: _parseRole(role),
      status: isActive ? AccountStatus.active : AccountStatus.inactive,
      joinDate: existing.joinDate,
      avatarUrl: existing.avatarUrl,
    );
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> deleteAccount({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final lengthBefore = _mutableAccounts.length;
    _mutableAccounts.removeWhere((a) => a.id == id);
    if (_mutableAccounts.length == lengthBefore) {
      return Result.error(Exception('Account not found: $id'));
    }
    notifyListeners();
    return const Result.ok(null);
  }

  // ── Vehicles ───────────────────────────────────────────────────────────────

  @override
  Future<Result<List<CoachData>>> getAllVehicles() =>
      _delay(List.unmodifiable(_mutableVehicles));

  @override
  Future<Result<CoachData>> getVehicle({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_mutableVehicles.firstWhere((v) => v.id == id));
    } catch (_) {
      return Result.error(Exception('Vehicle not found: $id'));
    }
  }

  // ── Hotels ────────────────────────────────────────────────────────────────

  @override
  Future<Result<List<HotelData>>> getAllHotels() =>
      _delay(List.unmodifiable(_mutableHotels));

  @override
  Future<Result<HotelData>> getHotel({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_mutableHotels.firstWhere((h) => h.id == id));
    } catch (_) {
      return Result.error(Exception('Hotel not found: $id'));
    }
  }

  // ── Tours ──────────────────────────────────────────────────────────────────

  @override
  Future<Result<List<Tour>>> getAllTours() =>
      _delay(List.unmodifiable(_mutableTours));

  @override
  Future<Result<Tour>> getTour({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_mutableTours.firstWhere((t) => t.id == id));
    } catch (_) {
      return Result.error(Exception('Tour not found: $id'));
    }
  }

  @override
  Future<Result<TourSummary>> getTourSummaryStats() =>
      _delay(_tourSummaryStats);

  // ── Private helpers ────────────────────────────────────────────────────────

  AccountRole _parseRole(String role) {
    switch (role) {
      case 'coordinator':
        return AccountRole.coordinator;
      case 'receptionist':
        return AccountRole.receptionist;
      default:
        return AccountRole.guide;
    }
  }

  @override
  Future<Result<void>> addHotel({
    required String name,
    required String address,
    required String phone,
    required int totalRooms,
    required String status,
    required double pricePerNight,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final newId = 'hot_${_mutableHotels.length + 1}';
    _mutableHotels.add(
      HotelData(
        id: newId,
        name: name,
        district: address.split(',').first,
        location: address,
        roomCount: totalRooms,
        occupancyRate: 0.0,
        rating: 5.0,
      ),
    );
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> addRoom({
    required String hotelId,
    required String roomType,
    required int capacity,
    required double price,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> addVehicle({
    required String name,
    required String code,
    required String licensePlate,
    required int seatCount,
    required String status,
    required double rentalPrice,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final newId = 'veh_${_mutableVehicles.length + 1}';
    _mutableVehicles.add(
      CoachData(
        id: newId,
        routeFrom: 'SGN',
        routeTo: 'SGN',
        status: status.toLowerCase() == 'running'
            ? CoachStatus.running
            : CoachStatus.available,
        plateNumber: licensePlate,
        vehicleType: name,
        seatCount: seatCount,
        driverName: 'Unknown',
      ),
    );
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> deleteHotel({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final lengthBefore = _mutableHotels.length;
    _mutableHotels.removeWhere((h) => h.id == id);
    if (_mutableHotels.length == lengthBefore) {
      return Result.error(Exception('Hotel not found: $id'));
    }
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> deleteRoom({required String roomId}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> updateHotel({
    required String id,
    required String name,
    required String address,
    required String phone,
    required int totalRooms,
    required String status,
    required double pricePerNight,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final idx = _mutableHotels.indexWhere((h) => h.id == id);
    if (idx == -1) {
      return Result.error(Exception('Hotel not found: $id'));
    }
    final existing = _mutableHotels[idx];
    _mutableHotels[idx] = HotelData(
      id: existing.id,
      name: name,
      district: address.split(',').first,
      location: address,
      roomCount: totalRooms,
      occupancyRate: existing.occupancyRate,
      rating: existing.rating,
      imageUrl: existing.imageUrl,
    );
    notifyListeners();
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> updateRoom({
    required String roomId,
    required String roomType,
    required int capacity,
    required double price,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return const Result.ok(null);
  }

  @override
  Future<Result<void>> updateVehicle({
    required String id,
    required String name,
    required String code,
    required String licensePlate,
    required int seatCount,
    required String status,
    required double rentalPrice,
  }) async {
    await Future.delayed(const Duration(milliseconds: 300));
    final idx = _mutableVehicles.indexWhere((v) => v.id == id);
    if (idx == -1) {
      return Result.error(Exception('Vehicle not found: $id'));
    }
    final existing = _mutableVehicles[idx];
    _mutableVehicles[idx] = CoachData(
      id: existing.id,
      routeFrom: existing.routeFrom,
      routeTo: existing.routeTo,
      status: status.toLowerCase() == 'running'
          ? CoachStatus.running
          : CoachStatus.available,
      plateNumber: licensePlate,
      vehicleType: name,
      seatCount: seatCount,
      driverName: existing.driverName,
    );
    notifyListeners();
    return const Result.ok(null);
  }
}

