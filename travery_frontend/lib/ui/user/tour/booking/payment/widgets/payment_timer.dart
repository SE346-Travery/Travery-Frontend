import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class PaymentTimer extends StatelessWidget {
  final int minutes;
  final int seconds;

  const PaymentTimer({super.key, required this.minutes, required this.seconds});

  @override
  Widget build(BuildContext context) {
    final displayMinutes = minutes.toString().padLeft(2, '0');
    final displaySeconds = seconds.toString().padLeft(2, '0');

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      decoration: BoxDecoration(
        color: AppColors.error.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.schedule, color: AppColors.error, size: 16),
          const SizedBox(width: 6),
          Text(
            'Giữ chỗ trong $displayMinutes:$displaySeconds',
            style: const TextStyle(
              color: AppColors.error,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
