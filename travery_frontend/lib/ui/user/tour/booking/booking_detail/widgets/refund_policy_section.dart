import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class RefundPolicySection extends StatelessWidget {
  const RefundPolicySection({super.key, required this.policy});

  final RefundPolicy policy;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 4, bottom: 12),
          child: Text(
            'Chính sách hoàn tiền',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.background),
          ),
          child: Column(children: _buildPolicyRows()),
        ),
      ],
    );
  }

  List<Widget> _buildPolicyRows() {
    final rows = <Widget>[];
    final tiers = policy.tiers;

    for (int i = 0; i < tiers.length; i++) {
      final tier = tiers[i];
      final isFirst = i == 0;
      final isLast = i == tiers.length - 1;

      rows.add(
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: isFirst ? Colors.white.withOpacity(0.5) : Colors.transparent,
            border: isLast
                ? null
                : const Border(bottom: BorderSide(color: AppColors.background)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                tier.label,
                style: TextStyle(
                  color: isFirst
                      ? AppColors.textPrimary
                      : AppColors.textSecondary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              Text(
                tier.description,
                style: TextStyle(
                  color: _getRefundColor(tier.refundPercentage),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return rows;
  }

  Color _getRefundColor(int percentage) {
    if (percentage == 100) return AppColors.success;
    if (percentage == 50) return AppColors.warning;
    return AppColors.error;
  }
}
