import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../model/tour_model.dart';

class TourDetailCard extends StatelessWidget {
  final Tour tour;

  const TourDetailCard({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(
              0.06,
            ),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề tour
          Text(
            tour.title,
            style: textTheme.headlineMedium?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 16),

          // Grid info
          GridView.count(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2.5,
            children: [
              _buildInfoBox(
                textTheme,
                Icons.schedule,
                "THỜI GIAN",
                tour.duration,
              ),
              _buildInfoBox(
                textTheme,
                Icons.event,
                "NGÀY KHỞI HÀNH",
                "${tour.departureDate.day}/${tour.departureDate.month}/${tour.departureDate.year}",
              ),
              _buildInfoBox(
                textTheme,
                Icons.location_on,
                "XUẤT PHÁT",
                tour.departureLocation,
              ),
              _buildInfoBox(
                textTheme,
                Icons.group,
                "CHỖ TRỐNG",
                "${tour.availableSlots}/${tour.totalSlots}",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoBox(
    TextTheme textTheme,
    IconData icon,
    String label,
    String value, {
    bool isHighlight = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColors.primary, size: 16), 
          const SizedBox(height: 4),
          Text(
            label.toUpperCase(),
            style: textTheme.labelSmall?.copyWith(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: AppColors.textSecondary,
            ),
          ),
          Text(
            value,
            style: textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 12,
              color: isHighlight ? AppColors.primary : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
