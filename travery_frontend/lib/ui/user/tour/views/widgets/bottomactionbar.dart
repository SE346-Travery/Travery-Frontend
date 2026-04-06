import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class BottomActionBar extends StatelessWidget {
  final double price;
  final VoidCallback onTap;

  const BottomActionBar({super.key, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final priceStr = price.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{3})(?=\d)'),
      (m) => '${m[1]}.',
    );

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Giá: $priceStr đ",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Đặt tour",
              style: TextStyle(color: AppColors.background),
            ),
          ),
        ],
      ),
    );
  }
}
