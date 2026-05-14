import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'coordinator_button.dart';

class CoordinatorCoachSelectionCard extends StatelessWidget {
  final String Largelabel;
  final String smallLabel;
  final String status;
  final String? imageUrl;
  final VoidCallback? onSelect;

  const CoordinatorCoachSelectionCard({
    super.key,
    required this.Largelabel,
    required this.smallLabel,
    required this.status,
    this.imageUrl,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildImage(),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Largelabel,
                        style: const TextStyle(
                          fontSize: AppTextTheme.headlineSmall,
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
                            Icons.email_outlined,
                            size: 16,
                            color: AppColors.textSecondary,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              smallLabel,
                              style: const TextStyle(
                                fontSize: AppTextTheme.bodyMedium,
                                color: AppColors.textSecondary,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      _buildStatusBadge(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CoordinatorButton(
              text: 'Chọn',
              color: AppColors.primaryDarkBlackBlue,
              onTap: onSelect,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: AppColors.inputBorder,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    _buildPlaceholder(),
              )
            : _buildPlaceholder(),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return const Center(
      child: Icon(
        Icons.person_outline,
        color: AppColors.textSecondary,
        size: 32,
      ),
    );
  }

  Widget _buildStatusBadge() {
    final bool isReady = status.toUpperCase() == 'SẴN SÀNG';
    final bool isRunning = status.toUpperCase() == 'ĐANG CHẠY';

    Color bgColor = AppColors.inputBackground;
    Color textColor = AppColors.textSecondary;

    if (isReady) {
      bgColor = AppColors.primaryLightWhiteBlue;
      textColor = AppColors.primaryDarkBlackBlue;
    } else if (isRunning) {
      bgColor = AppColors.success.withValues(alpha: 0.15);
      textColor = AppColors.success;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
          color: textColor,
          fontSize: 11,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
