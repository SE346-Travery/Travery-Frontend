import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/cancellation_success/cancellation_success_model.dart';
import 'package:travery_frontend/data/services/cancellation/cancellation_service.dart';
import 'package:travery_frontend/utils/format_utils.dart';

import '../../../../../../utils/core_result.dart';

class CancellationSuccessViewModel extends ChangeNotifier {
  final CancellationService _cancellationService;

  CancellationSuccessViewModel({
    required CancellationService cancellationService,
  }) : _cancellationService = cancellationService;

  CancellationSuccessModel? _successData;
  bool _isLoading = false;
  String? _errorMessage;

  CancellationSuccessModel? get successData => _successData;
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  String get formattedRefundAmount => _successData != null
      ? FormatUtils.formatCurrency(_successData!.refundAmount)
      : '0 đ';

  String get processingTimeText => _successData != null
      ? '${_successData!.processingDays} ngày làm việc'
      : '';

  Future<void> loadSuccessData(String bookingId) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _cancellationService.getCancellationSuccess(bookingId);

    switch (result) {
      case Ok<CancellationSuccessModel?>():
        _successData = result.value;
      // ignore: pattern_never_matches_value_type
      case Error<CancellationSuccessModel?>():
        _errorMessage = 'Không thể tải thông tin. Vui lòng thử lại.';
    }

    _isLoading = false;
    notifyListeners();
  }
}
