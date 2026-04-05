import 'package:flutter/material.dart';

import '../../../core/themes/app_theme.dart';


class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    Widget navItem(IconData icon, String label, {bool active = false}) {
      final color = active
          ? AppTheme
                .primaryMain
          : AppTheme.neutralGrey2;

      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontSize: 11,
              fontWeight: active ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ],
      );
    }

    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: AppTheme.neutralWhite.withOpacity(0.9),
        border: const Border(
          top: BorderSide(
            color: AppTheme.borderStroke,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(Icons.home, 'Home', active: true),
          navItem(Icons.chat_bubble_outline, 'Chat'),
          navItem(Icons.person_outline, 'Cá nhân'),
        ],
      ),
    );
  }
}
