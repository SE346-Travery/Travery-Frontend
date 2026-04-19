import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

class QuickActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback? onTap;

  const QuickActionButton({
    super.key,
    required this.label,
    required this.icon,
    required this.backgroundColor,
    required this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: backgroundColor == AppColors.surface
                ? Border.all(color: AppColors.inputBorder)
                : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 16, color: textColor),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuickActionButtons extends StatelessWidget {
  final VoidCallback? onCheckInTap;
  final VoidCallback? onCheckOutTap;

  const QuickActionButtons({super.key, this.onCheckInTap, this.onCheckOutTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuickActionButton(
          label: 'Check-in Mới',
          icon: Icons.login,
          backgroundColor: AppColors.buttonPrimary,
          textColor: AppColors.buttonPrimaryText,
          onTap: onCheckInTap,
        ),
        const SizedBox(width: 8),
        QuickActionButton(
          label: 'Check-out Nhanh',
          icon: Icons.logout,
          backgroundColor: AppColors.surface,
          textColor: AppColors.link,
          onTap: onCheckOutTap,
        ),
      ],
    );
  }
}
