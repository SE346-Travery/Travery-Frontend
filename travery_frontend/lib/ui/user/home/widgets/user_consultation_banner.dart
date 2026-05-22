import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class UserConsultationBanner extends StatelessWidget {
  final VoidCallback? onContactTap;

  const UserConsultationBanner({super.key, this.onContactTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFEBF3FF),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: const Color(0xFFD0E2FF), width: 1),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bạn cần thiết kế chuyến đi riêng?',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDarkBlackBlue,
                ),
              ),
              const SizedBox(height: 4),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Text(
                  'Chat với chuyên gia để được tư vấn lịch trình cá nhân hóa 24/7.',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    color: AppColors.textSecondary,
                    height: 1.4,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onContactTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonPrimary,
                  foregroundColor: AppColors.buttonPrimaryText,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 4,
                  shadowColor: AppColors.primary.withOpacity(0.25),
                ),
                child: const Text(
                  'Liên hệ ngay',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: -16,
            bottom: -16,
            child: Opacity(
              opacity: 0.1,
              child: Icon(
                Icons.support_agent,
                size: 120,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
