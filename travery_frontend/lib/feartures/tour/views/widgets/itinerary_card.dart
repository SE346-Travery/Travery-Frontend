import 'package:flutter/material.dart';
import '../../../core/themes/app_theme.dart';

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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: AppTheme.neutralWhite,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.borderStroke),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
        ),

        child: ExpansionTile(
          initiallyExpanded: expanded,
          title: Text(
            dayTitle,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                description,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.black54,
                  height: 1.6,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
