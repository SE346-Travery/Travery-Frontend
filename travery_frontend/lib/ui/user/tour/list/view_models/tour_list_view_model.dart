import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

enum TourSortType { priceAsc, priceDesc }

class TourListViewModel extends ChangeNotifier {
  final TourService _tourService;

  TourListViewModel({required TourService tourService})
    : _tourService = tourService;

  List<Tour> _allTours = [];
  List<Tour> _filteredTours = [];
  List<Tour> get tours => _filteredTours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;

  RangeValues _priceRange = const RangeValues(0, 10000000);
  RangeValues get priceRange => _priceRange;

  TourSortType _sortType = TourSortType.priceDesc;
  TourSortType get sortType => _sortType;

  String get sortLabel {
    switch (_sortType) {
      case TourSortType.priceAsc:
        return 'Giá: Tăng dần';
      case TourSortType.priceDesc:
        return 'Giá: Giảm dần';
    }
  }

  void setDateFilter(DateTime? date) {
    _selectedDate = date;
    _applyFiltersAndSort();
    notifyListeners();
  }

  void setPriceRange(RangeValues range) {
    _priceRange = range;
    _applyFiltersAndSort();
    notifyListeners();
  }

  void toggleSort() {
    _sortType = _sortType == TourSortType.priceAsc
        ? TourSortType.priceDesc
        : TourSortType.priceAsc;
    _applyFiltersAndSort();
    notifyListeners();
  }

  void setSortType(TourSortType type) {
    _sortType = type;
    _applyFiltersAndSort();
    notifyListeners();
  }

  Future<void> loadTours() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _tourService.getTours();

    switch (result) {
      case Ok<List<Tour>>():
        _allTours = result.value;
        _applyFiltersAndSort();
      case Error<List<Tour>>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  void _applyFiltersAndSort() {
    _filteredTours = List.from(_allTours);

    _filteredTours = _filteredTours.where((tour) {
      final priceOk =
          tour.pricePerAdult >= _priceRange.start &&
          tour.pricePerAdult <= _priceRange.end;

      bool dateOk = true;
      if (_selectedDate != null && tour.instances != null) {
        dateOk = tour.instances!.any(
          (instance) =>
              instance.startDate.year == _selectedDate!.year &&
              instance.startDate.month == _selectedDate!.month &&
              instance.startDate.day == _selectedDate!.day,
        );
      }

      return priceOk && dateOk;
    }).toList();

    switch (_sortType) {
      case TourSortType.priceAsc:
        _filteredTours.sort(
          (a, b) => a.pricePerAdult.compareTo(b.pricePerAdult),
        );
        break;
      case TourSortType.priceDesc:
        _filteredTours.sort(
          (a, b) => b.pricePerAdult.compareTo(a.pricePerAdult),
        );
        break;
    }
  }
}
