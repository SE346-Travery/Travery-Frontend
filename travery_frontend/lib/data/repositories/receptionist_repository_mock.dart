import 'package:flutter/foundation.dart';

import 'package:travery_frontend/data/repositories/receptionist_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class ReceptionistRepositoryMock extends ChangeNotifier
    implements ReceptionistRepository {
  @override
  Future<Result<ReceptionistDashboardData>> getDashboardData() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      return Result.ok(_mockDashboardData);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<void>> checkIn({
    required String bookingId,
    required String roomId,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return const Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<void>> checkOut({
    required String bookingId,
    required double amount,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      return const Result.ok(null);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<CheckInItem>>> getTodayCheckIns() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      return Result.ok(_mockDashboardData.todayCheckIns);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<List<CheckoutItem>>> getPendingCheckouts() async {
    try {
      await Future.delayed(const Duration(milliseconds: 300));
      return Result.ok(_mockDashboardData.pendingCheckouts);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  @override
  Future<Result<RoomStatusSummary>> getRoomStatusSummary() async {
    try {
      await Future.delayed(const Duration(milliseconds: 200));
      return Result.ok(
        RoomStatusSummary(
          readyCount: _mockDashboardData.readyCount,
          occupiedCount: _mockDashboardData.occupiedCount,
          cleaningCount: _mockDashboardData.cleaningCount,
          maintenanceCount: _mockDashboardData.maintenanceCount,
        ),
      );
    } on Exception catch (error) {
      return Result.error(error);
    }
  }

  static final ReceptionistDashboardData
  _mockDashboardData = ReceptionistDashboardData(
    readyCount: 42,
    occupiedCount: 118,
    cleaningCount: 8,
    maintenanceCount: 3,
    todayCheckIns: const [
      CheckInItem(
        customerName: 'Lê Minh Tuấn',
        bookingCode: '#55214',
        roomNumber: '502',
        roomType: 'Deluxe',
        status: CheckInStatus.ready,
      ),
      CheckInItem(
        customerName: 'Trần Thị Bích',
        bookingCode: '#55218',
        roomNumber: '314',
        roomType: 'Standard',
        status: CheckInStatus.cleaning,
      ),
      CheckInItem(
        customerName: 'Nguyễn Văn Hùng',
        bookingCode: '#55220',
        roomNumber: '601',
        roomType: 'Suite',
        status: CheckInStatus.ready,
      ),
      CheckInItem(
        customerName: 'Phạm Thị Lan',
        bookingCode: '#55225',
        roomNumber: '415',
        roomType: 'Deluxe',
        status: CheckInStatus.cleaning,
      ),
    ],
    pendingCheckouts: const [
      CheckoutItem(
        customerName: 'N. Kim Oanh',
        roomNumber: '204',
        expectedTime: '12:00',
        addons: [AddonType.bar, AddonType.laundry],
        amount: 2450000,
      ),
      CheckoutItem(
        customerName: 'H. Minh Chiến',
        roomNumber: '612',
        expectedTime: '12:30',
        addons: [AddonType.meal],
        amount: 5100000,
      ),
      CheckoutItem(
        customerName: 'T. Minh Đức',
        roomNumber: '308',
        expectedTime: '14:00',
        addons: [AddonType.laundry],
        amount: 850000,
      ),
    ],
    expectedRevenue: 24580000,
    collectionProgress: 0.75,
    staffName: 'Admin',
    staffAvatarUrl:
        'https://lh3.googleusercontent.com/aida/ADBb0uhcSDCT4qUdjJalr3C8ZuYlWnVcFCP1SLVIqtK2mbO_NxTWOPUtrxdjf3C_G7ea-_d6W6_2PKDXhIKTVfSTIlOvs7FBJEEXbhMO0roq2ES1UAiIZvm9PWo_NqEpSUe1gnK1uNiUvwuWUZNujp6Yu9JU1joIX6YhiI_cTmRwCqnsmtk9a7yENsKGr5nIqx-1ytKVwXwCkVnzz78WisYRAvR61LYETGyYnHr9QZkBVr-GGYyzvoBhOAskyrMwBKHzFIapAgl0mpvT',
    currentDateTime: DateTime(2024, 5, 24, 14, 30),
  );
}
