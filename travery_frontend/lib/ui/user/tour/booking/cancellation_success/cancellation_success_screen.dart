import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/widgets/app_bar_widget.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancellation_success/view_models/cancellation_success_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancellation_success/widgets/success_hero.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancellation_success/widgets/refund_detail_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/cancellation_success/widgets/info_note.dart';

class CancellationSuccessScreen extends StatelessWidget {
  const CancellationSuccessScreen({
    super.key,
    required this.bookingId,
    required this.viewModel,
  });

  final String bookingId;
  final CancellationSuccessViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: viewModel..loadSuccessData(bookingId),
      child: const _CancellationSuccessScreenContent(),
    );
  }
}

class _CancellationSuccessScreenContent extends StatelessWidget {
  const _CancellationSuccessScreenContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarWidget(title: 'Thông báo', showBackButton: true),
      body: Consumer<CancellationSuccessViewModel>(
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

          final data = viewModel.successData;
          if (data == null) {
            return const Center(child: Text('Không tìm thấy thông tin'));
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 40),
                SuccessHero(
                  title: 'Hủy tour thành công!',
                  description:
                      'Yêu cầu hủy tour của bạn đã được xác nhận. Chúng tôi rất tiếc khi không thể đồng hành cùng bạn trong chuyến đi này.',
                ),
                const SizedBox(height: 40),
                RefundDetailCard(
                  bookingId: data.bookingId,
                  refundAmount: viewModel.formattedRefundAmount,
                  paymentMethod: data.paymentMethod,
                  processingTime: viewModel.processingTimeText,
                ),
                const SizedBox(height: 24),
                const InfoNote(
                  message:
                      'Tiền sẽ được hoàn về đúng phương thức thanh toán bạn đã sử dụng.',
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton.icon(
                    onPressed: () => context.go(Routes.home),
                    icon: const Icon(Icons.home_rounded, size: 20),
                    label: const Text('Về trang chủ'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      shadowColor: AppColors.primary.withValues(alpha: 0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          );
        },
      ),
    );
  }
}
