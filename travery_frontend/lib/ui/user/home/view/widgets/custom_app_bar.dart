
import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String greeting;
  final String userName;
  final VoidCallback? onNotificationTap;
  final int notificationCount;

  const CustomAppBar({
    super.key,
    required this.greeting,
    required this.userName,
    this.onNotificationTap,
    this.notificationCount = 0,
  });

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.waving_hand, color: AppColors.primary, size: 24),
                  const SizedBox(width: 8),
                  Text(
                    '$greeting, $userName',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                ],
              ),
              _NotificationButton(
                onTap: onNotificationTap,
                count: notificationCount,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NotificationButton extends StatelessWidget {
  final VoidCallback? onTap;
  final int count;

  const _NotificationButton({this.onTap, this.count = 0});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const Icon(
                Icons.notifications_outlined,
                color: AppColors.textSecondary,
              ),
              if (count > 0)
                Positioned(
                  top: 6,
                  right: 6,
                  child: Container(
                    width: 16,
                    height: 16,
                    decoration: const BoxDecoration(
                      color: AppColors.error,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        count > 9 ? '9+' : count.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
