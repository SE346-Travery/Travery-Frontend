import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class PaymentSummaryCard extends StatelessWidget {
  final double totalPrice;
  final String? paymentMethod;
  final IconData icon;

  const PaymentSummaryCard({
    super.key,
    required this.totalPrice,
    this.paymentMethod,
    this.icon = Icons.payments_outlined,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

    return Container(
      padding: const EdgeInsets.all(20),
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
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, color: AppColors.primary, size: 24),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tổng thanh toán',
                  style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 4),
                Text(
                  formatter.format(totalPrice),
                  style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w800, color: AppColors.textPrimary, letterSpacing: -0.3),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
