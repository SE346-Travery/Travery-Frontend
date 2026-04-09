
import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';


class TourCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String duration;
  final String price;
  final String priceLabel;
  final VoidCallback? onTap;

  const TourCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.duration,
    required this.price,
    this.priceLabel = 'Chỉ từ',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 30,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(color: AppColors.inputBorder.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TourCardImage(imageUrl: imageUrl, duration: duration),
          _TourCardContent(
            title: title,
            priceLabel: priceLabel,
            price: price,
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}

class _TourCardImage extends StatelessWidget {
  final String imageUrl;
  final String duration;

  const _TourCardImage({required this.imageUrl, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
          child: Image.network(
            imageUrl,
            height: 176,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              height: 176,
              color: AppColors.inputBackground,
              child: const Icon(
                Icons.image,
                size: 48,
                color: AppColors.textHint,
              ),
            ),
          ),
        ),
        Positioned(top: 12, left: 12, child: DurationBadge(duration: duration)),
      ],
    );
  }
}

class _TourCardContent extends StatelessWidget {
  final String title;
  final String priceLabel;
  final String price;
  final VoidCallback? onTap;

  const _TourCardContent({
    required this.title,
    required this.priceLabel,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
              height: 1.3,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    priceLabel.toUpperCase(),
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: AppColors.textHint,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              CircleIconButton(icon: Icons.chevron_right, onTap: onTap),
            ],
          ),
        ],
      ),
    );
  }
}

class DurationBadge extends StatelessWidget {
  final String duration;

  const DurationBadge({super.key, required this.duration});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.schedule, size: 14, color: AppColors.warning),
          const SizedBox(width: 4),
          Text(
            duration,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  final Color? backgroundColor;
  final Color? iconColor;

  const CircleIconButton({
    super.key,
    required this.icon,
    this.onTap,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor ?? AppColors.primary,
      borderRadius: BorderRadius.circular(12),
      elevation: 4,
      shadowColor: AppColors.primary.withOpacity(0.3),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 40,
          height: 40,
          alignment: Alignment.center,
          child: Icon(icon, color: iconColor ?? Colors.white, size: 24),
        ),
      ),
    );
  }
}
