import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isDanger;
  final bool isGhost;
  final bool isLoading;

  const ActionButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isDanger = false,
    this.isGhost = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isGhost
              ? Colors.transparent
              : (isDanger ? AppColors.error : AppColors.primary),
          foregroundColor: isGhost ? AppColors.textSecondary : Colors.white,
          elevation: isGhost ? 0 : 4,
          shadowColor: isDanger
              ? AppColors.error.withValues(alpha: 0.4)
              : AppColors.primary.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
