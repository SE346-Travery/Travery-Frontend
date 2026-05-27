import 'package:flutter/material.dart';
import 'package:travery_frontend/data/models/tour/tour_detail_page_data.dart';

class TourImageCarousel extends StatelessWidget {
  const TourImageCarousel({super.key, required this.images});

  final List<TourImagePageData> images;

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return Container(
        color: const Color(0xFFEAEDFF),
        child: const Center(
          child: Icon(Icons.image, size: 60, color: Color(0xFF717786)),
        ),
      );
    }

    return PageView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Image.network(
          images[index].url,
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => Container(
            color: const Color(0xFFEAEDFF),
            child: const Center(
              child: Icon(Icons.image, size: 60, color: Color(0xFF717786)),
            ),
          ),
        );
      },
    );
  }
}
