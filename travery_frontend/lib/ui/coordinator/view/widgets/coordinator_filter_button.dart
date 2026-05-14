import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';

class CoordinatorFilterButton extends StatelessWidget {
  final VoidCallback? onFilterTap;
  const CoordinatorFilterButton({super.key, this.onFilterTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      width: 36.0,
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.inputBorder, width: 1.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8.0),
          onTap: onFilterTap,
          child: const Center(
            child: Icon(
              Icons.filter_alt_outlined,
              color: AppColors.icon,
              size: 20.0,
            ),
          ),
        ),
      ),
    );
  }
}
