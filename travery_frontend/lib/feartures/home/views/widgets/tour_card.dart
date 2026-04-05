import 'package:flutter/material.dart';
import 'package:travery_frontend/feartures/tour/views/pages/tour_detail_page.dart';

import '../../../core/themes/app_theme.dart';
import '../../../tour/model/tour_model.dart';

class TourCard extends StatelessWidget {
  final Tour tour;

  const TourCard({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    final priceFormatter = tour.price.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{3})(?=\d)'),
      (Match m) => '${m[1]}.',
    );

    return Container(
      width: 280,
      margin: const EdgeInsets.only(right: 16, bottom: 10, top: 5),
      decoration: BoxDecoration(
        color: AppTheme.neutralWhite,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppTheme.neutralDark.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            child: Image.network(
              tour.thumbnail,
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tour.title,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: AppTheme.neutralDark,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "${tour.departureDate.day}/${tour.departureDate.month}/${tour.departureDate.year}",
                  style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: AppTheme.neutralGrey2,
                  ),
                ),
                const SizedBox(height: 8),
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
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TourDetailScreen(tourId: tour.id),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(
                          4,
                        ),
                        decoration: BoxDecoration(
                          color: AppTheme.primaryMain,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.chevron_right,
                          color: AppTheme.neutralWhite,
                          size: 20,
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
