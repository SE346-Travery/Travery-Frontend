import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';

class CoordinatorRoom {
  final String roomType;
  final int quantity;

  const CoordinatorRoom({
    required this.roomType,
    required this.quantity,
  });
}

class CoordinatorTourHotelCard extends StatelessWidget {
  final String hotelName;
  final String cityProvince;
  final List<CoordinatorRoom> rooms;
  final String? imageUrl;

  const CoordinatorTourHotelCard({
    super.key,
    required this.hotelName,
    required this.cityProvince,
    required this.rooms,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Left blue accent
              Container(
                width: 5,
                color: AppColors.primary,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Top Section: Image + Name + City
                      Row(
                        children: [
                          _buildImage(),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hotelName,
                                  style: const TextStyle(
                                    fontSize: AppTextTheme.bodyLarge,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textPrimary,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  cityProvince,
                                  style: const TextStyle(
                                    fontSize: AppTextTheme.bodySmall,
                                    color: AppColors.textSecondary,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // Room List
                      ...rooms.asMap().entries.map((entry) {
                        final index = entry.key;
                        final room = entry.value;
                        return Column(
                          children: [
                            if (index > 0)
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 12),
                                child: Divider(
                                  height: 1,
                                  thickness: 0.5,
                                  color: AppColors.inputBorder,
                                ),
                              ),
                            _buildRoomItem(room),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      width: 54,
      height: 54,
      decoration: BoxDecoration(
        color: AppColors.primaryLightWhiteBlue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.home_work_rounded,
                  color: AppColors.primaryDark,
                  size: 28,
                ),
              )
            : const Icon(
                Icons.home_work_rounded,
                color: AppColors.primaryDark,
                size: 28,
              ),
      ),
    );
  }

  Widget _buildRoomItem(CoordinatorRoom room) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: _buildInfoItem(
            label: 'LOẠI PHÒNG',
            value: room.roomType,
          ),
        ),
        Expanded(
          flex: 1,
          child: _buildInfoItem(
            label: 'SỐ LƯỢNG',
            value: '${room.quantity}x',
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
        ),
      ],
    );
  }

  Widget _buildInfoItem({
    required String label,
    required String value,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start,
  }) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: AppColors.textHint,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: AppTextTheme.bodyMedium,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
