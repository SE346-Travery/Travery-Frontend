import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class RefundSummaryCard extends StatelessWidget {
  final double originalPrice;
  final double refundAmount;
  final int refundPercentage;

  const RefundSummaryCard({
    super.key,
    required this.originalPrice,
    required this.refundAmount,
    required this.refundPercentage,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(0.06),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tổng hoàn trả dự kiến',
                style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w500, color: AppColors.textSecondary, letterSpacing: 0.5),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Hoàn $refundPercentage%',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.primary),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                formatter.format(refundAmount),
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: AppColors.primary, letterSpacing: -0.5),
              ),
              const SizedBox(width: 8),
              Text(
                '/ ${formatter.format(originalPrice)}',
                style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w500, color: AppColors.textSecondary.withOpacity(0.6)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(height: 1, color: AppColors.inputBorder.withOpacity(0.5)),
          const SizedBox(height: 16),
          _buildRow('Giá trị đơn hàng', formatter.format(originalPrice)),
          const SizedBox(height: 12),
          Container(height: 1, color: AppColors.inputBorder.withOpacity(0.5)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Số tiền nhận lại', style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
              Text(formatter.format(refundAmount), style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w800, color: AppColors.primary)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String label, String value, {Color? valueColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontSize: AppTextTheme.bodyMedium, color: AppColors.textSecondary)),
        Text(
          value,
          style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w600, color: valueColor ?? AppColors.textPrimary),
        ),
      ],
    );
  }
}
