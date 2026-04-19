import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class PolicyCheckbox extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool?>? onChanged;
  final VoidCallback? onTermsTap;
  final VoidCallback? onPolicyTap;

  const PolicyCheckbox({
    super.key,
    required this.isChecked,
    this.onChanged,
    this.onTermsTap,
    this.onPolicyTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged?.call(!isChecked),
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 20,
              height: 20,
              child: Checkbox(
                value: isChecked,
                onChanged: onChanged,
                activeColor: AppColors.primary,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                side: const BorderSide(color: AppColors.textSecondary, width: 1.5),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, height: 1.5),
                    children: [
                      const TextSpan(text: 'Tôi đã đọc và đồng ý với các '),
                      TextSpan(
                        text: 'Điều khoản sử dụng',
                        style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.primary),
                        recognizer: _createTapRecognizer(onTermsTap),
                      ),
                      const TextSpan(text: ' và '),
                      TextSpan(
                        text: 'Chính sách hoàn hủy',
                        style: TextStyle(fontWeight: FontWeight.w500, color: AppColors.primary),
                        recognizer: _createTapRecognizer(onPolicyTap),
                      ),
                      const TextSpan(text: ' của Travery.'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TapGestureRecognizer? _createTapRecognizer(VoidCallback? callback) {
    if (callback == null) return null;
    final recognizer = TapGestureRecognizer();
    recognizer.onTap = callback;
    return recognizer;
  }
}
