import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class SpecialNotesCard extends StatelessWidget {
  final String notes;
  final VoidCallback? onEdit;

  const SpecialNotesCard({
    super.key,
    required this.notes,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF131B2E).withOpacity(0.04),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 12),
          _buildNotesContent(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.edit_note, size: 20, color: AppColors.primary),
            const SizedBox(width: 8),
            Text('Ghi chú đặc biệt', style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodyMedium, color: AppColors.primary)),
          ],
        ),
        if (onEdit != null)
          GestureDetector(
            onTap: onEdit,
            child: Text('Chỉnh sửa', style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w500, color: AppColors.primary)),
          ),
      ],
    );
  }

  Widget _buildNotesContent() {
    final hasNotes = notes.isNotEmpty;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4FF).withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        hasNotes ? '"$notes"' : 'Không có ghi chú đặc biệt',
        style: TextStyle(
          fontSize: AppTextTheme.bodySmall,
          color: hasNotes ? AppColors.textSecondary : AppColors.textHint,
          fontStyle: hasNotes ? FontStyle.italic : FontStyle.normal,
          height: 1.5,
        ),
      ),
    );
  }
}
