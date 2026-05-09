import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/widgets/app_bar_widget.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancel_confirmation/view_models/cancel_confirmation_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancel_confirmation/widgets/warning_banner.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancel_confirmation/widgets/refund_summary_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancel_confirmation/widgets/action_button.dart';

import 'widgets/cancel_reason_input.dart';

class CancelConfirmationScreen extends StatelessWidget {
  const CancelConfirmationScreen({
    super.key,
    required this.bookingId,
    required this.viewModel,
  });

  final String bookingId;
  final CancelConfirmationViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: viewModel..loadCancelData(bookingId),
      child: _CancelConfirmationScreenContent(bookingId: bookingId),
    );
  }
}

class _CancelConfirmationScreenContent extends StatefulWidget {
  const _CancelConfirmationScreenContent({required this.bookingId});

  final String bookingId;

  @override
  State<_CancelConfirmationScreenContent> createState() =>
      _CancelConfirmationScreenContentState();
}

class _CancelConfirmationScreenContentState
    extends State<_CancelConfirmationScreenContent> {
  final TextEditingController _reasonController = TextEditingController();

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarWidget(title: 'Xác nhận hủy', showBackButton: true),
      body: Consumer<CancelConfirmationViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          if (viewModel.errorMessage != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                    color: AppColors.error,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    viewModel.errorMessage!,
                    style: const TextStyle(color: AppColors.textSecondary),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }

          final cancelData = viewModel.cancelData;
          if (cancelData == null) {
            return const Center(
              child: Text('Không tìm thấy thông tin đặt chỗ'),
            );
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WarningBanner(
                  title: 'Thao tác này không thể hoàn tác',
                  subtitle:
                      'Vui lòng xem kỹ thông tin hoàn tiền và chính sách trước khi xác nhận. Sau khi hủy, đặt chỗ của bạn sẽ bị xóa khỏi hệ thống.',
                ),
                const SizedBox(height: 24),
                RefundSummaryCard(
                  totalAmount: viewModel.formattedTotalAmount,
                  refundAmount: viewModel.formattedRefundAmount,
                ),
                const SizedBox(height: 32),
                CancelReasonInput(
                  controller: _reasonController,
                  onChanged: (value) => viewModel.updateCancelReason(value),
                ),
                const SizedBox(height: 40),
                ActionButton(
                  text: 'Xác nhận hủy',
                  onPressed: () => _handleConfirmCancel(context, viewModel),
                  isDanger: true,
                  isLoading: viewModel.isSubmitting,
                ),
                const SizedBox(height: 12),
                ActionButton(
                  text: 'Quay lại',
                  onPressed: () => Navigator.pop(context),
                  isGhost: true,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _handleConfirmCancel(
    BuildContext context,
    CancelConfirmationViewModel viewModel,
  ) async {
    final success = await viewModel.submitCancellation(widget.bookingId);

    if (!context.mounted) return;

    if (success) {
      context.pushReplacement('/booking/${widget.bookingId}/cancel/success');
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(viewModel.submitErrorMessage ?? 'Đã xảy ra lỗi'),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }
}
