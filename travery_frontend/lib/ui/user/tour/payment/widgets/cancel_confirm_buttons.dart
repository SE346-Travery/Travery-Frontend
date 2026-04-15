import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class CancelConfirmButtons extends StatelessWidget {
  final VoidCallback? onConfirm;
  final VoidCallback? onBack;
  final bool isLoading;

  const CancelConfirmButtons({
    super.key,
    this.onConfirm,
    this.onBack,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: isLoading ? null : onConfirm,
          child: Container(
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFef4444), Color(0xFFdc2626)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFef4444).withOpacity(0.3),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Center(
              child: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2, valueColor: AlwaysStoppedAnimation(Colors.white)),
                    )
                  : Text('Xác nhận hủy', style: TextStyle(fontSize: AppTextTheme.buttonLarge, fontWeight: FontWeight.w700, color: Colors.white)),
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: isLoading ? null : onBack,
          child: Container(
            width: double.infinity,
            height: 52,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Quay lại',
                style: TextStyle(fontSize: AppTextTheme.buttonLarge, fontWeight: FontWeight.w600, color: AppColors.textSecondary),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
