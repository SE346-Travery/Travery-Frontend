import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  static const Color primaryMain = Color(0xFF007AFF);
  static const Color primaryLight = Color(0xFFD1E9FF);
  static const Color primaryDark = Color(0xFF0056B3);
  static const Color neutralWhite = Color(0xFFFFFFFF);
  static const Color neutralGrey1 = Color(0xFFF1F5F9);
  static const Color neutralGrey2 = Color(0xFF94A3B8);
  static const Color neutralDark = Color(0xFF0F172A);
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF2C94C);
  static const Color borderStroke = Color(0xFFE2E8F0);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: neutralGrey1,

      textTheme: GoogleFonts.interTextTheme(
        const TextTheme(
          displayLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            height: 40 / 32,
          ),
          headlineLarge: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            height: 32 / 24,
          ),
          headlineMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 28 / 20,
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 24 / 16,
          ),
          bodyMedium: TextStyle(
            // Body Small trong thiết kế của bạn
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 20 / 14,
          ),
          labelSmall: TextStyle(
            // Caption
            fontSize: 12,
            fontWeight: FontWeight.w400,
            height: 16 / 12,
          ),
        ),
      ),
    );
  }
}
