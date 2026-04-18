import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/utils/date_time_utils.dart';

class ReceptionistHeader extends StatelessWidget {
  final String staffName;
  final String? staffAvatarUrl;
  final DateTime currentDateTime;
  final VoidCallback? onProfileTap;

  const ReceptionistHeader({
    super.key,
    required this.staffName,
    this.staffAvatarUrl,
    required this.currentDateTime,
    this.onProfileTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(bottom: BorderSide(color: AppColors.inputBorder)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Icon(
                  Icons.dashboard,
                  size: 14,
                  color: AppColors.buttonPrimaryText,
                ),
              ),
              const SizedBox(width: 8),
              const Text(
                'Executive Navigator',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: onProfileTap,
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.inputBorder),
              ),
              child: ClipOval(
                child: staffAvatarUrl != null
                    ? Image.network(
                        staffAvatarUrl!,
                        fit: BoxFit.cover,
                        errorBuilder: (_, __, ___) => _buildDefaultAvatar(),
                      )
                    : _buildDefaultAvatar(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDefaultAvatar() {
    return Container(
      color: AppColors.background,
      child: const Icon(Icons.person, size: 18, color: AppColors.primary),
    );
  }
}

class DashboardTitle extends StatelessWidget {
  final DateTime currentDateTime;

  const DashboardTitle({super.key, required this.currentDateTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Bảng Điều Khiển',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          DateTimeUtils.formatDateTime(currentDateTime),
          style: const TextStyle(fontSize: 10, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
