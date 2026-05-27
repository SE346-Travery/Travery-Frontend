import 'package:flutter/material.dart';
import '../../../core/themes/app_text_theme.dart';

class CoordinatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData? prefixIcon;
  final VoidCallback? onTap;

  const CoordinatorButton({
    super.key,
    required this.text,
    required this.color,
    this.prefixIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixIcon != null) ...[
                  Icon(
                    prefixIcon,
                    color: Colors.white,
                    size: 18.0,
                  ),
                  const SizedBox(width: 8.0),
                ],
                Flexible(
                  child: Text(
                    text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: AppTextTheme.bodyMedium,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
