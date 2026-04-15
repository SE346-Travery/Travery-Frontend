import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../data/seed_models/tour/tour.dart';
import '../../../../../data/seed_models/tour_instance/tour_instance.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class TourCard extends StatelessWidget {
  final TourInstance tourInstance;
  final Tour tour;
  final VoidCallback? onTap;

  const TourCard({super.key, required this.tourInstance, required this.tour, this.onTap});

  @override
  Widget build(BuildContext context) {
    final NumberFormat currencyFormat = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');
    final String imageUrl = tour.images!.isNotEmpty ? tour.images!.first.imageUrl : '';
    final String startDate = DateFormat('dd/MM/yyyy').format(tourInstance.startDate);

    String _formatDuration(Duration duration) {
      final days = duration.inDays;
      final nights = days > 0 ? days - 1 : 0;
      return "$days ngày $nights đêm";
    }

    final String duration = _formatDuration(tourInstance.endDate.difference(tourInstance.startDate));

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          width: 280,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.inputBorder.withOpacity(0.5)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(imageUrl, height: 176, width: double.infinity, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tour.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: AppTextTheme.bodyMedium),
                    ),
                    const SizedBox(height: 12),
                    _buildInfoRow(Icons.schedule, "Thời gian: $duration"),
                    const SizedBox(height: 8),
                    _buildInfoRow(Icons.calendar_today, "Khởi hành: $startDate"),
                    const SizedBox(height: 12),
                    Text(
                      "Giá: ${currencyFormat.format(tour.pricePerAdult)}",
                      style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w900, fontSize: AppTextTheme.labelMedium),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(text, style: TextStyle(color: AppColors.textSecondary, fontSize: AppTextTheme.bodySmall)),
      ],
    );
  }
}
