import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/seed_models/booking_detail/booking_detail_model.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import '../../tour/widgets/app_bar.dart';
import 'widgets/booking_action_buttons.dart';
import 'widgets/booking_status_header.dart';
import 'widgets/cancellation_policy_card.dart';
import 'widgets/payment_summary_card.dart';
import 'widgets/refund_preview_alert.dart';


class BookingDetailScreen extends StatelessWidget {
  final BookingDetailModel booking;
  final VoidCallback? onContinue;
  final VoidCallback? onCancel;

  const BookingDetailScreen({
    super.key,
    required this.booking,
    this.onContinue,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarDefault(title: 'Chi tiết đặt chỗ', showBack: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            BookingStatusHeader(
              bookingId: booking.bookingId,
              tourName: booking.tourName,
              imageUrl: booking.tourImageUrl,
            ),
            const SizedBox(height: 24),
            PaymentSummaryCard(
              totalPrice: booking.totalPrice,
              paymentMethod: booking.paymentMethod,
            ),
            const SizedBox(height: 20),
            RefundPreviewAlert(
              refundPercentage:
                  booking.refundPolicy.tiers.first.refundPercentage,
              deadline: booking.refundPolicy.lastFreeCancellationDate,
              onTap: () => _showRefundPolicy(context),
            ),
            const SizedBox(height: 32),
            Text(
              'Chính sách hoàn tiền',
              style: TextStyle(
                fontSize: AppTextTheme.labelMedium,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 12),
            CancellationPolicyCard(
              tiers: booking.refundPolicy.tiers,
              onViewPolicy: () => _showRefundPolicy(context),
            ),
            const SizedBox(height: 32),
            BookingActionButtons(
              onContinue: onContinue ?? () => _onContinueJourney(context),
              onCancel: onCancel ?? () => _onCancelBooking(context),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void _showRefundPolicy(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) => Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: AppColors.inputBorder,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Chính sách hủy tour',
              style: TextStyle(
                fontSize: AppTextTheme.labelLarge,
                fontWeight: FontWeight.w700,
                color: AppColors.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Thời gian hoàn tiền có thể từ 3-7 ngày làm việc tùy thuộc vào phương thức thanh toán của bạn.',
              style: TextStyle(
                fontSize: AppTextTheme.bodyMedium,
                color: AppColors.textSecondary,
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  void _onContinueJourney(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Chuyến đi sắp tới!'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _onCancelBooking(BuildContext context) {
    final refundAmount = booking.totalPrice * 1;
    context.push('/cancel-booking', extra: {
      'bookingId': booking.bookingId,
      'tourName': booking.tourName,
      'originalPrice': booking.totalPrice,
      'refundAmount': refundAmount,
      'refundPercentage': 100,
      'paymentMethod': booking.paymentMethod ?? 'Ví VNPay',
    });
  }
}
