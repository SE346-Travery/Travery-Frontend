// Basic smoke test for the Travery app.
// Verifies that the app widget tree builds without throwing.

import 'package:flutter_test/flutter_test.dart';
import 'package:travery_frontend/data/repositories/admin_repository_dev.dart';
import 'package:travery_frontend/data/repositories/admin_data_models.dart';
import 'package:travery_frontend/utils/core_result.dart';

void main() {
  test('AdminRepositoryDev smoke test — app data layer is functional', () async {
    final repo = AdminRepositoryDev();

    // Dashboard
    final dashResult = await repo.getDashboardStats();
    expect(dashResult, isA<Ok<DashboardStats>>());

    // Accounts
    final accountsResult = await repo.getAllAccounts();
    expect(accountsResult, isA<Ok<List<AccountData>>>());
    final accounts = (accountsResult as Ok<List<AccountData>>).value;
    expect(accounts, isNotEmpty);

    // Vehicles
    final vehiclesResult = await repo.getAllVehicles();
    expect(vehiclesResult, isA<Ok<List<VehicleData>>>());
    final vehicles = (vehiclesResult as Ok<List<VehicleData>>).value;
    expect(vehicles, isNotEmpty);

    // Hotels
    final hotelsResult = await repo.getAllHotels();
    expect(hotelsResult, isA<Ok<List<HotelData>>>());
    final hotels = (hotelsResult as Ok<List<HotelData>>).value;
    expect(hotels, isNotEmpty);

    // Tours
    final toursResult = await repo.getAllTours();
    expect(toursResult, isA<Ok<List<TourData>>>());
    final tours = (toursResult as Ok<List<TourData>>).value;
    expect(tours, isNotEmpty);
  });
}
