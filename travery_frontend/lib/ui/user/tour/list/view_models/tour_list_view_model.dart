import 'package:flutter/foundation.dart';
import 'package:travery_frontend/data/models/tour/tour_search_item.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/utils/core_result.dart';

class TourListViewModel extends ChangeNotifier {
  TourListViewModel({required TourService tourService})
    : _tourService = tourService;

  final TourService _tourService;

  List<TourSearchItem> _tours = [];
  List<TourSearchItem> get tours => _tours;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  bool _isLoadingMore = false;
  bool get isLoadingMore => _isLoadingMore;

  bool _hasMore = true;
  bool get hasMore => _hasMore;

  String? _error;
  String? get error => _error;

  // Filter state
  String _keyword = '';
  String? _destinationId;
  double? _minPrice;
  double? _maxPrice;
  int? _minRating;
  DateTime? _startDate;
  int _currentPage = 0;
  static const int _pageSize = 20;

  // Getters for filter state
  String get keyword => _keyword;
  String? get destinationId => _destinationId;
  double? get minPrice => _minPrice;
  double? get maxPrice => _maxPrice;
  int? get minRating => _minRating;
  DateTime? get startDate => _startDate;

  bool get hasActiveFilters =>
      _destinationId != null ||
      _minPrice != null ||
      _maxPrice != null ||
      _minRating != null ||
      _startDate != null;

  void setKeyword(String value) {
    _keyword = value;
    notifyListeners();
  }

  void setFilters({
    String? destinationId,
    double? minPrice,
    double? maxPrice,
    int? minRating,
    DateTime? startDate,
    bool clearDestinationId = false,
    bool clearMinPrice = false,
    bool clearMaxPrice = false,
    bool clearMinRating = false,
    bool clearStartDate = false,
  }) {
    _destinationId = clearDestinationId
        ? null
        : (destinationId ?? _destinationId);
    _minPrice = clearMinPrice ? null : (minPrice ?? _minPrice);
    _maxPrice = clearMaxPrice ? null : (maxPrice ?? _maxPrice);
    _minRating = clearMinRating ? null : (minRating ?? _minRating);
    _startDate = clearStartDate ? null : (startDate ?? _startDate);
    notifyListeners();
  }

  void clearAllFilters() {
    _destinationId = null;
    _minPrice = null;
    _maxPrice = null;
    _minRating = null;
    _startDate = null;
    notifyListeners();
  }

  Future<void> loadTours({
    String? keyword,
    String? destinationId,
    double? minPrice,
    double? maxPrice,
    int? minRating,
    DateTime? startDate,
    bool refresh = false,
  }) async {
    if (refresh) {
      _currentPage = 0;
      _tours = [];
      _hasMore = true;
    }

    _keyword = keyword ?? _keyword;
    _destinationId = destinationId ?? _destinationId;
    _minPrice = minPrice ?? _minPrice;
    _maxPrice = maxPrice ?? _maxPrice;
    _minRating = minRating ?? _minRating;
    _startDate = startDate ?? _startDate;

    if (_isLoading) return;

    _isLoading = _currentPage == 0;
    _error = null;
    notifyListeners();

    final result = await _tourService.searchTours(
      keyword: _keyword.isNotEmpty ? _keyword : null,
      destinationId: _destinationId,
      minPrice: _minPrice,
      maxPrice: _maxPrice,
      minRating: _minRating,
      startDate: _startDate,
      page: _currentPage,
      size: _pageSize,
    );

    switch (result) {
      case Ok(value: final data):
        _tours = data.content;
        _hasMore = _tours.length >= _pageSize;
      case Error(error: final e):
        _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    notifyListeners();

    _currentPage++;
    final result = await _tourService.searchTours(
      keyword: _keyword.isNotEmpty ? _keyword : null,
      destinationId: _destinationId,
      minPrice: _minPrice,
      maxPrice: _maxPrice,
      minRating: _minRating,
      startDate: _startDate,
      page: _currentPage,
      size: _pageSize,
    );

    switch (result) {
      case Ok(value: final data):
        _tours.addAll(data.content);
        _hasMore = data.content.length >= _pageSize;
      case Error(error: final e):
        _currentPage--;
        _error = e.toString();
    }

    _isLoadingMore = false;
    notifyListeners();
  }
}
