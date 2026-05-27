import 'package:flutter/material.dart';
import '../../../core/themes/app_text_theme.dart';
import '../../../core/themes/app_colors.dart';

class CoordinatorTourInfoField extends StatelessWidget {
  final String label;
  final String content;
  final IconData prefixIcon;

  const CoordinatorTourInfoField({
    super.key,
    required this.label,
    required this.content,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: AppTextTheme.labelMedium,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(
                prefixIcon,
                color: Colors.white,
                size: 24,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  content,
                  style: const TextStyle(
                    fontSize: AppTextTheme.bodyMedium,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
