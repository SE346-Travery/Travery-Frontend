import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';

enum ReceptionistNavItem { status, arrivals, depart, tasks }

class BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback? onTap;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.label,
    this.isActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isActive ? AppColors.iconActive : AppColors.textSecondary,
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: isActive
                    ? AppColors.iconActive
                    : AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReceptionistBottomNavigation extends StatelessWidget {
  final ReceptionistNavItem activeItem;
  final Function(ReceptionistNavItem)? onItemTap;

  const ReceptionistBottomNavigation({
    super.key,
    required this.activeItem,
    this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.inputBorder)),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: BottomNavItem(
                icon: Icons.home,
                label: 'STATUS',
                isActive: activeItem == ReceptionistNavItem.status,
                onTap: onItemTap != null
                    ? () => onItemTap!(ReceptionistNavItem.status)
                    : null,
              ),
            ),
            Expanded(
              child: BottomNavItem(
                icon: Icons.login,
                label: 'ARRIVALS',
                isActive: activeItem == ReceptionistNavItem.arrivals,
                onTap: onItemTap != null
                    ? () => onItemTap!(ReceptionistNavItem.arrivals)
                    : null,
              ),
            ),
            Expanded(
              child: BottomNavItem(
                icon: Icons.logout,
                label: 'DEPART',
                isActive: activeItem == ReceptionistNavItem.depart,
                onTap: onItemTap != null
                    ? () => onItemTap!(ReceptionistNavItem.depart)
                    : null,
              ),
            ),
            Expanded(
              child: BottomNavItem(
                icon: Icons.assignment,
                label: 'TASKS',
                isActive: activeItem == ReceptionistNavItem.tasks,
                onTap: onItemTap != null
                    ? () => onItemTap!(ReceptionistNavItem.tasks)
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
