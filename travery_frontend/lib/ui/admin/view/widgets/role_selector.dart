import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

/// A model for a single role option shown in [RoleSelector].
class RoleOption {
  const RoleOption({
    required this.value,
    required this.label,
    required this.icon,
  });

  final String value;
  final String label;
  final IconData icon;
}

/// A card-style "Vai trò hệ thống" section that shows a [ListView.separated]
/// of radio-style role rows. Selecting one automatically deselects the others.
class RoleSelector extends StatelessWidget {
  const RoleSelector({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  final List<RoleOption> options;
  final String? selectedValue;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryLightWhiteBlue,
        border: Border.all(color: AppColors.primary, width: 0.5),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Section header ────────────────────────────────────────────
          Row(
            children: [
              const Icon(
                Icons.work_outline_rounded,
                size: 20,
                color: AppColors.primary,
              ),
              const SizedBox(width: 8),
              Text(
                'Vai trò hệ thống',
                style: TextStyle(
                  fontSize: AppTextTheme.bodyLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          // ── Role list ─────────────────────────────────────────────────
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: options.length,
            separatorBuilder: (_, _) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final option = options[index];
              final isSelected = option.value == selectedValue;
              return _RoleRow(
                option: option,
                isSelected: isSelected,
                onTap: () => onChanged(option.value),
              );
            },
          ),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Single animated role row
// ─────────────────────────────────────────────────────────────────────────────

class _RoleRow extends StatelessWidget {
  const _RoleRow({
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  final RoleOption option;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryDarkBlackBlue
              : AppColors.inputBackground,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Role icon
            Icon(
              option.icon,
              size: 20,
              color: isSelected ? Colors.white : AppColors.textSecondary,
            ),
            const SizedBox(width: 12),
            // Role label
            Expanded(
              child: Text(
                option.label,
                style: TextStyle(
                  fontSize: AppTextTheme.bodyMedium,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : AppColors.textPrimary,
                ),
              ),
            ),
            // Checkbox indicator
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: isSelected
                  ? Container(
                      key: const ValueKey('checked'),
                      width: 22,
                      height: 22,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check_rounded,
                        size: 14,
                        color: AppColors.primary,
                      ),
                    )
                  : Container(
                      key: const ValueKey('unchecked'),
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.inputBorder,
                          width: 1.5,
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
