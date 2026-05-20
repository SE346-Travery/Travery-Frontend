import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'coordinator_button.dart';

enum TaskUrgency { overdue, nearDeadline, upcoming }

class CoordinatorTaskCard extends StatelessWidget {
  final TaskUrgency urgency;
  final String urgencyLabel;    // e.g. "QUÁ HẠN 30P" / "CÒN 2 GIỜ" / "CÒN 2 NGÀY"
  final String departureDate;   // e.g. "25/12/2025"
  final String tourName;        // e.g. "Tour Đà Lạt - 3 Ngày 2 Đêm"
  final String taskDescription; // e.g. "Phân công xe, tài xế và hướng dẫn viên"
  final VoidCallback? onAssign;

  const CoordinatorTaskCard({
    super.key,
    required this.urgency,
    required this.urgencyLabel,
    required this.departureDate,
    required this.tourName,
    required this.taskDescription,
    this.onAssign,
  });

  Color get _badgeColor {
    switch (urgency) {
      case TaskUrgency.overdue:
        return AppColors.error;
      case TaskUrgency.nearDeadline:
        return AppColors.warning;
      case TaskUrgency.upcoming:
        return AppColors.inputBorder;
    }
  }

  Color get _badgeTextColor {
    switch (urgency) {
      case TaskUrgency.overdue:
        return Colors.white;
      case TaskUrgency.nearDeadline:
        return const Color(0xFF8B6000);
      case TaskUrgency.upcoming:
        return AppColors.textSecondary;
    }
  }

  IconData get _badgeIcon {
    switch (urgency) {
      case TaskUrgency.overdue:
        return Icons.error_rounded;
      case TaskUrgency.nearDeadline:
        return Icons.access_time_rounded;
      case TaskUrgency.upcoming:
        return Icons.calendar_today_outlined;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top row: urgency badge + departure
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Urgency badge
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 8),
                  decoration: BoxDecoration(
                    color: _badgeColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(_badgeIcon,
                          color: _badgeTextColor, size: 16),
                      const SizedBox(height: 4),
                      Text(
                        urgencyLabel,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: _badgeTextColor,
                          height: 1.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                // Departure info
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'KHỞI HÀNH:',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textSecondary,
                          letterSpacing: 0.8,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        departureDate,
                        style: const TextStyle(
                          fontSize: AppTextTheme.bodyLarge,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Tour name
            Text(
              tourName,
              style: const TextStyle(
                fontSize: AppTextTheme.bodyLarge,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),

            // Task description
            Row(
              children: [
                const Icon(Icons.assignment_outlined,
                    size: 14, color: AppColors.textSecondary),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    taskDescription,
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      color: AppColors.textSecondary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 14),

            // Action button
            CoordinatorButton(
              text: 'Thực hiện phân công →',
              color: AppColors.primaryDarkBlackBlue,
              onTap: onAssign,
            ),
          ],
        ),
      ),
    );
  }
}
