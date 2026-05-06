import 'package:flutter/material.dart';
import 'package:travery_frontend/domain/models/admin/admin_data_models.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class VehicleCard extends StatelessWidget {
  const VehicleCard({
    super.key,
    required this.routeFrom,
    required this.routeTo,
    required this.status,
    required this.plateNumber,
    required this.vehicleType,
    required this.seatCount,
    required this.driverName,
    this.onTap,
  });

  /// Departure location code, e.g. "SGN"
  final String routeFrom;

  /// Arrival location code, e.g. "DLT"
  final String routeTo;

  final CoachStatus status;

  /// Licence plate displayed on the right, e.g. "51B - 882.41"
  final String plateNumber;

  /// Vehicle type label, e.g. "VIP Sleeper"
  final String vehicleType;

  /// Number of seats
  final int seatCount;

  /// Driver's full name
  final String driverName;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: AppColors.primary,
          highlightColor: AppColors.primary,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ── Row 1: Route ── Status badge ── Plate number ────────────
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Route text — bold
                    Text(
                      '$routeFrom \u2014 $routeTo',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodyLarge,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),

                    const SizedBox(width: 8),

                    // Status badge
                    _StatusBadge(status: status),

                    const Spacer(),

                    // Plate number
                    Text(
                      plateNumber,
                      style: TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        color: AppColors.textSecondary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // ── Row 2: Vehicle type / seats ── Driver name ───────────────
                Row(
                  children: [
                    // Bus seat icon + vehicle type + seat count
                    Icon(
                      Icons.directions_bus_outlined,
                      size: 15,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '$vehicleType ($seatCount)',
                      style: TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        color: AppColors.textSecondary,
                      ),
                    ),

                    const Spacer(),

                    // Person icon + driver name
                    Icon(
                      Icons.person_outline_rounded,
                      size: 15,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      driverName,
                      style: TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Status badge pill
// ─────────────────────────────────────────────────────────────────────────────

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final CoachStatus status;

  String _getLabel(CoachStatus status) {
    switch (status) {
      case CoachStatus.running:
        return 'Đang chạy';
      case CoachStatus.available:
        return 'Sẵn sàng';
    }
  }

  Color _getColor(CoachStatus status) {
    switch (status) {
      case CoachStatus.running:
        return const Color(0xFF1A73E8); // primary blue
      case CoachStatus.available:
        return const Color(0xFF2E7D32); // rich green
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: _getColor(status),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        _getLabel(status),
        style: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          letterSpacing: 0.4,
        ),
      ),
    );
  }
}

