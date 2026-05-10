import 'package:flutter/foundation.dart';
import 'package:travery_frontend/utils/core_result.dart';
import 'package:travery_frontend/domain/models/admin/account/account.dart';
import 'package:travery_frontend/domain/models/admin/coach/coach.dart';
import 'package:travery_frontend/domain/models/admin/dashboard/dashboard.dart';
import 'package:travery_frontend/domain/models/admin/hotel/hotel.dart';
import 'package:travery_frontend/domain/models/admin/tour/tour.dart';
import 'package:travery_frontend/domain/models/admin/tour_summary/tour_summary.dart';

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

  Future<Result<List<Coach>>> getAllVehicles();

  Future<Result<Coach>> getVehicle({required String id});

  // ── Hotels ────────────────────────────────────────────────────────────────

  Future<Result<List<Hotel>>> getAllHotels();

  Future<Result<Hotel>> getHotel({required String id});

  // ── Tours ──────────────────────────────────────────────────────────────────

  Future<Result<List<Tour>>> getAllTours();

  Future<Result<Tour>> getTour({required String id});

  Future<Result<TourSummary>> getTourSummaryStats();
}
