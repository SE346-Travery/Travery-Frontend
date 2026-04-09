import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';

class PassengerStepper extends StatelessWidget {
  final String title, subtitle;
  final int value;
  final Function(int) onChanged;

  const PassengerStepper({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(99),
            border: Border.all(color: AppColors.inputBorder),
          ),
          child: Row(
            children: [
              _btn(
                Icons.remove,
                value > 0,
                () => onChanged(value - 1),
                isPrimary: false,
              ),
              SizedBox(
                width: 32,
                child: Center(
                  child: Text(
                    value.toString().padLeft(2, '0'),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ),
              ),
              _btn(
                Icons.add,
                true,
                () => onChanged(value + 1),
                isPrimary: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _btn(
    IconData icon,
    bool active,
    VoidCallback onTap, {
    required bool isPrimary,
  }) {
    return GestureDetector(
      onTap: active ? onTap : null,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          color: isPrimary ? AppColors.buttonPrimary : AppColors.surface,
          shape: BoxShape.circle,
          boxShadow: [
            if (!isPrimary)
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Icon(
          icon,
          size: 20,
          color: isPrimary
              ? AppColors.buttonPrimaryText
              : (active ? AppColors.primary : AppColors.icon),
        ),
      ),
    );
  }
}
