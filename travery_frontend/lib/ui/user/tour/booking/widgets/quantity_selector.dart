import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class QuantitySelector extends StatelessWidget {
  final String label;
  final String subLabel;
  final int count;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  const QuantitySelector({
    super.key,
    required this.label,
    required this.subLabel,
    required this.count,
    required this.onAdd,
    required this.onRemove,
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
              label,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              subLabel,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: count > 0 ? onRemove : null,
              icon: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: count > 0
                        ? AppColors.primary
                        : AppColors.inputBorder,
                  ),
                ),
                child: Icon(
                  Icons.remove,
                  size: 16,
                  color: count > 0 ? AppColors.primary : AppColors.inputBorder,
                ),
              ),
            ),
            SizedBox(
              width: 32,
              child: Text(
                count.toString().padLeft(2, '0'),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            IconButton(
              onPressed: onAdd,
              icon: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.add, size: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
