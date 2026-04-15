import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class BookingStatusHeader extends StatelessWidget {
  final String bookingId;
  final String tourName;
  final String? imageUrl;
  final VoidCallback? onShare;
  final VoidCallback? onMore;

  const BookingStatusHeader({
    super.key,
    required this.bookingId,
    required this.tourName,
    this.imageUrl,
    this.onShare,
    this.onMore,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mã đặt chỗ: #$bookingId',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: AppColors.textSecondary, letterSpacing: 0.5),
                ),
                const SizedBox(height: 4),
                Text(
                  tourName,
                  style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w800, color: AppColors.textPrimary, letterSpacing: -0.3),
                ),
              ],
            ),
            Row(
              children: [
                if (onShare != null)
                  IconButton(onPressed: onShare, icon: const Icon(Icons.share_outlined, color: AppColors.icon)),
                if (onMore != null)
                  IconButton(onPressed: onMore, icon: const Icon(Icons.more_vert, color: AppColors.icon)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
