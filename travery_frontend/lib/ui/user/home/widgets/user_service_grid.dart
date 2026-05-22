import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class UserServiceGrid extends StatelessWidget {
  final VoidCallback? onCoachTap;
  final VoidCallback? onTourTap;
  final VoidCallback? onHotelTap;

  const UserServiceGrid({
    super.key,
    this.onCoachTap,
    this.onTourTap,
    this.onHotelTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildServiceItem(Icons.directions_bus, 'Vé xe', onCoachTap),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildServiceItem(Icons.travel_explore, 'Tour', onTourTap),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildServiceItem(Icons.apartment, 'Khách sạn', onHotelTap),
        ),
      ],
    );
  }

  Widget _buildServiceItem(IconData icon, String label, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.03),
                  blurRadius: 6,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Icon(icon, color: AppColors.primary, size: 30),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
