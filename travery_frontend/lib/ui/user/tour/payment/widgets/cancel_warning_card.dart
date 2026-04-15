import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class CancelWarningCard extends StatelessWidget {
  const CancelWarningCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            child: Icon(Icons.warning_amber_rounded, color: AppColors.error, size: 28, fill: 1),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Thao tác này không thể hoàn tác',
                  style: TextStyle(
                    fontSize: AppTextTheme.labelMedium,
                    fontWeight: FontWeight.w700,
                    color: AppColors.error,
                    letterSpacing: -0.2,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'Vui lòng xem kỹ thông tin hoàn tiền và chính sách trước khi xác nhận. Sau khi hủy, đặt chỗ của bạn sẽ bị xóa khỏi hệ thống.',
                  style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, height: 1.4),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
