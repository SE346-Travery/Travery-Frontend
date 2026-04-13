import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class TourSummaryCard extends StatelessWidget {
  final String tourName;
  final String? tourCode;
  final DateTime startDate;
  final DateTime endDate;
  final String? imageUrl;
  final VoidCallback? onTap;

  const TourSummaryCard({
    super.key,
    required this.tourName,
    required this.tourCode,
    required this.startDate,
    required this.endDate,
    this.imageUrl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF131B2E).withOpacity(0.04),
              blurRadius: 32,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Row(
          children: [
            _buildImage(),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tourName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppTextTheme.bodyMedium,
                      height: 1.3,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Mã tour: $tourCode',
                    style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  _buildDateRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 88,
        height: 88,
        color: AppColors.inputBackground,
        child: imageUrl != null ? Image.network(imageUrl!, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => _buildPlaceholder()) : _buildPlaceholder(),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      color: AppColors.inputBackground,
      child: const Icon(Icons.landscape, color: AppColors.textHint, size: 32),
    );
  }

  Widget _buildDateRow() {
    return Row(
      children: [
        const Icon(Icons.calendar_today, size: 14, color: AppColors.textSecondary),
        const SizedBox(width: 4),
        Text(
          '${DateFormat('dd/MM/yyyy').format(startDate)} - ${DateFormat('dd/MM/yyyy').format(endDate)}',
          style: TextStyle(fontSize: AppTextTheme.bodySmall, color: AppColors.textSecondary),
        ),
      ],
    );
  }
}
