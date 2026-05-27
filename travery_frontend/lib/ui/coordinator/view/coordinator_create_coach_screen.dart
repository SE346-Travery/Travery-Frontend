import 'package:flutter/material.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_driver/coordinator_driver.dart';
import 'package:travery_frontend/domain/models/coordinator/coordinator_vehicle/coordinator_vehicle.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/coordinator/view/widgets/coordinator_coach_selection_bottomsheet.dart';

class CoordinatorCreateCoachScreen extends StatefulWidget {
  const CoordinatorCreateCoachScreen({super.key});

  @override
  State<CoordinatorCreateCoachScreen> createState() =>
      _CoordinatorCreateCoachScreenState();
}

class _CoordinatorCreateCoachScreenState
    extends State<CoordinatorCreateCoachScreen> {

  CoordinatorDriver? _selectedDriver;
  CoordinatorVehicle? _selectedVehicle;
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  @override
  void dispose() {
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

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? now,
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
      setState(() => _selectedDate = picked);
    }
  }

  Future<void> _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
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
      setState(() => _selectedTime = picked);
    }
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '';
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  String _formatTime(TimeOfDay? time) {
    if (time == null) return '';
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
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

                    // Ngày và Thời gian
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Ngày khởi hành',
                                style: TextStyle(
                                  fontSize: AppTextTheme.bodySmall,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 6),
                              _buildPickerButton(
                                label: _formatDate(_selectedDate).isNotEmpty
                                    ? _formatDate(_selectedDate)
                                    : 'Chọn ngày khởi hành',
                                icon: Icons.calendar_today_outlined,
                                onTap: _pickDate,
                                hasValue: _selectedDate != null,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Thời gian khởi hành',
                                style: TextStyle(
                                  fontSize: AppTextTheme.bodySmall,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.textPrimary,
                                ),
                              ),
                              const SizedBox(height: 6),
                              _buildPickerButton(
                                label: _formatTime(_selectedTime).isNotEmpty
                                    ? _formatTime(_selectedTime)
                                    : 'Chọn thời gian',
                                icon: Icons.access_time_rounded,
                                onTap: _pickTime,
                                hasValue: _selectedTime != null,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

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

  Widget _buildPickerButton({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    required bool hasValue,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 12),
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
            Icon(icon, size: 18, color: AppColors.textPrimary),
          ],
        ),
      ),
    );
  }
}
