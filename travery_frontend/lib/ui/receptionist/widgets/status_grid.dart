import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class StatusCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final int count;
  final Color borderColor;
  final Color textColor;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const StatusCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.count,
    required this.borderColor,
    required this.textColor,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border(left: BorderSide(color: borderColor, width: 3)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 2,
              offset: Offset(0, 1),
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
                  title,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textSecondary,
                    letterSpacing: 0.5,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: backgroundColor.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StatusGrid extends StatelessWidget {
  final int readyCount;
  final int occupiedCount;
  final int cleaningCount;
  final int maintenanceCount;
  final Function(int)? onStatusTap;

  const StatusGrid({
    super.key,
    required this.readyCount,
    required this.occupiedCount,
    required this.cleaningCount,
    required this.maintenanceCount,
    this.onStatusTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 3,
      crossAxisSpacing: 3,
      childAspectRatio: 1.5,
      children: [
        StatusCard(
          title: 'SẴN SÀNG',
          subtitle: 'Trống',
          count: readyCount,
          borderColor: AppColors.success,
          textColor: AppColors.success,
          backgroundColor: AppColors.success,
          onTap: onStatusTap != null ? () => onStatusTap!(0) : null,
        ),
        StatusCard(
          title: 'ĐANG Ở',
          subtitle: 'Chiếm',
          count: occupiedCount,
          borderColor: AppColors.primary,
          textColor: AppColors.primary,
          backgroundColor: AppColors.primary,
          onTap: onStatusTap != null ? () => onStatusTap!(1) : null,
        ),
        StatusCard(
          title: 'ĐANG DỌN',
          subtitle: 'Vệ sinh',
          count: cleaningCount,
          borderColor: AppColors.warning,
          textColor: AppColors.warning,
          backgroundColor: AppColors.warning,
          onTap: onStatusTap != null ? () => onStatusTap!(2) : null,
        ),
        StatusCard(
          title: 'BẢO TRÌ',
          subtitle: 'Sửa',
          count: maintenanceCount,
          borderColor: AppColors.error,
          textColor: AppColors.error,
          backgroundColor: AppColors.error,
          onTap: onStatusTap != null ? () => onStatusTap!(3) : null,
        ),
      ],
    );
  }
}
