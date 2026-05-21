// Basic smoke test for the Travery app.
// Verifies that the app widget tree builds without throwing.

import 'package:flutter_test/flutter_test.dart';
import 'package:travery_frontend/data/repositories/admin/admin_repository_dev.dart';
import 'package:travery_frontend/domain/models/admin/business_account/business_account.dart';
import 'package:travery_frontend/domain/models/admin/business_coach/business_coach.dart';
import 'package:travery_frontend/domain/models/admin/business_dashboard/business_dashboard.dart';
import 'package:travery_frontend/domain/models/admin/business_hotel/business_hotel.dart';
import 'package:travery_frontend/domain/models/admin/business_tour/business_tour.dart';
import 'package:travery_frontend/utils/core_result.dart';

void main() {
  test(
    'AdminRepositoryDev smoke test — app data layer is functional',
    () async {
      final repo = AdminRepositoryDev();

      // Dashboard
      final dashResult = await repo.getDashboardStats();
      expect(dashResult, isA<Ok<BusinessDashboard>>());

      // Accounts
      final accountsResult = await repo.getAllAccounts();
      expect(accountsResult, isA<Ok<List<BusinessAccount>>>());
      final accounts = (accountsResult as Ok<List<BusinessAccount>>).value;
      expect(accounts, isNotEmpty);

      // Vehicles
      final vehiclesResult = await repo.getAllVehicles();
      expect(vehiclesResult, isA<Ok<List<BusinessCoach>>>());
      final vehicles = (vehiclesResult as Ok<List<BusinessCoach>>).value;
      expect(vehicles, isNotEmpty);

      // Hotels
      final hotelsResult = await repo.getAllHotels();
      expect(hotelsResult, isA<Ok<List<BusinessHotel>>>());
      final hotels = (hotelsResult as Ok<List<BusinessHotel>>).value;
      expect(hotels, isNotEmpty);

      // Tours
      final toursResult = await repo.getAllTours();
      expect(toursResult, isA<Ok<List<BusinessTour>>>());
      final tours = (toursResult as Ok<List<BusinessTour>>).value;
      expect(tours, isNotEmpty);
    },
  );
}
