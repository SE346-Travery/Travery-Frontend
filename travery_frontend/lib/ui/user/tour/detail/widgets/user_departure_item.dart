import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class UserDepartureItem extends StatelessWidget {
  final TourInstance instance;
  final bool isSelected;
  final VoidCallback? onTap;

  const UserDepartureItem({
    super.key,
    required this.instance,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryLightWhiteBlue
              : AppColors.surface,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? AppColors.primary
                : AppColors.inputBorder.withOpacity(0.3),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              _formatDateRange(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: isSelected ? AppColors.primary : AppColors.textPrimary,
                fontFamily: 'Inter',
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: AppColors.primaryLightWhiteBlue,
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                'CÒN CHỖ',
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDark,
                  fontFamily: 'Inter',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDateRange() {
    final startDay = instance.startDate.day.toString().padLeft(2, '0');
    final startMonth = instance.startDate.month.toString().padLeft(2, '0');
    final endDay = instance.endDate.day.toString().padLeft(2, '0');
    final endMonth = instance.endDate.month.toString().padLeft(2, '0');
    return '$startDay/$startMonth - $endDay/$endMonth';
  }
}
