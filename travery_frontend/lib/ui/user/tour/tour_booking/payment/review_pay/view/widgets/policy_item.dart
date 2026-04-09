import 'package:flutter/material.dart';

import '../../../../../../../core/themes/app_colors.dart';

class RefundPolicyItem extends StatelessWidget {
  final String time, percent;
  final Color statusColor;
  final bool isHighlight, showDivider;
  const RefundPolicyItem({
    super.key,
    required this.time,
    required this.percent,
    required this.statusColor,
    this.isHighlight = false,
    this.showDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isHighlight ? Colors.white.withOpacity(0.5) : Colors.transparent,
        border: showDivider
            ? Border(
                bottom: BorderSide(
                  color: AppColors.inputBorder.withOpacity(0.3),
                ),
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            time,
            style: TextStyle(
              color: isHighlight
                  ? AppColors.textPrimary
                  : AppColors.textSecondary,
              fontWeight: isHighlight ? FontWeight.bold : FontWeight.w500,
            ),
          ),
          Text(
            percent,
            style: TextStyle(color: statusColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
