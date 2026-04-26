import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/view_models/payment_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/widgets/payment_timer.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/widgets/payment_order_summary.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/widgets/payment_qr_section.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/utils/format_utils.dart';

import '../../../../core/widgets/app_bar_widget.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          PaymentViewModel(bookingViewModel: context.read<BookingViewModel>()),
      child: const _PaymentScreenContent(),
    );
  }
}

class _PaymentScreenContent extends StatefulWidget {
  const _PaymentScreenContent();

  @override
  State<_PaymentScreenContent> createState() => _PaymentScreenContentState();
}

class _PaymentScreenContentState extends State<_PaymentScreenContent> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initPayment();
    });
  }

  void _initPayment() {
    final viewModel = context.read<PaymentViewModel>();
    viewModel.startPayment(
      onSuccess: () => _navigateToSuccess(context),
      onExpired: () => _showExpiredDialog(context),
      onFailed: () => _navigateBack(context),
    );
  }

  void _navigateToSuccess(BuildContext context) {
    context.pushReplacement(Routes.bookingSuccess);
  }

  void _navigateBack(BuildContext context) {
    context.go(Routes.home);
  }

  void _showExpiredDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('Hết thời gian thanh toán'),
        content: const Text('Phiên thanh toán đã hết hạn. Vui lòng thử lại.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.go(Routes.home);
            },
            child: const Text('Đóng'),
          ),
        ],
      ),
    );
  }

  void _showCancelDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xác nhận hủy'),
        content: const Text('Bạn có chắc muốn hủy thanh toán không?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Không'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<PaymentViewModel>().cancelPayment();
              context.go(Routes.home);
            },
            child: const Text('Có, hủy'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          _showCancelDialog(context);
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: const AppBarWidget(title: 'Thanh toán'),
        body: Consumer<PaymentViewModel>(
          builder: (context, viewModel, child) {
            final tour = viewModel.tour;
            if (tour == null) {
              return const Center(child: Text('Không có thông tin tour'));
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  PaymentTimer(
                    minutes: viewModel.remainingSeconds ~/ 60,
                    seconds: viewModel.remainingSeconds % 60,
                  ),
                  const SizedBox(height: 16),
                  PaymentOrderSummary(
                    tourCode: tour.id ?? 'N/A',
                    amount: FormatUtils.formatCurrency(viewModel.totalPrice),
                  ),
                  const SizedBox(height: 24),
                  PaymentQrSection(
                    qrCodeUrl: viewModel.qrCodeUrl,
                    status: viewModel.status,
                  ),
                  const SizedBox(height: 24),
                  _buildManualPaymentButton(context, viewModel),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildManualPaymentButton(
    BuildContext context,
    PaymentViewModel viewModel,
  ) {
    return TextButton(
      onPressed: () {
        viewModel.simulatePaymentSuccess();
      },
      child: const Text(
        '[Test] Simulate Payment Success',
        style: TextStyle(
          fontSize: 12,
          color: AppColors.link,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
