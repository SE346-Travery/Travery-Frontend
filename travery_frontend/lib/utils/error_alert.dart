import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';

class Utils {
  static void showErrorNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(
            fontSize: AppTextTheme.bodyLarge,
            fontWeight: FontWeight.w400,
            color: AppColors.error,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 170, 170),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        duration: Duration(seconds: 3),
      ),
    );
  }
}
