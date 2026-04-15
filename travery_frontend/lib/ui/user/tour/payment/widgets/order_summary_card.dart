import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class OrderSummaryCard extends StatelessWidget {
  final String tourName;
  final double amount;
  final String? logoUrl;

  const OrderSummaryCard({
    super.key,
    required this.tourName,
    required this.amount,
    this.logoUrl,
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
          BoxShadow(color: AppColors.textPrimary.withOpacity(0.06), blurRadius: 32, offset: const Offset(0, 12)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tên tour', style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, fontWeight: FontWeight.w500)),
              const SizedBox(height: 4),
              Text(tourName, style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(color: AppColors.inputBorder, thickness: 0.5),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Số tiền thanh toán', style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4),
                  Text(formatter.format(amount), style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w800, color: AppColors.primary, letterSpacing: -0.5)),
                ],
              ),
              if (logoUrl != null)
                Container(height: 28, margin: const EdgeInsets.only(bottom: 2), child: Image.network(logoUrl!, fit: BoxFit.contain, errorBuilder: (_, __, ___) => _buildVNPayPlaceholder()))
              else
                _buildVNPayPlaceholder(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVNPayPlaceholder() {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
      child: Text('VNPay', style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.bold, color: AppColors.primary)),
    );
  }
}
