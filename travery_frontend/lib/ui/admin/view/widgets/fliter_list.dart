import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class FilterList extends StatelessWidget {
  const FilterList({
    super.key,
    required this.filters,
    required this.selectedIndex,
    required this.onSelected,
  });

  /// List of filter labels, e.g. ['Tất cả', 'Điều phối viên', …]
  final List<String> filters;

  /// Index of the currently selected filter chip
  final int selectedIndex;

  /// Callback when a chip is tapped
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: filters.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isSelected = index == selectedIndex;
          return _FilterChip(
            label: filters[index],
            isSelected: isSelected,
            onTap: () => onSelected(index),
          );
        },
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Single animated filter chip
// ─────────────────────────────────────────────────────────────────────────────

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryDarkBlackBlue
              : AppColors.inputBackground,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryDarkBlackBlue
                : AppColors.inputBorder,
            width: 1,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: AppTextTheme.bodyMedium,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}
