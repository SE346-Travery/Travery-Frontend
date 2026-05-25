import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/payment_result/view_models/payment_result_view_model.dart';

class PaymentResultScreen extends StatefulWidget {
  const PaymentResultScreen({
    super.key,
    required this.viewModel,
    this.txnRef,
    this.deeplinkStatus,
    this.responseCode,
    this.bookingId,
  });

  final PaymentResultViewModel viewModel;
  final String? txnRef;
  final String? deeplinkStatus;
  final String? responseCode;
  final String? bookingId;

  @override
  State<PaymentResultScreen> createState() => _PaymentResultScreenState();
}

class _PaymentResultScreenState extends State<PaymentResultScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.initState(
        txnRef: widget.txnRef,
        deeplinkStatus: widget.deeplinkStatus,
        responseCode: widget.responseCode,
        bookingId: widget.bookingId,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          context.go(Routes.home);
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFAFF),
        body: Consumer<PaymentResultViewModel>(
          builder: (context, vm, _) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),

                    // State-based content
                    _buildContent(vm),

                    const Spacer(),

                    // Action buttons
                    _buildActions(vm),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(PaymentResultViewModel vm) {
    switch (vm.state) {
      case PaymentConfirmState.confirming:
        return _ConfirmingUI(
          onCheck: () => vm.retryPolling(),
        );
      case PaymentConfirmState.confirmed:
        return _SuccessUI(
          booking: vm.bookingData,
        );
      case PaymentConfirmState.failed:
        return _FailedUI(
          message: vm.getErrorMessage(),
          txnRef: vm.state.toString(),
        );
      case PaymentConfirmState.processingTimeout:
        return _ProcessingUI(
          onRetry: () => vm.retryPolling(),
        );
    }
  }

  Widget _buildActions(PaymentResultViewModel vm) {
    switch (vm.state) {
      case PaymentConfirmState.confirming:
        return const SizedBox.shrink();

      case PaymentConfirmState.confirmed:
        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  context.go(
                    Routes.bookingDetail.replaceFirst(':id', vm.bookingData?.id ?? ''),
                    extra: {'bookingId': vm.bookingData?.id ?? ''},
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Text(
                  'Xem chi tiết đặt tour',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => context.go(Routes.home),
              child: const Text('Về trang chủ'),
            ),
          ],
        );

      case PaymentConfirmState.failed:
      case PaymentConfirmState.processingTimeout:
        return Column(
          children: [
            if (vm.state == PaymentConfirmState.processingTimeout)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => vm.retryPolling(),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Kiểm tra lại',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            if (vm.state == PaymentConfirmState.processingTimeout)
              const SizedBox(height: 12),
            TextButton(
              onPressed: () => context.go(Routes.home),
              child: const Text('Về trang chủ'),
            ),
          ],
        );

      case PaymentConfirmState.confirming:
        return const SizedBox.shrink();
    }
  }
}

class _ConfirmingUI extends StatelessWidget {
  const _ConfirmingUI({required this.onCheck});

  final VoidCallback onCheck;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: AppColors.primary.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: SizedBox(
              width: 48,
              height: 48,
              child: CircularProgressIndicator(
                strokeWidth: 3,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Đang xác nhận thanh toán...',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Vui lòng không tắt ứng dụng.\nHệ thống đang xác nhận với ngân hàng.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF414755),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _SuccessUI extends StatelessWidget {
  const _SuccessUI({required this.booking});

  final dynamic booking;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF10B981), Color(0xFF059669)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.check_circle,
            size: 56,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Thanh toán thành công!',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color(0xFF131B2E),
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Cảm ơn bạn đã đặt tour. Booking của bạn đã được xác nhận.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF414755),
              height: 1.5,
            ),
          ),
        ),
        if (booking != null) ...[
          const SizedBox(height: 32),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.06),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                _InfoItem(label: 'Mã đặt chỗ', value: '#${booking.id.substring(0, 8).toUpperCase()}'),
                const Divider(height: 24),
                _InfoItem(label: 'Tổng tiền', value: _formatPrice(booking.totalPrice)),
                const Divider(height: 24),
                _InfoItem(label: 'Trạng thái', value: 'Đã thanh toán'),
              ],
            ),
          ),
        ],
      ],
    );
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _FailedUI extends StatelessWidget {
  const _FailedUI({required this.message, required this.txnRef});

  final String message;
  final String txnRef;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: Colors.red.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.cancel,
            size: 56,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Thanh toán thất bại',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color(0xFF131B2E),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: Color(0xFF414755),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _ProcessingUI extends StatelessWidget {
  const _ProcessingUI({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: Colors.orange.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.hourglass_empty,
            size: 56,
            color: Colors.orange,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          'Thanh toán đang xử lý',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w800,
            color: Color(0xFF131B2E),
          ),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            'Hệ thống chưa xác nhận được thanh toán của bạn. Vui lòng kiểm tra lại sau vài phút.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFF414755),
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFF414755),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
      ],
    );
  }
}
