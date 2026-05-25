import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class UserBottomNav extends StatelessWidget {
  const UserBottomNav({super.key, this.initialIndex = 0});

  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: initialIndex,
        children: const [
          _UserHomeContent(),
          _UserBookingsContent(),
          _UserChatContent(),
          _UserProfileContent(),
        ],
      ),
      bottomNavigationBar: _BottomNavBar(currentIndex: initialIndex),
    );
  }
}

class _UserHomeContent extends StatelessWidget {
  const _UserHomeContent();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Home Content'));
  }
}

class _UserBookingsContent extends StatelessWidget {
  const _UserBookingsContent();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('My Bookings Content'));
  }
}

class _UserChatContent extends StatelessWidget {
  const _UserChatContent();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Chat - Coming Soon')));
  }
}

class _UserProfileContent extends StatelessWidget {
  const _UserProfileContent();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Profile - Coming Soon')));
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({required this.currentIndex});

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 24,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavItem(
                icon: Icons.home_outlined,
                activeIcon: Icons.home,
                label: 'Trang chủ',
                isActive: currentIndex == 0,
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.confirmation_number_outlined,
                activeIcon: Icons.confirmation_number,
                label: 'Đơn của tôi',
                isActive: currentIndex == 1,
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.chat_bubble_outline,
                activeIcon: Icons.chat_bubble,
                label: 'Chat',
                isActive: currentIndex == 2,
                onTap: () {},
              ),
              _NavItem(
                icon: Icons.person_outline,
                activeIcon: Icons.person,
                label: 'Cá nhân',
                isActive: currentIndex == 3,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.activeIcon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final IconData icon;
  final IconData activeIcon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.primary.withValues(alpha: 0.08)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              isActive ? activeIcon : icon,
              size: 24,
              color: isActive ? AppColors.primary : Colors.grey[400],
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w500,
                color: isActive ? AppColors.primary : Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
