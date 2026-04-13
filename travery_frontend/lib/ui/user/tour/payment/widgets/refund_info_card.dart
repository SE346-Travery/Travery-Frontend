import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class RefundInfoCard extends StatelessWidget {
  final String bookingId;
  final double refundAmount;
  final String paymentMethod;
  final String processingTime;

  const RefundInfoCard({
    super.key,
    required this.bookingId,
    required this.refundAmount,
    required this.paymentMethod,
    this.processingTime = '3-5 ngày làm việc',
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(0.06),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.account_balance_wallet_outlined, color: AppColors.primary, size: 20),
              ),
              const SizedBox(width: 10),
              Text(
                'Thông tin hoàn tiền',
                style: TextStyle(
                  fontSize: AppTextTheme.labelMedium,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          _buildRow('Mã đặt chỗ', bookingId),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: AppColors.inputBorder.withOpacity(0.3)),
                bottom: BorderSide(color: AppColors.inputBorder.withOpacity(0.3)),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Số tiền hoàn lại',
                  style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w500, color: AppColors.textSecondary),
                ),
                Text(
                  formatter.format(refundAmount),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: AppColors.primary,
                    letterSpacing: -0.5,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildPaymentMethodRow(paymentMethod),
          const SizedBox(height: 12),
          _buildRow('Thời gian xử lý dự kiến', processingTime),
        ],
      ),
    );
  }

  Widget _buildRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w500, color: AppColors.textSecondary),
        ),
        Text(
          value,
          style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodRow(String method) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Phương thức hoàn tiền',
          style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w500, color: AppColors.textSecondary),
        ),
        Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xFFe0f2fe),
                borderRadius: BorderRadius.circular(6),
              ),
              child: const Icon(Icons.qr_code, size: 14, color: AppColors.primary),
            ),
            const SizedBox(width: 8),
            Text(
              method,
              style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
            ),
          ],
        ),
      ],
    );
  }
}
