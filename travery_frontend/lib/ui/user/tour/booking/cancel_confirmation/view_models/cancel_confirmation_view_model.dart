import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/cancel_confirmation/cancel_confirmation_model.dart';
import 'package:travery_frontend/data/services/cancel/cancel_service.dart';
import 'package:travery_frontend/utils/format_utils.dart';

import '../../../../../../utils/core_result.dart';

class CancelConfirmationViewModel extends ChangeNotifier {
  final CancelService _cancelService;

  CancelConfirmationViewModel({required CancelService cancelService})
    : _cancelService = cancelService;

  CancelConfirmationModel? _cancelData;
  bool _isLoading = false;
  bool _isSubmitting = false;
  String? _errorMessage;
  String? _submitErrorMessage;
  String _cancelReason = '';

  CancelConfirmationModel? get cancelData => _cancelData;
  bool get isLoading => _isLoading;
  bool get isSubmitting => _isSubmitting;
  String? get errorMessage => _errorMessage;
  String? get submitErrorMessage => _submitErrorMessage;
  String get cancelReason => _cancelReason;

  String get formattedTotalAmount => _cancelData != null
      ? FormatUtils.formatCurrency(_cancelData!.totalAmount)
      : '0 đ';

  String get formattedRefundAmount => _cancelData != null
      ? FormatUtils.formatCurrency(_cancelData!.refundAmount)
      : '0 đ';

  Future<void> loadCancelData(String bookingId) async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await _cancelService.getCancelConfirmation(bookingId);

    switch (result) {
      case Ok<CancelConfirmationModel?>():
        _cancelData = result.value;
      // ignore: pattern_never_matches_value_type
      case Error<CancelConfirmationModel?>():
        _errorMessage = 'Không thể tải thông tin. Vui lòng thử lại.';
    }

    _isLoading = false;
    notifyListeners();
  }

  void updateCancelReason(String reason) {
    _cancelReason = reason;
    notifyListeners();
  }

  Future<bool> submitCancellation(String bookingId) async {
    _isSubmitting = true;
    _submitErrorMessage = null;
    notifyListeners();

    final result = await _cancelService.submitCancellation(
      bookingId,
      _cancelReason.isNotEmpty ? _cancelReason : null,
    );

    bool success = false;
    switch (result) {
      case Ok<bool>():
        success = true;
      case Error<bool>():
        _submitErrorMessage = 'Không thể hủy tour. Vui lòng thử lại.';
    }

    _isSubmitting = false;
    notifyListeners();

    return success;
  }
}
