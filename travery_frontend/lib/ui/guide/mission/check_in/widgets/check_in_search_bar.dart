import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class CheckInSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const CheckInSearchBar({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: const InputDecoration(
          hintText: 'Tìm tên khách, số CCCD...',
          hintStyle: TextStyle(color: AppColors.textHint, fontSize: 13),
          prefixIcon: Icon(Icons.search, color: AppColors.icon, size: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
        ),
      ),
    );
  }
}
