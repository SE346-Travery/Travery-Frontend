import 'package:flutter/material.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_coach_selection_bottomsheet.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_input_field.dart';

class CoordinatorCreateCoachScreen extends StatefulWidget {
  const CoordinatorCreateCoachScreen({super.key});

  @override
  State<CoordinatorCreateCoachScreen> createState() =>
      _CoordinatorCreateCoachScreenState();
}

class _CoordinatorCreateCoachScreenState
    extends State<CoordinatorCreateCoachScreen> {
  final TextEditingController _priceController = TextEditingController();

  CoordinatorDriver? _selectedDriver;
  CoordinatorVehicle? _selectedVehicle;

  // List of stop points
  final List<_StopPoint> _stopPoints = [_StopPoint(), _StopPoint()];

  @override
  void dispose() {
    _priceController.dispose();
    for (final s in _stopPoints) {
      s.dispose();
    }
    super.dispose();
  }

  void _openCoachSelection() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => CoordinatorCoachSelectionBottomsheet(
        onSelectionConfirmed: (driver, vehicle) {
          setState(() {
            if (driver != null) _selectedDriver = driver;
            if (vehicle != null) _selectedVehicle = vehicle;
          });
        },
      ),
    );
  }

  Future<void> _pickDate(int stopIndex) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _stopPoints[stopIndex].selectedDate ?? now,
      firstDate: now,
      lastDate: DateTime(now.year + 5),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primary,
            onPrimary: Colors.white,
          ),
        ),
        child: child!,
      ),
    );
    if (picked != null) {
      setState(() => _stopPoints[stopIndex].selectedDate = picked);
    }
  }

  Future<void> _pickTime(int stopIndex) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _stopPoints[stopIndex].selectedTime ?? TimeOfDay.now(),
      builder: (ctx, child) => Theme(
        data: Theme.of(ctx).copyWith(
          colorScheme: const ColorScheme.light(
            primary: AppColors.primary,
            onPrimary: Colors.white,
          ),
        ),
        child: child!,
      ),
    );
    if (picked != null) {
      setState(() => _stopPoints[stopIndex].selectedTime = picked);
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day.toString().padLeft(2, '0')}/'
        '${date.month.toString().padLeft(2, '0')}/'
        '${date.year}';
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return '';
    return '${time.hour.toString().padLeft(2, '0')}:'
        '${time.minute.toString().padLeft(2, '0')}';
  }

  void _onConfirm() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Chuyến xe đã được tạo thành công!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // AppBar
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 16, 0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: AppColors.textPrimary,
                      size: 26,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Chuyến xe mới',
                          style: TextStyle(
                            fontSize: AppTextTheme.headlineSmall,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'Nhập các thông tin cần thiết để tạo tour',
                          style: TextStyle(
                            fontSize: AppTextTheme.bodySmall,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: AppColors.primaryDarkBlackBlue,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: _onConfirm,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Text(
                          'Xác nhận',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppTextTheme.bodyMedium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Chọn phương tiện
                    _buildSelectionTile(
                      icon: Icons.directions_bus_filled_rounded,
                      title: 'Chọn phương tiện',
                      subtitle: _selectedVehicle != null
                          ? '${_selectedVehicle!.vehicleType} · ${_selectedVehicle!.licensePlate}'
                          : 'Chưa chọn xe',
                      onTap: _openCoachSelection,
                    ),
                    const SizedBox(height: 12),

                    // Chọn tài xế
                    _buildSelectionTile(
                      icon: Icons.person_outline_rounded,
                      title: 'Chọn tài xế',
                      subtitle: _selectedDriver != null
                          ? _selectedDriver!.name
                          : 'Chưa chọn tài xế',
                      onTap: _openCoachSelection,
                    ),
                    const SizedBox(height: 20),

                    // Giá vé
                    CoordinatorInputField(
                      label: 'Giá vé',
                      hintText: 'Nhập giá...',
                      controller: _priceController,
                      suffixIcon: const Icon(
                        Icons.attach_money_rounded,
                        size: 18,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Stop points
                    for (int i = 0; i < _stopPoints.length; i++) ...[
                      _buildStopPointCard(i),
                      if (i < _stopPoints.length - 1) ...[
                        const SizedBox(height: 8),
                        Center(
                          child: Text(
                            '↓↑',
                            style: TextStyle(
                              fontSize: 22,
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                      ],
                    ],

                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelectionTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.surface,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                color: AppColors.primaryLightWhiteBlue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: AppColors.primary, size: 22),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodyLarge,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.chevron_right_rounded,
              color: AppColors.textSecondary,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStopPointCard(int index) {
    final stop = _stopPoints[index];
    final label = index + 1;

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.primaryDarkBlackBlue, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title row
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: index == 0
                      ? AppColors.primaryDarkBlackBlue
                      : AppColors.surface,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.primaryDarkBlackBlue,
                    width: 2,
                  ),
                ),
                child: Center(
                  child: Text(
                    '$label',
                    style: TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      fontWeight: FontWeight.bold,
                      color: index == 0
                          ? Colors.white
                          : AppColors.primaryDarkBlackBlue,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                'Địa điểm $label',
                style: const TextStyle(
                  fontSize: AppTextTheme.bodyLarge,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Province dropdown placeholder
          _buildDropdownField(
            hint: 'Chọn tỉnh, thành phố',
            icon: Icons.location_on_outlined,
            suffixIcon: Icons.keyboard_arrow_down_rounded,
            onTap: () {},
          ),
          const SizedBox(height: 10),

          // Address input
          CoordinatorInputField(
            hintText: 'Nhập địa chỉ chi tiết',
            controller: stop.addressController,
            suffixIcon: const Icon(
              Icons.edit_outlined,
              size: 16,
              color: AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: 10),

          // Date and Time row
          Row(
            children: [
              Expanded(
                child: _buildPickerButton(
                  label: _formatDate(stop.selectedDate).isNotEmpty
                      ? _formatDate(stop.selectedDate)
                      : 'Chọn ngày bắt đầu',
                  icon: Icons.calendar_today_outlined,
                  onTap: () => _pickDate(index),
                  hasValue: stop.selectedDate != null,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _buildPickerButton(
                  label: _formatTime(stop.selectedTime).isNotEmpty
                      ? _formatTime(stop.selectedTime)
                      : 'Chọn thời gian',
                  icon: Icons.access_time_rounded,
                  onTap: () => _pickTime(index),
                  hasValue: stop.selectedTime != null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownField({
    required String hint,
    required IconData icon,
    required IconData suffixIcon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.primaryDarkBlackBlue, width: 1.5),
        ),
        child: Row(
          children: [
            Icon(icon, size: 16, color: AppColors.textSecondary),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                hint,
                style: const TextStyle(
                  fontSize: AppTextTheme.bodyMedium,
                  color: AppColors.textHint,
                ),
              ),
            ),
            Icon(suffixIcon, size: 18, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }

  Widget _buildPickerButton({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    required bool hasValue,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: AppColors.primaryDarkBlackBlue, width: 1.5),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: AppTextTheme.bodySmall,
                  color: hasValue ? AppColors.textPrimary : AppColors.textHint,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 4),
            Icon(icon, size: 16, color: AppColors.textSecondary),
          ],
        ),
      ),
    );
  }
}

class _StopPoint {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;
  final TextEditingController addressController = TextEditingController();

  void dispose() {
    addressController.dispose();
  }
}
