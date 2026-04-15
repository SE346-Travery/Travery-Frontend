import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../data/seed_models/booking_detail/booking_detail_model.dart';
import '../../../../data/seed_models/booking_payment/booking_payment_model.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'widgets/booking_detail_card.dart';
import '../widgets/app_bar.dart';

class BookingSuccessScreen extends StatelessWidget {
  final BookingPaymentModel booking;
  final VoidCallback? onViewBooking;
  final VoidCallback? onGoHome;

  const BookingSuccessScreen({
    super.key,
    required this.booking,
    this.onViewBooking,
    this.onGoHome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: const AppBarDefault(title: 'Thanh toán thành công'),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 24),
              _buildSuccessHeader(),
              const SizedBox(height: 32),
              _buildTitleSection(),
              const SizedBox(height: 40),
              BookingDetailCard(booking: booking),
              const SizedBox(height: 32),
              _buildActionButtons(context),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessHeader() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: AppColors.success,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: AppColors.success.withOpacity(0.3),
                blurRadius: 32,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: const Icon(Icons.check_circle, size: 56, color: Colors.white),
        ),
        Positioned(
          top: -8,
          right: -8,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.inputBackground,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: const Icon(Icons.celebration, size: 16, color: AppColors.primary),
          ),
        ),
      ],
    );
  }

  Widget _buildTitleSection() {
    return Column(
      children: [
        Text(
          'Đặt tour thành công!',
          style: TextStyle(
            fontSize: AppTextTheme.headlineLarge,
            fontWeight: FontWeight.w900,
            color: AppColors.textPrimary,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Cảm ơn bạn đã tin tưởng Travery. Hành trình của bạn đã sẵn sàng bắt đầu.',
          style: TextStyle(fontSize: AppTextTheme.bodyMedium, color: AppColors.textSecondary, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onViewBooking ?? () => _navigateToBooking(context),
          child: Container(
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.3),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Xem booking', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(width: 8),
                Icon(Icons.arrow_forward, size: 20, color: Colors.white),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: onGoHome ?? () => _navigateToHome(context),
          child: Container(
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(color: AppColors.inputBackground, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text('Về trang chủ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.primary)),
            ),
          ),
        ),
      ],
    );
  }

  void _navigateToBooking(BuildContext context) {
    final detailBooking = BookingDetailModel(
      bookingId: booking.bookingId,
      tourName: booking.tourName,
      totalPrice: booking.totalPrice,
      departureDate: booking.departureDate,
      guestCount: booking.adultCount + booking.childCount,
      status: 'confirmed',
      refundPolicy: RefundPolicy(
        tiers: [
          RefundTier(
            label: 'Trước ngày khởi hành',
            description: 'Hoàn tiền 100% nếu hủy trước ngày khởi hành',
            refundPercentage: 100,
          ),
          RefundTier(
            label: 'Ngày khởi hành',
            description: 'Không hoàn tiền nếu hủy vào ngày khởi hành',
            refundPercentage: 0,
          ),
        ],
        lastFreeCancellationDate: DateTime.now().add(const Duration(days: 7)),
      ),
    );

    context.push('/booking/${booking.bookingId}', extra: detailBooking);
  }

  void _navigateToHome(BuildContext context) {
    debugPrint('Navigate to home');
    context.go('/home');
  }
}
