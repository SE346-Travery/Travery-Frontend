import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';
import '../../model/tour_model.dart';

class TourCard extends StatelessWidget {
  final Tour tour;
  final VoidCallback? onPressed;
  const TourCard({super.key, required this.tour, this.onPressed});

  @override
  Widget build(BuildContext context) {
    final priceFormatter = tour.price.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{3})(?=\d)'),
      (Match m) => '${m[1]}.',
    );

    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: AppTheme.neutralWhite,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppTheme.neutralDark.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Ảnh tour
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: Image.network(
              tour.thumbnail,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Tiêu đề + rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        tour.title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    if (tour.rating != null)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.warning.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: AppTheme.warning,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "${tour.rating}",
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 12),

                // Ngày đi + thời gian
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today_outlined,
                      size: 14,
                      color: AppTheme.neutralGrey2,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      "${tour.departureDate.day}/${tour.departureDate.month}/${tour.departureDate.year}",
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    const SizedBox(width: 20),
                    const Icon(
                      Icons.access_time,
                      size: 14,
                      color: AppTheme.neutralGrey2,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      tour.duration,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Divider(color: AppTheme.neutralGrey1, height: 1),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'CHỈ TỪ',
                          style: TextStyle(
                            fontSize: 10,
                            color: AppTheme.neutralGrey2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${priceFormatter}đ",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color: AppTheme.primaryMain,
                          ),
                        ),
                        Text(
                          "Còn ${tour.availableSlots} chỗ",
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppTheme.neutralGrey2,
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.primaryMain,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                      ),
                      child: const Text(
                        "Chi tiết tour",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
