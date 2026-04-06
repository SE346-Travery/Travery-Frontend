import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';

class TourListWidgets {
  static Widget buildHeader({
    required TextEditingController searchController,
    required VoidCallback onNotificationTap,
    required VoidCallback onBackTap,
  }) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.inputBackground,
                borderRadius: BorderRadius.circular(22),
              ),
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Tìm điểm đến, tour...',
                  hintStyle: TextStyle(color: AppColors.textHint),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: AppColors.icon,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 11),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // FILTER BAR
  static Widget buildFilterBar({required List<Widget> children}) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.only(bottom: 12, left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: children),
      ),
    );
  }

  // FILTER CHIP
  static Widget filterChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primary.withOpacity(0.1)
              : AppColors.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.inputBorder,
          ),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? AppColors.primary : AppColors.textSecondary,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.expand_more,
              size: 16,
              color: isSelected ? AppColors.primary : AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildResultsSection({
    required BuildContext context,
    required int count,
    required String sortOrder,
    required Function(String) onSortSelected,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$count tour phù hợp',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          PopupMenuButton<String>(
            onSelected: onSortSelected,
            color: AppColors.surface,
            itemBuilder: (context) => [
              PopupMenuItem(
                value: "Thấp đến cao",
                child: Text(
                  "Giá: Thấp đến cao",
                  style: const TextStyle(color: AppColors.textPrimary),
                ),
              ),
              PopupMenuItem(
                value: "Cao đến thấp",
                child: Text(
                  "Giá: Cao đến thấp",
                  style: const TextStyle(color: AppColors.textPrimary),
                ),
              ),
            ],
            child: Row(
              children: [
                Text(
                  'Giá: $sortOrder',
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(width: 4),
                const Icon(Icons.swap_vert, size: 16, color: AppColors.primary),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
