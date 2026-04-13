import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class TourOverviewCard extends StatelessWidget {
  final double price;
  const TourOverviewCard({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final format = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ', decimalDigits: 0);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF2F3FF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("GIÁ TỪ", style: TextStyle(fontSize: 10, fontWeight: FontWeight.w800, color: AppColors.textSecondary, letterSpacing: 1)),
              const SizedBox(height: 4),
              Text("${format.format(price)} / khách", style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w900, color: AppColors.primary)),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            child: const Icon(Icons.payments, color: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
