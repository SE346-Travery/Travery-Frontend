import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class RefundPreviewAlert extends StatelessWidget {
  final int refundPercentage;
  final DateTime? deadline;
  final VoidCallback? onTap;

  const RefundPreviewAlert({
    super.key,
    required this.refundPercentage,
    this.deadline,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('HH:mm dd/MM');

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.error.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.error.withOpacity(0.2)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 8),
                ],
              ),
              child: Icon(Icons.info, color: AppColors.error, size: 20, fill: 1),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cơ hội hoàn tiền tối đa',
                    style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w700, color: AppColors.error),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Hủy ngay bây giờ được hoàn $refundPercentage%',
                    style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w600, color: AppColors.error),
                  ),
                  if (deadline != null) ...[
                    const SizedBox(height: 2),
                    Text(
                      'Áp dụng đến hết ${dateFormatter.format(deadline!)}',
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic, color: AppColors.error.withOpacity(0.7)),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
