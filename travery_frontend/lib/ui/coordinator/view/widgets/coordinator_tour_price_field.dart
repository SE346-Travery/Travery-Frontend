import 'package:flutter/material.dart';
import '../../../core/themes/app_text_theme.dart';
import '../../../core/themes/app_colors.dart';

class CoordinatorTourPriceField extends StatelessWidget {
  final String label;
  final String adultprice;
  final String childprice;

  const CoordinatorTourPriceField({
    super.key,
    required this.label,
    required this.adultprice,
    required this.childprice,
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
          height: 54,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Người lớn',
                    style: TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    adultprice,
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodyMedium,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Trẻ em',
                    style: TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    childprice,
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodyMedium,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
