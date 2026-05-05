import 'package:travery_frontend/data/repositories/admin_data_models.dart';
import 'package:travery_frontend/data/repositories/admin_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

/// Development/local implementation of [AdminRepository] that returns
/// in-memory seed data. Simulates a network delay of 300 ms.
class AdminRepositoryDev extends AdminRepository {
  // ── Seed data ──────────────────────────────────────────────────────────────

  static final List<AccountData> _accounts = [
    AccountData(
      id: 'acc_1',
      name: 'Alex Morgan',
      email: 'alex.morgan@travery.com',
      employeeId: 'TRV-2022-001',
      role: AccountRole.guide,
      status: AccountStatus.active,
      joinDate: DateTime(2022, 3, 15),
    ),
    AccountData(
      id: 'acc_2',
      name: 'Julian Kross',
      email: 'j.kross@travery.com',
      employeeId: 'TRV-2021-008',
      role: AccountRole.coordinator,
      status: AccountStatus.active,
      joinDate: DateTime(2021, 7, 1),
    ),
    AccountData(
      id: 'acc_3',
      name: 'Sarah Chen',
      email: 's.chen@travery.com',
      employeeId: 'TRV-2023-014',
      role: AccountRole.receptionist,
      status: AccountStatus.inactive,
      joinDate: DateTime(2023, 1, 20),
    ),
    AccountData(
      id: 'acc_4',
      name: 'Marcus Reed',
      email: 'm.reed@travery.com',
      employeeId: 'TRV-2022-022',
      role: AccountRole.guide,
      status: AccountStatus.active,
      joinDate: DateTime(2022, 9, 5),
    ),
    AccountData(
      id: 'acc_5',
      name: 'Linh Nguyễn',
      email: 'l.nguyen@travery.com',
      employeeId: 'TRV-2023-031',
      role: AccountRole.coordinator,
      status: AccountStatus.active,
      joinDate: DateTime(2023, 5, 12),
    ),
  ];

  static const List<VehicleData> _vehicles = [
    VehicleData(
      id: 'veh_1',
      routeFrom: 'SGN',
      routeTo: 'DLT',
      status: VehicleStatus.running,
      plateNumber: '51B - 882.41',
      vehicleType: 'VIP Sleeper',
      seatCount: 22,
      driverName: 'Nguyễn Văn Minh',
    ),
    VehicleData(
      id: 'veh_2',
      routeFrom: 'HAN',
      routeTo: 'HPH',
      status: VehicleStatus.available,
      plateNumber: '29B - 110.02',
      vehicleType: 'Standard',
      seatCount: 45,
      driverName: 'Trần Quang Khải',
    ),
    VehicleData(
      id: 'veh_3',
      routeFrom: 'SGN',
      routeTo: 'CAM',
      status: VehicleStatus.available,
      plateNumber: '59B - 564.29',
      vehicleType: 'Limousine',
      seatCount: 9,
      driverName: 'Lê Anh Tuấn',
    ),
    VehicleData(
      id: 'veh_4',
      routeFrom: 'DLT',
      routeTo: 'SGN',
      status: VehicleStatus.running,
      plateNumber: '49B - 023.15',
      vehicleType: 'Standard',
      seatCount: 34,
      driverName: 'Võ Hoàng Phi',
    ),
  ];

  static const List<HotelData> _hotels = [
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

  static const List<TourData> _tours = [
    TourData(
      id: 'tour_1',
      rank: 1,
      tourName: 'Hạ Long – Cát Bà 3N2D',
      category: 'Cruise & Luxury Resort',
      trend: TourTrend.up,
      imageUrl:
          'https://images.unsplash.com/photo-1543726016-0a9e60a594e4?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80',
    ),
    TourData(
      id: 'tour_2',
      rank: 2,
      tourName: 'Phố cổ Hội An – Đà Nẵng',
      category: 'Văn hóa & Ẩm thực',
      trend: TourTrend.up,
    ),
    TourData(
      id: 'tour_3',
      rank: 3,
      tourName: 'Sapa – Đỉnh Fansipan',
      category: 'Trekking & Trải nghiệm',
      trend: TourTrend.up,
    ),
    TourData(
      id: 'tour_4',
      rank: 4,
      tourName: 'Phú Quốc Pearl Island',
      category: 'Nghỉ dưỡng 5 sao',
      trend: TourTrend.down,
    ),
    TourData(
      id: 'tour_5',
      rank: 5,
      tourName: 'Cố đô Huế – Lăng tẩm',
      category: 'Lịch sử & Di sản',
      trend: TourTrend.up,
    ),
  ];

  static const DashboardStats _dashboardStats = DashboardStats(
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

  static const TourSummaryStats _tourSummaryStats = TourSummaryStats(
    completed: 1284,
    ongoing: 42,
    occupancyRate: 94,
    avgRating: 4.8,
    cancellations: 2,
  );

  // ── Mutable copy for CRUD operations ──────────────────────────────────────

  final List<AccountData> _mutableAccounts = List.of(_accounts);

  // ── Helpers ────────────────────────────────────────────────────────────────

  Future<Result<T>> _delay<T>(T value) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return Result.ok(value);
  }

  // ── Dashboard ──────────────────────────────────────────────────────────────

  @override
  Future<Result<DashboardStats>> getDashboardStats() =>
      _delay(_dashboardStats);

  @override
  Future<Result<List<double>>> getRevenueByMonth({
    required int month,
    required int year,
  }) => _delay([400.0, 400.0, 400.0]);

  // ── Accounts ───────────────────────────────────────────────────────────────

  @override
  Future<Result<List<AccountData>>> getAllAccounts() =>
      _delay(List.unmodifiable(_mutableAccounts));

  @override
  Future<Result<AccountData>> getAccount({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_mutableAccounts.firstWhere((a) => a.id == id));
    } catch (_) {
      return Result.error(
        Exception('Account not found: $id'),
      );
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
      AccountData(
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
    _mutableAccounts[idx] = _mutableAccounts[idx].copyWith(
      name: name,
      email: email,
      employeeId: employeeId,
      role: _parseRole(role),
      status: isActive ? AccountStatus.active : AccountStatus.inactive,
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
  Future<Result<List<VehicleData>>> getAllVehicles() => _delay(_vehicles);

  @override
  Future<Result<VehicleData>> getVehicle({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_vehicles.firstWhere((v) => v.id == id));
    } catch (_) {
      return Result.error(Exception('Vehicle not found: $id'));
    }
  }

  // ── Hotels ────────────────────────────────────────────────────────────────

  @override
  Future<Result<List<HotelData>>> getAllHotels() => _delay(_hotels);

  @override
  Future<Result<HotelData>> getHotel({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_hotels.firstWhere((h) => h.id == id));
    } catch (_) {
      return Result.error(Exception('Hotel not found: $id'));
    }
  }

  // ── Tours ──────────────────────────────────────────────────────────────────

  @override
  Future<Result<List<TourData>>> getAllTours() => _delay(_tours);

  @override
  Future<Result<TourData>> getTour({required String id}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return Result.ok(_tours.firstWhere((t) => t.id == id));
    } catch (_) {
      return Result.error(Exception('Tour not found: $id'));
    }
  }

  @override
  Future<Result<TourSummaryStats>> getTourSummaryStats() =>
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
}
