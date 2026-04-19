import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';

class ConsultationBanner extends StatelessWidget {
  final VoidCallback? onContactPressed;

  const ConsultationBanner({super.key, this.onContactPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFE3F2FD),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Bạn cần thiết kế\nchuyến đi riêng?',
                style: TextStyle(
                  fontSize: AppTextTheme.labelLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDark,
                ),
              ),
              const SizedBox(height: 8),
              const SizedBox(
                width: 200,
                child: Text(
                  'Chat với chuyên gia để được tư vấn lịch trình cá nhân hóa 24/7.',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: AppTextTheme.bodySmall,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onContactPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonPrimary,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Liên hệ ngay'),
              ),
            ],
          ),
          const Positioned(
            right: -10,
            bottom: -10,
            child: Icon(
              Icons.support_agent,
              size: 100,
              color: Color(0x1A1A73E8),
            ),
          ),
        ],
      ),
    );
  }
}
