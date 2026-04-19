import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/seed_models/booking_payment/booking_payment_model.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'widgets/order_summary_card.dart';
import 'widgets/qr_view.dart';
import 'widgets/reservation_timer.dart';
import 'booking_success_screen.dart';

class VNPayPaymentScreen extends StatefulWidget {
  final BookingPaymentModel booking;

  const VNPayPaymentScreen({super.key, required this.booking});

  @override
  State<VNPayPaymentScreen> createState() => _VNPayPaymentScreenState();
}

class _VNPayPaymentScreenState extends State<VNPayPaymentScreen> {
  Timer? _autoRedirectTimer;
  bool _isPaymentComplete = false;

  @override
  void initState() {
    super.initState();
    _startAutoRedirectTimer();
  }

  @override
  void dispose() {
    _autoRedirectTimer?.cancel();
    super.dispose();
  }

  void _startAutoRedirectTimer() {
    _autoRedirectTimer = Timer(const Duration(seconds: 10), () {
      if (mounted && !_isPaymentComplete) {
        _navigateToSuccess();
      }
    });
  }

  void _navigateToSuccess() {
    if (_isPaymentComplete) return;
    _isPaymentComplete = true;
    _autoRedirectTimer?.cancel();

    final completedBooking = widget.booking.copyWith(status: PaymentStatus.completed);
    context.pushReplacement('/payment/success', extra: completedBooking);
  }

  void _onTimerExpired() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Row(
          children: [
            Icon(Icons.warning_amber, color: AppColors.error),
            SizedBox(width: 8),
            Text('Hết hạn thanh toán'),
          ],
        ),
        content: const Text('Thời gian giữ chỗ đã hết. Bạn có muốn tiếp tục thanh toán không?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              context.pop();
            },
            child: const Text('Hủy'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {});
              _startAutoRedirectTimer();
            },
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
            child: const Text('Tiếp tục', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 16),
            ReservationTimer(totalSeconds: widget.booking.reservationMinutes * 60, onExpired: _onTimerExpired),
            const SizedBox(height: 24),
            OrderSummaryCard(tourName: widget.booking.tourName, amount: widget.booking.totalPrice),
            const SizedBox(height: 32),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(color: AppColors.warning.withOpacity(0.1), borderRadius: BorderRadius.circular(20)),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.sync, size: 14, color: AppColors.textPrimary),
                      SizedBox(width: 6),
                      Text('Đang chờ thanh toán', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.textPrimary, letterSpacing: 0.5)),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const QRView(),
                const SizedBox(height: 16),
                Text('Thanh toán qua VNPay', style: TextStyle(fontSize: AppTextTheme.bodyMedium, color: AppColors.textSecondary)),
                const SizedBox(height: 8),
                Text('Quét mã QR bằng ứng dụng VNPay hoặc ngân hàng', style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textHint), textAlign: TextAlign.center),
              ],
            ),
            const SizedBox(height: 32),
            OutlinedButton.icon(
              onPressed: _navigateToSuccess,
              icon: const Icon(Icons.check_circle_outline),
              label: const Text('Demo: Xác nhận thanh toán thành công'),
              style: OutlinedButton.styleFrom(foregroundColor: AppColors.success, side: const BorderSide(color: AppColors.success)),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.surface.withOpacity(0.8),
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(onPressed: () => context.pop(), icon: const Icon(Icons.arrow_back_ios_new, size: 18, color: AppColors.primary)),
      title: Text('Thanh toán VNPay', style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.bold, fontSize: AppTextTheme.labelMedium)),
      centerTitle: true,
    );
  }
}
