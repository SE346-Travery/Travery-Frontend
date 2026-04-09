
import 'package:flutter/material.dart';
import '../../../../core/themes/app_colors.dart';
import 'tour_card.dart';

class TourData {
  final String imageUrl;
  final String title;
  final String duration;
  final String price;

  const TourData({
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.price,
  });
}

class HorizontalTourList extends StatelessWidget {
  final List<TourData> tours;
  final Function(TourData)? onTourTap;

  const HorizontalTourList({super.key, required this.tours, this.onTourTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: tours.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final tour = tours[index];
          return TourCard(
            imageUrl: tour.imageUrl,
            title: tour.title,
            duration: tour.duration,
            price: tour.price,
            onTap: () => onTourTap?.call(tour),
          );
        },
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;

  const SectionHeader({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
          if (actionText != null)
            TextButton(
              onPressed: onActionTap,
              child: Text(
                actionText!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
