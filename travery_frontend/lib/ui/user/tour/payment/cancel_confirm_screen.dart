import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/themes/app_colors.dart';

import 'widgets/cancel_warning_card.dart';
import 'widgets/refund_summary_card.dart';
import 'widgets/cancel_reason_input.dart';
import 'widgets/cancel_confirm_buttons.dart';
import 'widgets/cancel_success_screen.dart';
import '../../tour/widgets/app_bar.dart';

class CancelConfirmScreen extends StatefulWidget {
  final String bookingId;
  final String tourName;
  final double originalPrice;
  final double refundAmount;
  final int refundPercentage;
  final String paymentMethod;
  final VoidCallback? onCancelConfirmed;

  const CancelConfirmScreen({
    super.key,
    required this.bookingId,
    required this.tourName,
    required this.originalPrice,
    required this.refundAmount,
    required this.refundPercentage,
    this.paymentMethod = 'Ví VNPay',
    this.onCancelConfirmed,
  });

  @override
  State<CancelConfirmScreen> createState() => _CancelConfirmScreenState();
}

class _CancelConfirmScreenState extends State<CancelConfirmScreen> {
  final _reasonController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  Future<void> _handleConfirmCancel() async {
    setState(() => _isLoading = true);
    await Future.delayed(const Duration(seconds: 1));

    if (mounted) {
      setState(() => _isLoading = false);
      widget.onCancelConfirmed?.call();
      context.pushReplacement('/cancel-success', extra: {
        'bookingId': widget.bookingId,
        'refundAmount': widget.refundAmount,
        'refundPercentage': widget.refundPercentage,
        'paymentMethod': widget.paymentMethod,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarDefault(title: 'Xác nhận hủy', showBack: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const CancelWarningCard(),
            const SizedBox(height: 24),
            RefundSummaryCard(
              originalPrice: widget.originalPrice,
              refundAmount: widget.refundAmount,
              refundPercentage: widget.refundPercentage,
            ),
            const SizedBox(height: 24),
            CancelReasonInput(
              controller: _reasonController,
              hintText: 'Chia sẻ lý do để chúng tôi cải thiện dịch vụ tốt hơn...',
            ),
            const SizedBox(height: 32),
            CancelConfirmButtons(
              onConfirm: _handleConfirmCancel,
              onBack: () => context.pop(),
              isLoading: _isLoading,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
