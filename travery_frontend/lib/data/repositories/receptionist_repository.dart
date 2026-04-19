import 'package:flutter/foundation.dart';

import 'package:travery_frontend/utils/core_result.dart';

abstract class ReceptionistRepository extends ChangeNotifier {
  Future<Result<ReceptionistDashboardData>> getDashboardData();

  Future<Result<void>> checkIn({
    required String bookingId,
    required String roomId,
  });

  Future<Result<void>> checkOut({
    required String bookingId,
    required double amount,
  });

  Future<Result<List<CheckInItem>>> getTodayCheckIns();

  Future<Result<List<CheckoutItem>>> getPendingCheckouts();

  Future<Result<RoomStatusSummary>> getRoomStatusSummary();
}

class ReceptionistDashboardData {
  final int readyCount;
  final int occupiedCount;
  final int cleaningCount;
  final int maintenanceCount;
  final List<CheckInItem> todayCheckIns;
  final List<CheckoutItem> pendingCheckouts;
  final double expectedRevenue;
  final double collectionProgress;
  final String staffName;
  final String? staffAvatarUrl;
  final DateTime currentDateTime;

  const ReceptionistDashboardData({
    required this.readyCount,
    required this.occupiedCount,
    required this.cleaningCount,
    required this.maintenanceCount,
    required this.todayCheckIns,
    required this.pendingCheckouts,
    required this.expectedRevenue,
    required this.collectionProgress,
    required this.staffName,
    this.staffAvatarUrl,
    required this.currentDateTime,
  });
}

class CheckInItem {
  final String customerName;
  final String bookingCode;
  final String roomNumber;
  final String roomType;
  final CheckInStatus status;

  const CheckInItem({
    required this.customerName,
    required this.bookingCode,
    required this.roomNumber,
    required this.roomType,
    required this.status,
  });
}

enum CheckInStatus { ready, cleaning }

class CheckoutItem {
  final String customerName;
  final String roomNumber;
  final String expectedTime;
  final List<AddonType> addons;
  final double amount;

  const CheckoutItem({
    required this.customerName,
    required this.roomNumber,
    required this.expectedTime,
    required this.addons,
    required this.amount,
  });
}

enum AddonType { bar, laundry, meal }

class RoomStatusSummary {
  final int readyCount;
  final int occupiedCount;
  final int cleaningCount;
  final int maintenanceCount;

  const RoomStatusSummary({
    required this.readyCount,
    required this.occupiedCount,
    required this.cleaningCount,
    required this.maintenanceCount,
  });
}
