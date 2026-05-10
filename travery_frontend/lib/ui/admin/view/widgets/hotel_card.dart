import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

// ─────────────────────────────────────────────────────────────────────────────
// HotelCard
// ─────────────────────────────────────────────────────────────────────────────

class HotelCard extends StatelessWidget {
  const HotelCard({
    super.key,
    required this.name,
    required this.location,
    required this.district,
    required this.roomCount,
    required this.occupancyRate,
    required this.rating,
    this.imageUrl,
    this.onTap,
  });

  /// e.g. "Grand Diamond Saigon"
  final String name;

  /// e.g. "TP. Hồ Chí Minh"
  final String location;

  /// e.g. "Quận 1"
  final String district;

  /// Total number of rooms
  final int roomCount;

  /// Occupancy rate 0.0 – 1.0
  final double occupancyRate;

  /// Star rating e.g. 4.8
  final double rating;

  /// Network image of the hotel
  final String? imageUrl;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final occupancyPct = (occupancyRate * 100).round();

    return Container(
      color: AppColors.surface,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.primary.withValues(alpha: 0.06),
          highlightColor: AppColors.primary.withValues(alpha: 0.03),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ── Thumbnail ─────────────────────────────────────────────
                _buildThumbnail(),

                const SizedBox(width: 12),

                // ── Info ──────────────────────────────────────────────────
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Name
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: AppTextTheme.bodyLarge,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      const SizedBox(height: 2),

                      // District + Location
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 13,
                            color: AppColors.textSecondary,
                          ),
                          const SizedBox(width: 2),
                          Expanded(
                            child: Text(
                              '$district, $location',
                              style: TextStyle(
                                fontSize: AppTextTheme.bodySmall,
                                color: AppColors.textSecondary,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      // Room count + occupancy percentage
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Phòng: $roomCount',
                            style: TextStyle(
                              fontSize: AppTextTheme.bodySmall,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryDarkBlackBlue,
                            ),
                          ),
                          Text(
                            '$occupancyPct% Lấp đầy',
                            style: TextStyle(
                              fontSize: AppTextTheme.bodySmall,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryDarkBlackBlue,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 4),

                      // Occupancy progress bar
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: LinearProgressIndicator(
                          value: occupancyRate.clamp(0.0, 1.0),
                          minHeight: 5,
                          backgroundColor: AppColors.inputBorder,
                          color: AppColors.primaryDarkBlackBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: imageUrl != null
              ? Image.network(
                  imageUrl!,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                  errorBuilder: (_, _, _) => _placeholder(),
                )
              : _placeholder(),
        ),
        // Rating badge
        Positioned(
          bottom: 4,
          left: 4,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
              color: AppColors.primaryDarkBlackBlue,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star_rounded, size: 10, color: Colors.white),
                const SizedBox(width: 2),
                Text(
                  rating.toStringAsFixed(1),
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _placeholder() {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        color: const Color(0xFFE8EDF5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.hotel_rounded,
        size: 32,
        color: Color(0xFF1A73E8),
      ),
    );
  }
}
