import 'package:flutter/foundation.dart';
import 'package:travery_frontend/utils/core_result.dart';

import 'package:travery_frontend/domain/models/admin/admin_data_models.dart';

abstract class AdminRepository extends ChangeNotifier {
  // ── Dashboard ──────────────────────────────────────────────────────────────

  Future<Result<Dashboard>> getDashboardStats();

  Future<Result<List<double>>> getRevenueByMonth({
    required int month,
    required int year,
  });

  // ── Accounts ───────────────────────────────────────────────────────────────

  Future<Result<List<Account>>> getAllAccounts();

  Future<Result<Account>> getAccount({required String id});

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

  Future<Result<List<CoachData>>> getAllVehicles();

  Future<Result<CoachData>> getVehicle({required String id});

  // ── Hotels ────────────────────────────────────────────────────────────────

  Future<Result<List<HotelData>>> getAllHotels();

  Future<Result<HotelData>> getHotel({required String id});

  // ── Tours ──────────────────────────────────────────────────────────────────

  Future<Result<List<Tour>>> getAllTours();

  Future<Result<Tour>> getTour({required String id});

  Future<Result<TourSummary>> getTourSummaryStats();
}

