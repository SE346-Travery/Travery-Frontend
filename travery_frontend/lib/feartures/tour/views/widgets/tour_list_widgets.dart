import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';

class TourListWidgets {
  static Widget buildHeader({
    required TextEditingController searchController,
    required VoidCallback onNotificationTap,
    required VoidCallback onBackTap,
  }) {
    return Container(
      color: AppTheme.neutralWhite,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 44,
              decoration: BoxDecoration(
                color: AppTheme.neutralGrey1,
                borderRadius: BorderRadius.circular(22),
              ),
              child: TextField(
                controller: searchController,
                decoration: const InputDecoration(
                  hintText: 'Tìm điểm đến, tour...',
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: AppTheme.neutralGrey2,
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

  static Widget buildFilterBar({required List<Widget> children}) {
    return Container(
      color: AppTheme.neutralWhite,
      padding: const EdgeInsets.only(bottom: 12, left: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: children),
      ),
    );
  }

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
          color: isSelected ? AppTheme.primaryLight : AppTheme.neutralWhite,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppTheme.primaryMain : AppTheme.borderStroke,
          ),
        ),
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected
                    ? AppTheme.primaryMain
                    : AppTheme.neutralGrey2,
              ),
            ),
            Icon(
              Icons.expand_more,
              size: 16,
              color: isSelected ? AppTheme.primaryMain : AppTheme.neutralGrey2,
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
            style: Theme.of(
              context,
            ).textTheme.headlineMedium?.copyWith(fontSize: 16),
          ),
          PopupMenuButton<String>(
            onSelected: onSortSelected,
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: "Thấp đến cao",
                child: Text("Giá: Thấp đến cao"),
              ),
              const PopupMenuItem(
                value: "Cao đến thấp",
                child: Text("Giá: Cao đến thấp"),
              ),
            ],
            child: Row(
              children: [
                Text(
                  'Giá: $sortOrder',
                  style: const TextStyle(
                    color: AppTheme.primaryMain,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.swap_vert,
                  size: 16,
                  color: AppTheme.primaryMain,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
