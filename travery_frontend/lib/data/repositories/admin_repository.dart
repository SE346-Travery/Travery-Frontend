import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/repositories/admin_data_models.dart';
import 'package:travery_frontend/utils/core_result.dart';

abstract class AdminRepository extends ChangeNotifier {
  // ── Dashboard ──────────────────────────────────────────────────────────────

  Future<Result<DashboardStats>> getDashboardStats();

  Future<Result<List<double>>> getRevenueByMonth({
    required int month,
    required int year,
  });

  // ── Accounts ───────────────────────────────────────────────────────────────

  Future<Result<List<AccountData>>> getAllAccounts();

  Future<Result<AccountData>> getAccount({required String id});

  Future<Result<void>> createAccount({
    required String name,
    required String email,
    required String employeeId,
    required String role,
    required bool isActive,
  });

  Future<Result<void>> updateAccount({
    required String id,
    required String name,
    required String email,
    required String employeeId,
    required String role,
    required bool isActive,
  });

  Future<Result<void>> deleteAccount({required String id});

  // ── Vehicles ───────────────────────────────────────────────────────────────

  Future<Result<List<VehicleData>>> getAllVehicles();

  Future<Result<VehicleData>> getVehicle({required String id});

  // ── Hotels ────────────────────────────────────────────────────────────────

  Future<Result<List<HotelData>>> getAllHotels();

  Future<Result<HotelData>> getHotel({required String id});

  // ── Tours ──────────────────────────────────────────────────────────────────

  Future<Result<List<TourData>>> getAllTours();

  Future<Result<TourData>> getTour({required String id});

  Future<Result<TourSummaryStats>> getTourSummaryStats();
}
