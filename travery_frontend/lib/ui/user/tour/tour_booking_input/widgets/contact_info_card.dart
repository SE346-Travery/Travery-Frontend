import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class ContactInfoCard extends StatelessWidget {
  final String fullName;
  final String phoneNumber;
  final VoidCallback? onEdit;

  const ContactInfoCard({
    super.key,
    required this.fullName,
    required this.phoneNumber,
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
          const SizedBox(height: 16),
          _buildInfoRow('Họ và tên', fullName),
          const SizedBox(height: 12),
          _buildInfoRow('Số điện thoại', phoneNumber),
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
            const Icon(Icons.contact_mail, size: 20, color: AppColors.primary),
            const SizedBox(width: 8),
            Text(
              'Thông tin liên lạc',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodyMedium, color: AppColors.primary),
            ),
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

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Text(label, style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary)),
        ),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
          ),
        ),
      ],
    );
  }
}
