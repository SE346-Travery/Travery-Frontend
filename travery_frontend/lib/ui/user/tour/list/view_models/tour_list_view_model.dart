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

  String _keyword = '';
  String? _destinationId;
  int _currentPage = 0;
  static const int _pageSize = 20;

  Future<void> loadTours({
    String? keyword,
    String? destinationId,
    bool refresh = false,
  }) async {
    if (refresh) {
      _currentPage = 0;
      _tours = [];
      _hasMore = true;
    }

    _keyword = keyword ?? '';
    _destinationId = destinationId;

    if (_isLoading) return;

    _isLoading = _currentPage == 0;
    _error = null;
    notifyListeners();

    final result = await _tourService.searchTours(
      keyword: _keyword.isNotEmpty ? _keyword : null,
      destinationId: _destinationId,
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
