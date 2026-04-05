import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';

class BottomActionBar extends StatelessWidget {
  final double price;
  final VoidCallback onTap;

  const BottomActionBar({super.key, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final priceStr = price.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{3})(?=\d)'),
      (Match m) => '${m[1]}.',
    );

    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
      decoration: BoxDecoration(
        color: AppTheme.neutralWhite.withOpacity(0.95),
        border: const Border(top: BorderSide(color: AppTheme.borderStroke)),
      ),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Giá từ", style: textTheme.labelSmall),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    priceStr,
                    style: textTheme.bodyLarge?.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.primaryMain,
                    ),
                  ),

                  const SizedBox(width: 2),
                  Text(
                    "đ",
                    style: textTheme.bodyLarge?.copyWith(
                      color: AppTheme.primaryMain,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primaryMain,
              foregroundColor: AppTheme.neutralWhite,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              elevation: 4,
              shadowColor: AppTheme.primaryMain.withOpacity(0.4),
            ),
            child: Text(
              "Đặt tour ngay",
              style: textTheme.bodyLarge?.copyWith(
                color: AppTheme.neutralWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
