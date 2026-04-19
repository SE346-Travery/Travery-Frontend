import 'package:flutter/foundation.dart';

import 'package:travery_frontend/data/repositories/receptionist_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class ReceptionistViewModel extends ChangeNotifier {
  final ReceptionistRepository _repository;

  ReceptionistViewModel({required ReceptionistRepository repository})
    : _repository = repository;

  ReceptionistDashboardData? _dashboardData;
  ReceptionistDashboardData? get dashboardData => _dashboardData;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  // Dashboard counts
  int get readyCount => _dashboardData?.readyCount ?? 0;
  int get occupiedCount => _dashboardData?.occupiedCount ?? 0;
  int get cleaningCount => _dashboardData?.cleaningCount ?? 0;
  int get maintenanceCount => _dashboardData?.maintenanceCount ?? 0;

  // Lists
  List<CheckInItem> get todayCheckIns => _dashboardData?.todayCheckIns ?? [];
  List<CheckoutItem> get pendingCheckouts =>
      _dashboardData?.pendingCheckouts ?? [];

  // Revenue
  double get expectedRevenue => _dashboardData?.expectedRevenue ?? 0;
  double get collectionProgress => _dashboardData?.collectionProgress ?? 0;

  // Staff info
  String get staffName => _dashboardData?.staffName ?? '';
  String? get staffAvatarUrl => _dashboardData?.staffAvatarUrl;
  DateTime get currentDateTime =>
      _dashboardData?.currentDateTime ?? DateTime.now();

  Future<void> loadDashboardData() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final result = await _repository.getDashboardData();
      switch (result) {
        case Ok<ReceptionistDashboardData>():
          _dashboardData = result.value;
        case Error<ReceptionistDashboardData>():
          _error = result.error.toString();
      }
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<bool> checkIn({
    required String bookingId,
    required String roomId,
  }) async {
    final result = await _repository.checkIn(
      bookingId: bookingId,
      roomId: roomId,
    );

    switch (result) {
      case Ok<void>():
        await loadDashboardData();
        return true;
      case Error<void>():
        _error = result.error.toString();
        notifyListeners();
        return false;
    }
  }

  Future<bool> checkOut({
    required String bookingId,
    required double amount,
  }) async {
    final result = await _repository.checkOut(
      bookingId: bookingId,
      amount: amount,
    );

    switch (result) {
      case Ok<void>():
        await loadDashboardData();
        return true;
      case Error<void>():
        _error = result.error.toString();
        notifyListeners();
        return false;
    }
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
