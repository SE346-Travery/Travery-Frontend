import 'package:flutter/material.dart';
import 'package:travery_frontend/domain/models/admin/business_tour/business_tour.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

extension TourTrendProps on TourTrend {
  Color get color {
    switch (this) {
      case TourTrend.up:
        return AppColors.success;
      case TourTrend.down:
        return AppColors.error;
      case TourTrend.stable:
        return AppColors.textSecondary;
    }
  }

  IconData get icon {
    switch (this) {
      case TourTrend.up:
        return Icons.trending_up_rounded;
      case TourTrend.down:
        return Icons.trending_down_rounded;
      case TourTrend.stable:
        return Icons.trending_flat_rounded;
    }
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// TourCard
// ─────────────────────────────────────────────────────────────────────────────

class TourCard extends StatelessWidget {
  const TourCard({
    super.key,
    required this.rank,
    required this.tourName,
    required this.category,
    required this.trend,
    this.imageUrl,
    this.onTap,
  });

  /// Ranking position (1-based)
  final int rank;

  /// Tour name, e.g. "Hạ Long – Cát Bà 3N2D"
  final String tourName;

  /// Category label, e.g. "Cruise & Luxury Resort"
  final String category;

  /// Revenue trend
  final TourTrend trend;

  /// Network image of the tour
  final String? imageUrl;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ── Rank number ───────────────────────────────────────────
                _RankBadge(rank: rank),

                const SizedBox(width: 12),

                // ── Tour thumbnail ────────────────────────────────────────
                _buildThumbnail(),

                const SizedBox(width: 12),

                // ── Name + category ───────────────────────────────────────
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tourName,
                        style: TextStyle(
                          fontSize: AppTextTheme.bodyMedium,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        category,
                        style: TextStyle(
                          fontSize: AppTextTheme.bodySmall,
                          color: AppColors.textSecondary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 8),

                // ── Trend icon ────────────────────────────────────────────
                Icon(trend.icon, size: 22, color: trend.color),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: imageUrl != null
          ? Image.network(
              imageUrl!,
              width: 52,
              height: 52,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) => _placeholder(),
            )
          : _placeholder(),
    );
  }

  Widget _placeholder() {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xFFE8EDF5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.landscape_rounded,
        size: 26,
        color: Color(0xFF1A73E8),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Rank badge (1 → gold, 2 → silver, 3 → bronze, else plain)
// ─────────────────────────────────────────────────────────────────────────────

class _RankBadge extends StatelessWidget {
  const _RankBadge({required this.rank});

  final int rank;

  Color get _bgColor {
    switch (rank) {
      case 1:
        return const Color(0xFFF2C94C); // gold
      case 2:
        return const Color(0xFFBDBDBD); // silver
      case 3:
        return const Color(0xFFCD7F32); // bronze
      default:
        return AppColors.inputBackground;
    }
  }

  Color get _textColor {
    switch (rank) {
      case 1:
      case 2:
      case 3:
        return Colors.white;
      default:
        return AppColors.textSecondary;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
        color: _bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      alignment: Alignment.center,
      child: Text(
        '$rank',
        style: TextStyle(
          fontSize: AppTextTheme.bodySmall,
          fontWeight: FontWeight.bold,
          color: _textColor,
        ),
      ),
    );
  }
}
