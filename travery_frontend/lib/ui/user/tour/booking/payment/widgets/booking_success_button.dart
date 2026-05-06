import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class BookingSuccessButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final bool isBordered;
  final VoidCallback onPressed;

  const BookingSuccessButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    this.isBordered = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          side: isBordered
              ? const BorderSide(color: AppColors.primary, width: 1.5)
              : BorderSide.none,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: isBordered ? 0 : 2,
          shadowColor: AppColors.primary.withOpacity(0.2),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
