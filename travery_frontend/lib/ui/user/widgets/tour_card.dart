import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class TourCard extends StatelessWidget {
  const TourCard({
    super.key,
    required this.id,
    required this.name,
    required this.price,
    this.thumbnailUrl,
    this.destinationName,
    this.durationDays,
    this.averageRating,
    required this.onTap,
  });

  final String id;
  final String name;
  final double price;
  final String? thumbnailUrl;
  final String? destinationName;
  final int? durationDays;
  final double? averageRating;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  thumbnailUrl != null && thumbnailUrl!.isNotEmpty
                      ? Image.network(
                          thumbnailUrl!,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => _placeholderImage(),
                        )
                      : _placeholderImage(),
                  if (averageRating != null && averageRating! > 0)
                    Positioned(
                      top: 12,
                      left: 12,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.9),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.orange,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              averageRating!.toStringAsFixed(1),
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF131B2E),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Info
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (destinationName != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 12,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              destinationName!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Text(
                    name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF131B2E),
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      if (durationDays != null) ...[
                        Icon(
                          Icons.schedule,
                          size: 12,
                          color: const Color(0xFF414755),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _formatDuration(durationDays!),
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color(0xFF414755),
                          ),
                        ),
                        const SizedBox(width: 12),
                      ],
                      const Spacer(),
                      Text(
                        _formatPrice(price),
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w900,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _placeholderImage() {
    return Container(
      color: const Color(0xFFEAEDFF),
      child: const Center(
        child: Icon(Icons.image_outlined, size: 40, color: Color(0xFF717786)),
      ),
    );
  }

  String _formatDuration(int days) {
    if (days == 1) return '1 Ngày';
    final nightCount = days - 1;
    if (nightCount == 1) return '1 Đêm';
    return '$days Ngày $nightCount Đêm';
  }

  String _formatPrice(double price) {
    if (price >= 1000000) {
      return '${(price / 1000000).toStringAsFixed(price % 1000000 == 0 ? 0 : 1)}trđ';
    }
    return '${price.toStringAsFixed(0)}đ';
  }
}
