import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';

class SortHeader extends StatelessWidget {
  const SortHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Giá: Thấp đến cao",
            style: TextStyle(
              color: AppColors.primary,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 4),
          Icon(Icons.swap_vert, color: AppColors.primary, size: 18),
        ],
      ),
    );
  }
}
