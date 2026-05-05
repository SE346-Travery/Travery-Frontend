import 'package:flutter_test/flutter_test.dart';
import 'package:travery_frontend/data/repositories/admin_data_models.dart';
import 'package:travery_frontend/data/repositories/admin_repository_dev.dart';
import 'package:travery_frontend/utils/core_result.dart';

void main() {
  late AdminRepositoryDev repo;

  setUp(() {
    repo = AdminRepositoryDev();
  });

  // ── getDashboardStats ──────────────────────────────────────────────────────

  group('getDashboardStats', () {
    test('returns Ok with DashboardStats', () async {
      final result = await repo.getDashboardStats();
      expect(result, isA<Ok<DashboardStats>>());
    });

    test('stats have correct totalRevenue', () async {
      final result = await repo.getDashboardStats();
      final stats = (result as Ok<DashboardStats>).value;
      expect(stats.totalRevenue, equals(4820150));
    });

    test('stats have correct ongoingTours', () async {
      final result = await repo.getDashboardStats();
      final stats = (result as Ok<DashboardStats>).value;
      expect(stats.ongoingTours, equals(24));
    });

    test('systemStabilityPercent is 99.9', () async {
      final result = await repo.getDashboardStats();
      final stats = (result as Ok<DashboardStats>).value;
      expect(stats.systemStabilityPercent, equals(99.9));
    });
  });

  // ── getAllAccounts ─────────────────────────────────────────────────────────

  group('getAllAccounts', () {
    test('returns Ok with list of 5 accounts', () async {
      final result = await repo.getAllAccounts();
      expect(result, isA<Ok<List<AccountData>>>());
      final accounts = (result as Ok<List<AccountData>>).value;
      expect(accounts.length, equals(5));
    });

    test('first account is Alex Morgan with guide role', () async {
      final result = await repo.getAllAccounts();
      final accounts = (result as Ok<List<AccountData>>).value;
      expect(accounts.first.name, equals('Alex Morgan'));
      expect(accounts.first.role, equals(AccountRole.guide));
    });

    test('contains active and inactive accounts', () async {
      final result = await repo.getAllAccounts();
      final accounts = (result as Ok<List<AccountData>>).value;
      final activeCount =
          accounts.where((a) => a.status == AccountStatus.active).length;
      final inactiveCount =
          accounts.where((a) => a.status == AccountStatus.inactive).length;
      expect(activeCount, greaterThan(0));
      expect(inactiveCount, greaterThan(0));
    });

    test('accounts have non-empty emails', () async {
      final result = await repo.getAllAccounts();
      final accounts = (result as Ok<List<AccountData>>).value;
      for (final a in accounts) {
        expect(a.email, isNotEmpty);
        expect(a.employeeId, isNotEmpty);
      }
    });
  });

  // ── createAccount ──────────────────────────────────────────────────────────

  group('createAccount', () {
    test('returns Ok and increases list size by 1', () async {
      final before = await repo.getAllAccounts();
      final countBefore = (before as Ok<List<AccountData>>).value.length;

      final result = await repo.createAccount(
        name: 'Test User',
        email: 'test@travery.com',
        employeeId: 'TRV-TEST-001',
        role: 'guide',
        isActive: true,
      );

      expect(result, isA<Ok<void>>());

      final after = await repo.getAllAccounts();
      final countAfter = (after as Ok<List<AccountData>>).value.length;
      expect(countAfter, equals(countBefore + 1));
    });

    test('created account has correct data', () async {
      await repo.createAccount(
        name: 'New Employee',
        email: 'new@travery.com',
        employeeId: 'TRV-NEW-001',
        role: 'coordinator',
        isActive: false,
      );

      final allResult = await repo.getAllAccounts();
      final accounts = (allResult as Ok<List<AccountData>>).value;
      final created = accounts.lastWhere((a) => a.email == 'new@travery.com');

      expect(created.name, equals('New Employee'));
      expect(created.role, equals(AccountRole.coordinator));
      expect(created.status, equals(AccountStatus.inactive));
    });
  });

  // ── deleteAccount ──────────────────────────────────────────────────────────

  group('deleteAccount', () {
    test('returns Ok and removes the account', () async {
      final result = await repo.deleteAccount(id: 'acc_1');
      expect(result, isA<Ok<void>>());

      final allResult = await repo.getAllAccounts();
      final accounts = (allResult as Ok<List<AccountData>>).value;
      expect(accounts.any((a) => a.id == 'acc_1'), isFalse);
    });

    test('returns Error when account not found', () async {
      final result = await repo.deleteAccount(id: 'non_existent_id');
      expect(result, isA<Error<void>>());
    });
  });

  // ── getAccount ─────────────────────────────────────────────────────────────

  group('getAccount', () {
    test('returns Ok for existing id', () async {
      final result = await repo.getAccount(id: 'acc_2');
      expect(result, isA<Ok<AccountData>>());
      final account = (result as Ok<AccountData>).value;
      expect(account.name, equals('Julian Kross'));
    });

    test('returns Error for non-existent id', () async {
      final result = await repo.getAccount(id: 'xyz_not_found');
      expect(result, isA<Error<AccountData>>());
    });
  });

  // ── getAllVehicles ─────────────────────────────────────────────────────────

  group('getAllVehicles', () {
    test('returns Ok with 4 vehicles', () async {
      final result = await repo.getAllVehicles();
      expect(result, isA<Ok<List<VehicleData>>>());
      final vehicles = (result as Ok<List<VehicleData>>).value;
      expect(vehicles.length, equals(4));
    });

    test('vehicles have running and available statuses', () async {
      final result = await repo.getAllVehicles();
      final vehicles = (result as Ok<List<VehicleData>>).value;
      expect(
        vehicles.any((v) => v.status == VehicleStatus.running),
        isTrue,
      );
      expect(
        vehicles.any((v) => v.status == VehicleStatus.available),
        isTrue,
      );
    });

    test('vehicles have non-empty plateNumbers', () async {
      final result = await repo.getAllVehicles();
      final vehicles = (result as Ok<List<VehicleData>>).value;
      for (final v in vehicles) {
        expect(v.plateNumber, isNotEmpty);
        expect(v.driverName, isNotEmpty);
      }
    });
  });

  // ── getAllHotels ───────────────────────────────────────────────────────────

  group('getAllHotels', () {
    test('returns Ok with 8 hotels', () async {
      final result = await repo.getAllHotels();
      expect(result, isA<Ok<List<HotelData>>>());
      final hotels = (result as Ok<List<HotelData>>).value;
      expect(hotels.length, equals(8));
    });

    test('hotel occupancy rates are between 0 and 1', () async {
      final result = await repo.getAllHotels();
      final hotels = (result as Ok<List<HotelData>>).value;
      for (final h in hotels) {
        expect(h.occupancyRate, greaterThanOrEqualTo(0.0));
        expect(h.occupancyRate, lessThanOrEqualTo(1.0));
      }
    });

    test('hotel ratings are between 1 and 5', () async {
      final result = await repo.getAllHotels();
      final hotels = (result as Ok<List<HotelData>>).value;
      for (final h in hotels) {
        expect(h.rating, greaterThanOrEqualTo(1.0));
        expect(h.rating, lessThanOrEqualTo(5.0));
      }
    });
  });

  // ── getAllTours ────────────────────────────────────────────────────────────

  group('getAllTours', () {
    test('returns Ok with 5 tours', () async {
      final result = await repo.getAllTours();
      expect(result, isA<Ok<List<TourData>>>());
      final tours = (result as Ok<List<TourData>>).value;
      expect(tours.length, equals(5));
    });

    test('tours are sorted by rank', () async {
      final result = await repo.getAllTours();
      final tours = (result as Ok<List<TourData>>).value;
      for (int i = 0; i < tours.length - 1; i++) {
        expect(tours[i].rank, lessThan(tours[i + 1].rank));
      }
    });

    test('tours have up and down trends', () async {
      final result = await repo.getAllTours();
      final tours = (result as Ok<List<TourData>>).value;
      expect(tours.any((t) => t.trend == TourTrend.up), isTrue);
      expect(tours.any((t) => t.trend == TourTrend.down), isTrue);
    });
  });

  // ── getTourSummaryStats ────────────────────────────────────────────────────

  group('getTourSummaryStats', () {
    test('returns Ok with TourSummaryStats', () async {
      final result = await repo.getTourSummaryStats();
      expect(result, isA<Ok<TourSummaryStats>>());
    });

    test('stats have expected values', () async {
      final result = await repo.getTourSummaryStats();
      final stats = (result as Ok<TourSummaryStats>).value;
      expect(stats.completed, equals(1284));
      expect(stats.ongoing, equals(42));
      expect(stats.avgRating, equals(4.8));
    });
  });
}
