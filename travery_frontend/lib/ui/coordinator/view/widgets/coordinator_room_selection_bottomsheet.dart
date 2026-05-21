import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'coordinator_button.dart';
import 'coordinator_room_selection_checkbox.dart';

class RoomOption {
  final String label;
  final String imageUrl;
  final int availableCount;
  bool isSelected;
  final TextEditingController controller;

  RoomOption({
    required this.label,
    required this.imageUrl,
    required this.availableCount,
    this.isSelected = false,
  }) : controller = TextEditingController();
}

class CoordinatorRoomSelectionBottomsheet extends StatefulWidget {
  final String hotelName;
  final String location;
  final int tourPeopleCount;
  final int bookedCount;
  final int availableCount;
  final List<RoomOption> roomOptions;
  final void Function(List<RoomOption> selected)? onConfirm;

  const CoordinatorRoomSelectionBottomsheet({
    super.key,
    required this.hotelName,
    required this.location,
    required this.tourPeopleCount,
    required this.bookedCount,
    required this.availableCount,
    required this.roomOptions,
    this.onConfirm,
  });

  @override
  State<CoordinatorRoomSelectionBottomsheet> createState() =>
      _CoordinatorRoomSelectionBottomsheetState();
}

class _CoordinatorRoomSelectionBottomsheetState
    extends State<CoordinatorRoomSelectionBottomsheet> {
  late List<RoomOption> _rooms;

  @override
  void initState() {
    super.initState();
    _rooms = widget.roomOptions;
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height * 0.92;

    return Container(
      constraints: BoxConstraints(maxHeight: maxHeight),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: AppColors.inputBorder,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Icon(
                    Icons.close,
                    size: 22,
                    color: AppColors.textSecondary,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      'Chọn phòng',
                      style: const TextStyle(
                        fontSize: AppTextTheme.bodyLarge,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 22),
              ],
            ),
          ),

          // Hotel info
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.hotelName,
                  style: const TextStyle(
                    fontSize: AppTextTheme.headlineSmall,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      size: 14,
                      color: AppColors.textSecondary,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      widget.location,
                      style: const TextStyle(
                        fontSize: AppTextTheme.bodySmall,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                // Stats row
                Row(
                  children: [
                    _buildStatChip(
                      label: 'TOUR',
                      value: '${widget.tourPeopleCount} người',
                      bgColor: AppColors.inputBackground,
                      valueColor: AppColors.textPrimary,
                    ),
                    const SizedBox(width: 8),
                    _buildStatChip(
                      label: 'ĐÃ ĐẶT',
                      value: '${widget.bookedCount}',
                      bgColor: const Color(0xFFEEF2FF),
                      valueColor: AppColors.primary,
                    ),
                    const SizedBox(width: 8),
                    _buildStatChip(
                      label: 'TRỐNG',
                      value: '${widget.availableCount}',
                      bgColor: const Color(0xFFFFF0F0),
                      valueColor: AppColors.error,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),

          // Room list
          Flexible(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: _rooms.length,
              separatorBuilder: (_, _) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final room = _rooms[index];
                return CoordinatorRoomSelectionCheckbox(
                  label: room.label,
                  imageurl: room.imageUrl,
                  hintext:
                      'Còn ${room.availableCount} phòng trống\nNhập số lượng...',
                  isSelected: room.isSelected,
                  onChanged: (val) {
                    setState(() {
                      room.isSelected = val ?? false;
                    });
                  },
                  controller: room.controller,
                );
              },
            ),
          ),

          const SizedBox(height: 16),

          // Confirm button
          Padding(
            padding: EdgeInsets.fromLTRB(
              16,
              0,
              16,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            child: CoordinatorButton(
              text: 'Xác nhận chọn',
              color: AppColors.primaryDarkBlackBlue,
              onTap: () {
                final selected = _rooms.where((r) => r.isSelected).toList();
                Navigator.of(context).pop();
                widget.onConfirm?.call(selected);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatChip({
    required String label,
    required String value,
    required Color bgColor,
    required Color valueColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondary,
                letterSpacing: 0.8,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: TextStyle(
                fontSize: AppTextTheme.headlineSmall,
                fontWeight: FontWeight.bold,
                color: valueColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
