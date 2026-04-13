import 'package:flutter/material.dart';

class TourImageCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const TourImageCarousel({super.key, required this.imageUrls});

  @override
  State<TourImageCarousel> createState() => _TourImageCarouselState();
}

class _TourImageCarouselState extends State<TourImageCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) {
              return Image.network(widget.imageUrls[index], fit: BoxFit.cover, width: double.infinity);
            },
          ),
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imageUrls.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.symmetric(horizontal: 3),
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.white : Colors.white.withOpacity(0.4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
