import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';
import '../../widgets/app_bar.dart';
import 'refund_info_card.dart';

class CancelSuccessScreen extends StatelessWidget {
  final String bookingId;
  final double refundAmount;
  final int refundPercentage;
  final String paymentMethod;
  final VoidCallback? onGoHome;

  const CancelSuccessScreen({
    super.key,
    required this.bookingId,
    required this.refundAmount,
    required this.refundPercentage,
    required this.paymentMethod,
    this.onGoHome,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarDefault(title: 'Thông báo', showBack: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 32),
            _buildSuccessHero(),
            const SizedBox(height: 32),
            RefundInfoCard(
              bookingId: bookingId,
              refundAmount: refundAmount,
              paymentMethod: paymentMethod,
            ),
            const SizedBox(height: 20),
            _buildNoteCard(),
            const SizedBox(height: 32),
            _buildHomeButton(context),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildSuccessHero() {
    return Column(
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary.withOpacity(0.05),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withOpacity(0.1),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: const Icon(Icons.check_circle, size: 48, color: AppColors.primary),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Hủy tour thành công!',
          style: TextStyle(
            fontSize: AppTextTheme.headlineLarge,
            fontWeight: FontWeight.w900,
            color: AppColors.textPrimary,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'Yêu cầu hủy tour của bạn đã được xác nhận. Chúng tôi rất tiếc khi không thể đồng hành cùng bạn trong chuyến đi này.',
            style: TextStyle(
              fontSize: AppTextTheme.bodyMedium,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget _buildNoteCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(12),
        border: const Border(
          left: BorderSide(color: AppColors.primary, width: 4),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.info_outline, color: AppColors.primary, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: AppTextTheme.bodySmall,
                  color: AppColors.textSecondary,
                  height: 1.4,
                ),
                children: const [
                  TextSpan(text: 'Lưu ý: ', style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(text: 'Tiền sẽ được hoàn về đúng phương thức thanh toán bạn đã sử dụng.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeButton(BuildContext context) {
    return GestureDetector(
      onTap: onGoHome ?? () => context.go('/home'),
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [AppColors.primary, Color(0xFF0070eb)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withOpacity(0.3),
              blurRadius: 16,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Về trang chủ', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white)),
            SizedBox(width: 8),
            Icon(Icons.home_outlined, size: 20, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
