import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/seed_models/check_in/check_in_passenger.dart';
import 'package:travery_frontend/data/repositories/check_in_repository.dart';
import 'package:travery_frontend/utils/core_result.dart';

class CheckInViewModel extends ChangeNotifier {
  final CheckInRepository _checkInRepository;

  CheckInViewModel({required CheckInRepository checkInRepository})
    : _checkInRepository = checkInRepository;

  String? _missionId;
  String _searchQuery = '';
  List<CheckInPassenger> _passengers = [];
  List<CheckInPassenger> get passengers => _filteredPassengers;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isSubmitting = false;
  bool get isSubmitting => _isSubmitting;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  int get totalCount => _passengers.length;
  int get arrivedCount =>
      _passengers.where((p) => p.status == CheckInStatus.arrived).length;
  int get pendingCount => totalCount - arrivedCount;
  double get progress => totalCount > 0 ? arrivedCount / totalCount : 0;

  List<CheckInPassenger> get _filteredPassengers {
    if (_searchQuery.isEmpty) return _passengers;
    final query = _searchQuery.toLowerCase();
    return _passengers.where((p) {
      return p.name.toLowerCase().contains(query) ||
          p.idNumber.toLowerCase().contains(query);
    }).toList();
  }

  Future<void> loadPassengers(String missionId) async {
    _missionId = missionId;
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _checkInRepository.getPassengersByMission(missionId);

    switch (result) {
      case Ok<CheckInPassengerList>():
        _passengers = result.value.passengers;
      case Error<CheckInPassengerList>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> refreshPassengers() async {
    if (_missionId == null) return;
    await loadPassengers(_missionId!);
  }

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  Future<void> togglePassengerStatus(String passengerId) async {
    final index = _passengers.indexWhere((p) => p.id == passengerId);
    if (index == -1) return;

    final passenger = _passengers[index];
    final newStatus = passenger.isArrived
        ? CheckInStatus.pending
        : CheckInStatus.arrived;

    _passengers[index] = passenger.copyWith(status: newStatus);
    notifyListeners();

    final result = await _checkInRepository.updatePassengerStatus(
      passengerId: passengerId,
      status: newStatus,
    );

    switch (result) {
      case Ok<CheckInPassenger>():
        _passengers[index] = result.value;
      case Error<CheckInPassenger>():
        _passengers[index] = passenger;
        _errorMessage = 'Cập nhật trạng thái thất bại';
    }

    notifyListeners();
  }

  Future<bool> completeCheckIn() async {
    if (_missionId == null) return false;

    _isSubmitting = true;
    _errorMessage = null;
    notifyListeners();

    final arrivedIds = _passengers
        .where((p) => p.status == CheckInStatus.arrived)
        .map((p) => p.id)
        .toList();

    final result = await _checkInRepository.completeCheckIn(
      missionId: _missionId!,
      arrivedPassengerIds: arrivedIds,
    );

    switch (result) {
      case Ok<bool>():
        _isSubmitting = false;
        notifyListeners();
        return true;
      case Error<bool>():
        _errorMessage = result.error.toString();
        _isSubmitting = false;
        notifyListeners();
        return false;
    }
  }

  void clearError() {
    _errorMessage = null;
    notifyListeners();
  }
}
