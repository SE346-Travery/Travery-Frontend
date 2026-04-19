import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../data/seed_models/booking_detail/booking_detail_model.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class CancellationPolicyCard extends StatelessWidget {
  final List<RefundTier> tiers;
  final VoidCallback? onViewPolicy;

  const CancellationPolicyCard({
    super.key,
    required this.tiers,
    this.onViewPolicy,
  });

  Color _getPercentageColor(int percentage) {
    if (percentage == 100) return AppColors.success;
    if (percentage >= 50) return Colors.orange;
    return AppColors.error;
  }

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('dd/MM');

    return Container(
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
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chính sách hoàn tiền',
                  style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w700, color: AppColors.textPrimary),
                ),
                if (onViewPolicy != null)
                  GestureDetector(
                    onTap: onViewPolicy,
                    child: Text(
                      'Xem chi tiết',
                      style: TextStyle(fontSize: AppTextTheme.linkLarge, fontWeight: FontWeight.w600, color: AppColors.link),
                    ),
                  ),
              ],
            ),
          ),
          ...tiers.asMap().entries.map((entry) {
            final index = entry.key;
            final tier = entry.value;
            final isLast = index == tiers.length - 1;

            String dateRange = tier.label;
            if (tier.startDate != null && tier.endDate != null) {
              dateRange = '${dateFormatter.format(tier.startDate!)} - ${dateFormatter.format(tier.endDate!)}';
            } else if (tier.startDate != null) {
              dateRange = 'Từ ${dateFormatter.format(tier.startDate!)}';
            }

            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              decoration: BoxDecoration(
                color: index == 0 ? AppColors.inputBackground.withOpacity(0.5) : Colors.transparent,
                border: isLast
                    ? null
                    : const Border(bottom: BorderSide(color: AppColors.inputBorder, width: 0.5)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(dateRange, style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w500, color: AppColors.textSecondary)),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: _getPercentageColor(tier.refundPercentage).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      tier.refundPercentage == 0 ? 'Không hoàn' : 'Hoàn ${tier.refundPercentage}%',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        fontWeight: FontWeight.w700,
                        color: _getPercentageColor(tier.refundPercentage),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
