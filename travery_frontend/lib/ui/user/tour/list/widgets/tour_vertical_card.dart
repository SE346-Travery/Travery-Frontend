import 'package:flutter/material.dart';
import 'package:travery_frontend/data/seed_models/tour/tour.dart';
import 'package:travery_frontend/data/seed_models/tour_instance/tour_instance.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/utils/format_utils.dart';

class TourVerticalCard extends StatelessWidget {
  final Tour tour;
  final TourInstance? instance;
  final VoidCallback? onTap;

  const TourVerticalCard({
    super.key,
    required this.tour,
    this.instance,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = tour.images?.isNotEmpty == true
        ? tour.images!.first.imageUrl
        : 'https://picsum.photos/600/300';

    String duration = '';
    if (instance != null) {
      final days = instance!.endDate.difference(instance!.startDate).inDays + 1;
      duration = '${days}N${days - 1}Đ';
    }

    String departureDate = '';
    if (instance != null) {
      departureDate = FormatUtils.formatDate(instance!.startDate);
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              child: Image.network(
                imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 150,
                    color: AppColors.inputBackground,
                    child: const Icon(
                      Icons.image_not_supported,
                      color: AppColors.textHint,
                      size: 40,
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tour.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppTextTheme.bodyLarge,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  _buildInfo(Icons.schedule, 'Thời gian: $duration'),
                  const SizedBox(height: 4),
                  _buildInfo(
                    Icons.calendar_month_outlined,
                    'Khởi hành: $departureDate',
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Giá: ${FormatUtils.formatCurrency(tour.pricePerAdult)}',
                    style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w900,
                      fontSize: AppTextTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfo(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.textSecondary),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: AppTextTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
