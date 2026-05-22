import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:travery_frontend/data/models/tour/tour_search_item.dart';
import 'package:travery_frontend/data/models/tour/tour_search_response.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

enum TourSortType { priceAsc, priceDesc }

class TourListViewModel extends ChangeNotifier {
  TourListViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  List<TourSearchItem> _allTours = [];
  List<TourSearchItem> _filteredTours = [];
  List<TourSearchItem> get tours => _filteredTours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  DateTime? _selectedDate;
  DateTime? get selectedDate => _selectedDate;

  RangeValues _priceRange = const RangeValues(0, 50000000);
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

    final result = await _tourService.searchTours(
      minPrice: _priceRange.start,
      maxPrice: _priceRange.end,
      startDate: _selectedDate,
    );

    switch (result) {
      case Ok<TourSearchPageData>():
        _allTours = result.value.content;
        _applyFiltersAndSort();
      case Error<TourSearchPageData>():
        _errorMessage = result.error.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  void _applyFiltersAndSort() {
    _filteredTours = List.from(_allTours);

    _filteredTours = _filteredTours.where((tour) {
      final priceOk =
          tour.price >= _priceRange.start && tour.price <= _priceRange.end;
      return priceOk;
    }).toList();

    switch (_sortType) {
      case TourSortType.priceAsc:
        _filteredTours.sort((a, b) => a.price.compareTo(b.price));
        break;
      case TourSortType.priceDesc:
        _filteredTours.sort((a, b) => b.price.compareTo(a.price));
        break;
    }
  }
}
