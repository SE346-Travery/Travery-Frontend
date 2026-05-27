import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/coordinator/view_models/coordinator_create_tour_view_model.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';

class CoordinatorCreateTourScreen extends StatefulWidget {
  final CoordinatorCreateTourViewModel viewModel;

  /// The tour template ID selected from the template list screen.
  final String tourId;

  /// Optional display name for the selected template.
  final String? tourName;

  const CoordinatorCreateTourScreen({
    super.key,
    required this.viewModel,
    required this.tourId,
    this.tourName,
  });

  @override
  State<CoordinatorCreateTourScreen> createState() =>
      _CoordinatorCreateTourScreenState();
}

class _CoordinatorCreateTourScreenState
    extends State<CoordinatorCreateTourScreen> {
  DateTime? _startDate;
  DateTime? _endDate;

  @override
  void initState() {
    super.initState();
    widget.viewModel.createTour.addListener(_onCreateTourChanged);
  }

  void _onCreateTourChanged() {
    if (!mounted) return;
    if (widget.viewModel.createTour.completed) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tour đã được tạo thành công!')),
      );
      Navigator.of(context).pop(true);
    } else if (widget.viewModel.createTour.error) {
      final error = widget.viewModel.createTour.result;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Đã xảy ra lỗi: $error')),
      );
    }
    setState(() {});
  }

  @override
  void dispose() {
    widget.viewModel.createTour.removeListener(_onCreateTourChanged);
    super.dispose();
  }

  Future<void> _pickDate({required bool isStart}) async {
    final now = DateTime.now();
    final initial = isStart
        ? (_startDate ?? now)
        : (_endDate ?? (_startDate?.add(const Duration(days: 1)) ?? now));
    final firstDate = isStart ? now : (_startDate ?? now);

    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: firstDate,
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
      setState(() {
        if (isStart) {
          _startDate = picked;
          // Reset end date if it's before start
          if (_endDate != null && _endDate!.isBefore(picked)) {
            _endDate = null;
          }
        } else {
          _endDate = picked;
        }
      });
    }
  }

  String _formatDateDisplay(DateTime? date) {
    if (date == null) return '';
    return '${date.day.toString().padLeft(2, '0')}/'
        '${date.month.toString().padLeft(2, '0')}/'
        '${date.year}';
  }

  /// Format date as ISO-8601 (yyyy-MM-dd) for the API.
  String _formatDateApi(DateTime date) {
    return '${date.year}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  void _onConfirm() {
    if (_startDate == null || _endDate == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng chọn ngày bắt đầu và ngày kết thúc'),
        ),
      );
      return;
    }
    widget.viewModel.execute(
      tourId: widget.tourId,
      startDate: _formatDateApi(_startDate!),
      endDate: _formatDateApi(_endDate!),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = widget.viewModel.createTour.running;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            // ── AppBar ─────────────────────────────────────────────────────
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
                          'Tạo tour mới',
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
                    color: isLoading
                        ? AppColors.primaryDarkBlackBlue.withOpacity(0.6)
                        : AppColors.primaryDarkBlackBlue,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: isLoading ? null : _onConfirm,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text(
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

            // ── Scrollable Body ────────────────────────────────────────────
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
                    // ── Lộ trình đã chọn ─────────────────────────────────
                    _buildSectionHeader('Lộ trình đã chọn'),
                    const SizedBox(height: 12),
                    _buildSelectedTemplateCard(),
                    const SizedBox(height: 24),

                    // ── Date pickers ─────────────────────────────────────
                    Row(
                      children: [
                        Expanded(
                          child: _buildDateField(
                            label: 'Ngày bắt đầu',
                            hint: 'Chọn ngày...',
                            value: _formatDateDisplay(_startDate),
                            onTap: () => _pickDate(isStart: true),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _buildDateField(
                            label: 'Ngày kết thúc',
                            hint: 'Chọn ngày...',
                            value: _formatDateDisplay(_endDate),
                            onTap: () => _pickDate(isStart: false),
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

  Widget _buildSectionHeader(String title) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontSize: AppTextTheme.labelMedium,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _buildSelectedTemplateCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primaryDarkBlackBlue,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.travel_explore,
              color: AppColors.primary,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.tourName ?? 'Tour đã chọn',
                  style: const TextStyle(
                    fontSize: AppTextTheme.bodyLarge,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'ID: ${widget.tourId}',
                  style: const TextStyle(
                    fontSize: AppTextTheme.bodySmall,
                    color: AppColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateField({
    required String label,
    required String hint,
    required String value,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: AppTextTheme.bodyMedium,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 44,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppColors.surface,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: AppColors.primaryDarkBlackBlue,
                width: 1.5,
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    value.isNotEmpty ? value : hint,
                    style: TextStyle(
                      fontSize: AppTextTheme.bodyMedium,
                      color: value.isNotEmpty
                          ? AppColors.textPrimary
                          : AppColors.textHint,
                    ),
                  ),
                ),
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 18,
                  color: AppColors.textSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
