import 'package:flutter/material.dart';

import '../../../../../../../data/model/tour_model.dart';

class TourSummaryCard extends StatelessWidget {
  final Tour tour;

  const TourSummaryCard({super.key, required this.tour});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://tse2.mm.bing.net/th/id/OIP.ybq_2H5aKIZStGW4VwVTbgHaEe?rs=1&pid=ImgDetMain&o=7&rm=3",
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Tour Hạ Long 5 Sao: Khám phá Vịnh Kỳ Quan Thế Giới",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    height: 1.2,
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: const Color(0xFF64748B),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        "${tour.departureDate.day}/${tour.departureDate.month}/${tour.departureDate.year}",
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Row(
                    children: [
                      Icon(
                        Icons.schedule,
                        size: 14,
                        color: const Color(0xFF64748B),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        tour.duration,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF64748B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
