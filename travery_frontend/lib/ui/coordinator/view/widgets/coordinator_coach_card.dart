import 'package:flutter/material.dart';
import '../../../../domain/models/coordinator/coordinator_coach/coordinator_coach.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class CoordinatorCoachCard extends StatelessWidget {
  final CoordinatorCoach coach;
  final VoidCallback? onTap;

  const CoordinatorCoachCard({
    super.key,
    required this.coach,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final statusColor = _getStatusColor(coach.status);
    final statusLabel = coach.status;

    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Left status accent bar
              Container(
                width: 5,
                color: statusColor,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Header: Title and Status Badge
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              coach.name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          _buildStatusBadge(statusLabel, statusColor),
                        ],
                      ),
                      const SizedBox(height: 24),
                      // Details Grid
                      Expanded(
                        child: Row(
                          children: [
                            // Left Column
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildInfoItem(
                                    label: 'THÔNG TIN XE',
                                    icon: Icons.directions_bus_filled_rounded,
                                    title: coach.vehicle.licensePlate,
                                    subtitle: coach.vehicle.vehicleType,
                                    iconColor: statusColor,
                                  ),
                                  const Spacer(),
                                  _buildInfoItem(
                                    label: 'SỐ CHỖ NGỒI',
                                    icon: Icons.accessible_forward_rounded,
                                    title: coach.capacity.toString(),
                                    iconColor: statusColor,
                                  ),
                                ],
                              ),
                            ),
                            // Right Column
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildInfoItem(
                                    label: 'TÀI XẾ',
                                    icon: Icons.person_outline_rounded,
                                    title: coach.driver.name,
                                    iconColor: statusColor,
                                  ),
                                  const Spacer(),
                                  _buildInfoItem(
                                    label: 'KHỞI HÀNH',
                                    icon: Icons.access_time_rounded,
                                    title: _formatTime(coach.departureTime),
                                    subtitle: _formatDate(coach.departureTime),
                                    iconColor: statusColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusBadge(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: AppTextTheme.bodyMedium,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem({
    required String label,
    required IconData icon,
    required String title,
    String? subtitle,
    required Color iconColor,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w600,
            color: AppColors.textHint,
            letterSpacing: 1.0,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: AppColors.primary,
              size: 24,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodyLarge,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        color: AppColors.textSecondary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'đang chạy':
        return AppColors.success;
      case 'đang book':
      case 'sẵn sàng':
        return AppColors.primary;
      default:
        return AppColors.primary;
    }
  }

  String _formatTime(String departureTime) {
    if (departureTime.contains(',')) {
      return departureTime.split(',')[0].trim();
    }
    return departureTime;
  }

  String? _formatDate(String departureTime) {
    if (departureTime.contains(',')) {
      final parts = departureTime.split(',');
      if (parts.length > 1) {
        return parts[1].trim();
      }
    }
    return null;
  }
}
