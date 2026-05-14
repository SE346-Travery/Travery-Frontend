import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'coordinator_button.dart';

class CoordinatorHotelSelectionCard extends StatelessWidget {
  final String hotelname;
  final String cityprovince;
  final String? imageurl;
  final VoidCallback? onTap;

  const CoordinatorHotelSelectionCard({
    super.key,
    required this.hotelname,
    required this.cityprovince,
    this.imageurl,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          // Hotel Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              width: 116,
              height: 116,
              child: imageurl != null && imageurl!.isNotEmpty
                  ? Image.network(
                      imageurl!,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          _buildPlaceholder(),
                    )
                  : _buildPlaceholder(),
            ),
          ),
          const SizedBox(width: 16),
          // Hotel Info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelname,
                      style: const TextStyle(
                        fontSize: AppTextTheme.labelLarge,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 16,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            cityprovince,
                            style: const TextStyle(
                              fontSize: AppTextTheme.bodySmall,
                              color: AppColors.textSecondary,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                CoordinatorButton(
                  text: 'Chọn',
                  color: AppColors.primary,
                  onTap: onTap,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      color: AppColors.primaryLightWhiteBlue,
      child: const Icon(
        Icons.domain_rounded,
        color: AppColors.primary,
        size: 48,
      ),
    );
  }
}
