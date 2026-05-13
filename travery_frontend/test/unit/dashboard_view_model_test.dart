import 'package:flutter_test/flutter_test.dart';
import 'package:travery_frontend/domain/models/admin/business_dashboard/business_dashboard.dart';
import 'package:travery_frontend/data/repositories/admin_repository_dev.dart';
import 'package:travery_frontend/ui/admin/view_model/dashboard_view_model.dart';
import 'package:travery_frontend/utils/core_result.dart';

void main() {
  late AdminRepositoryDev repo;
  late DashboardViewModel vm;

  setUp(() {
    repo = AdminRepositoryDev();
    vm = DashboardViewModel(adminRepository: repo);
  });

  group('DashboardViewModel.loadStats', () {
    test('initially not running and no result', () {
      expect(vm.loadStats.running, isFalse);
      expect(vm.loadStats.result, isNull);
      expect(vm.loadStats.completed, isFalse);
      expect(vm.loadStats.error, isFalse);
    });

    test('execute() sets running to true then completes', () async {
      bool wasRunning = false;
      vm.loadStats.addListener(() {
        if (vm.loadStats.running) wasRunning = true;
      });

      await vm.loadStats.execute();

      expect(wasRunning, isTrue);
      expect(vm.loadStats.running, isFalse);
      expect(vm.loadStats.completed, isTrue);
      expect(vm.loadStats.error, isFalse);
    });

    test('result contains Dashboard after execute', () async {
      await vm.loadStats.execute();

      expect(vm.loadStats.result, isA<Ok<BusinessDashboard>>());
      final stats = (vm.loadStats.result as Ok<BusinessDashboard>).value;
      expect(stats.totalRevenue, greaterThan(0));
      expect(stats.totalBooking, greaterThan(0));
    });

    test('result has correct revenue growth', () async {
      await vm.loadStats.execute();
      final stats = (vm.loadStats.result as Ok<BusinessDashboard>).value;
      expect(stats.revenueGrowthPercent, equals(12.4));
    });

    test('ongoing tours and utilization are populated', () async {
      await vm.loadStats.execute();
      final stats = (vm.loadStats.result as Ok<BusinessDashboard>).value;
      expect(stats.ongoingTours, isPositive);
      expect(stats.vehicleUtilizationPercent, greaterThan(0));
      expect(stats.hotelOccupancyPercent, greaterThan(0));
    });

    test('clearResult resets state', () async {
      await vm.loadStats.execute();
      expect(vm.loadStats.result, isNotNull);

      vm.loadStats.clearResult();
      expect(vm.loadStats.result, isNull);
      expect(vm.loadStats.completed, isFalse);
    });

    test('concurrent execute() calls are ignored while running', () async {
      // Fire and don't await — a second call while running should be no-op
      final future1 = vm.loadStats.execute();
      final future2 = vm.loadStats.execute(); // should be no-op

      await Future.wait([future1, future2]);

      // Should still complete successfully
      expect(vm.loadStats.completed, isTrue);
    });
  });
}
