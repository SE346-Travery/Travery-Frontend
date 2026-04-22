import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

/// A read-only labeled display field used in the account detail view.
///
/// Renders an uppercase label (e.g. "HỌ VÀ TÊN") above a rounded container
/// that displays the field value (e.g. "Julian Casablancas").
class AccountInputField extends StatelessWidget {
  const AccountInputField({
    super.key,
    required this.label,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.enabled = true,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
  });

  final String label;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FormFieldValidator<String>? validator;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // ── Label ──────────────────────────────────────────────────────────
        Text(
          label.toUpperCase(),
          style: TextStyle(
            fontSize: AppTextTheme.bodySmall,
            fontWeight: FontWeight.w700,
            color: AppColors.textSecondary,
            letterSpacing: 0.6,
          ),
        ),

        const SizedBox(height: 6),

        // ── Input ──────────────────────────────────────────────────────────
        TextFormField(
          controller: controller,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          validator: validator,
          enabled: enabled,
          obscureText: obscureText,
          style: TextStyle(
            fontSize: AppTextTheme.bodyMedium,
            color: AppColors.textPrimary,
            fontWeight: FontWeight.w500,
          ),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              fontSize: AppTextTheme.bodyMedium,
              color: AppColors.textHint,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: enabled
                ? AppColors.inputBackground
                : AppColors.inputBorder,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.inputBorder),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.inputBorder),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(
                color: AppColors.inputBorderFocused,
                width: 1.5,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.inputBorder),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.error),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.error, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
