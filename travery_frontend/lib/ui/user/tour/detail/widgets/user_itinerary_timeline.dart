import 'package:flutter/material.dart';
import 'package:travery_frontend/data/services/api/model/tour/tour_intinerary_response/tour_itinerary_response.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class UserItineraryTimeline extends StatelessWidget {
  final List<TourItineraryResponse> itineraries;

  const UserItineraryTimeline({super.key, required this.itineraries});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 11,
          top: 12,
          bottom: 12,
          width: 2,
          child: Container(color: AppColors.primary.withOpacity(0.2)),
        ),
        Column(
          children: itineraries.map((itinerary) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${itinerary.dayNumber}',
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itinerary.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                            fontFamily: 'Inter',
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          itinerary.description,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.textSecondary,
                            height: 1.3,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
