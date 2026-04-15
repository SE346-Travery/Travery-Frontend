import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class BottomActionBar extends StatelessWidget {
  final double totalPrice;
  final int totalMembers;
  final String buttonText;
  final VoidCallback? onPressed;
  final bool isEnabled;

  const BottomActionBar({
    super.key,
    required this.totalPrice,
    required this.totalMembers,
    required this.buttonText,
    this.onPressed,
    this.isEnabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        decoration: BoxDecoration(
          color: AppColors.surface.withOpacity(0.95),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF131B2E).withOpacity(0.08),
              blurRadius: 32,
              offset: const Offset(0, -12),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Tổng thanh toán ($totalMembers người)',
                    style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    formatter.format(totalPrice),
                    style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.bold, color: AppColors.primary),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(child: _buildSubmitButton()),
          ],
        ),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return GestureDetector(
      onTap: isEnabled ? onPressed : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: 52,
        decoration: BoxDecoration(
          gradient: isEnabled ? const LinearGradient(colors: [AppColors.primary, Color(0xFF0070EB)], begin: Alignment.centerLeft, end: Alignment.centerRight) : null,
          color: isEnabled ? null : AppColors.textHint.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          boxShadow: isEnabled ? [BoxShadow(color: AppColors.primary.withOpacity(0.2), blurRadius: 12, offset: const Offset(0, 4))] : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(fontSize: AppTextTheme.buttonLarge, fontWeight: FontWeight.bold, color: isEnabled ? Colors.white : AppColors.textHint),
            ),
            const SizedBox(width: 6),
            Icon(Icons.arrow_forward, size: 20, color: isEnabled ? Colors.white : AppColors.textHint),
          ],
        ),
      ),
    );
  }
}
