import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/tour_completed/tour_completed.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class TourCompletedStatusBanner extends StatelessWidget {
  final TourCompletedStatus status;

  const TourCompletedStatusBanner({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final isCompleted = status == TourCompletedStatus.completed;
    final color = isCompleted ? AppColors.success : AppColors.error;
    final statusText = isCompleted ? 'ĐÃ HOÀN THÀNH' : 'ĐÃ HUỶ';

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Row(
        children: [
          Icon(Icons.check_circle, color: color, size: 22),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TRẠNG THÁI CÔNG VIỆC',
                style: TextStyle(
                  color: color,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
              Text(
                statusText,
                style: TextStyle(
                  color: color,
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
