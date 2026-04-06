import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class ItineraryCard extends StatelessWidget {
  final String dayTitle;
  final String description;
  final bool expanded;

  const ItineraryCard({
    super.key,
    required this.dayTitle,
    required this.description,
    this.expanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: expanded,
      title: Text(
        dayTitle,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            description,
            style: const TextStyle(color: AppColors.textSecondary),
          ),
        ),
      ],
    );
  }
}