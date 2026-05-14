import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class CoordinatorTourDriverCard extends StatelessWidget {
  final String driverName;
  final String vehicleType;
  final String licenseNumber;
  final String? imageUrl;

  const CoordinatorTourDriverCard({
    super.key,
    required this.driverName,
    required this.vehicleType,
    required this.licenseNumber,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Row(
          children: [
            // Left blue accent
            Container(
              width: 5,
              color: AppColors.primary,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  children: [
                    // Top Section: Image + Name
                    Row(
                      children: [
                        _buildImage(),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                driverName,
                                style: const TextStyle(
                                  fontSize: AppTextTheme.bodyLarge,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Text(
                                'Tài xế',
                                style: TextStyle(
                                  fontSize: AppTextTheme.bodySmall,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    const Spacer(),
                    
                    // Divider
                    const Divider(
                      height: 1,
                      thickness: 0.5,
                      color: AppColors.inputBorder,
                    ),
                    
                    const Spacer(),

                    // Bottom Section: Vehicle Type + License Number
                    Row(
                      children: [
                        Expanded(
                          child: _buildInfoItem(
                            label: 'LOẠI XE',
                            value: vehicleType,
                          ),
                        ),
                        Expanded(
                          child: _buildInfoItem(
                            label: 'GIẤY PHÉP',
                            value: licenseNumber,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        color: AppColors.primaryLightWhiteBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.directions_car_filled_rounded,
                  color: AppColors.primaryDark,
                  size: 28,
                ),
              )
            : const Icon(
                Icons.directions_car_filled_rounded,
                color: AppColors.primaryDark,
                size: 28,
              ),
      ),
    );
  }

  Widget _buildInfoItem({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppColors.textHint,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: AppTextTheme.bodyMedium,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
