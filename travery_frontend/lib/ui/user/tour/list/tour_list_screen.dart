import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/core/themes/app_text_theme.dart';
import 'package:travery_frontend/ui/core/widgets/app_bar_widget.dart';
import 'package:travery_frontend/ui/user/tour/list/view_models/tour_list_view_model.dart';
import 'package:travery_frontend/ui/user/tour/list/widgets/filter_sort_bar.dart';
import 'package:travery_frontend/ui/user/tour/list/widgets/tour_vertical_card.dart';
import 'package:travery_frontend/utils/format_utils.dart';

class TourListScreen extends StatefulWidget {
  const TourListScreen({super.key});

  @override
  State<TourListScreen> createState() => _TourListScreenState();
}

class _TourListScreenState extends State<TourListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TourListViewModel>().loadTours();
    });
  }

  bool get _hasActiveFilters {
    final vm = context.read<TourListViewModel>();
    return vm.selectedDate != null ||
        vm.priceRange.start > 0 ||
        vm.priceRange.end < 10000000;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarWidget(title: 'Danh sách Tour'),
      body: Consumer<TourListViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          if (viewModel.errorMessage != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: AppColors.error,
                    size: 48,
                  ),
                  const SizedBox(height: 16),
                  const Text('Đã xảy ra lỗi'),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () => viewModel.loadTours(),
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () => viewModel.loadTours(),
            color: AppColors.primary,
            child: Column(
              children: [
                FilterSortBar(
                  hasActiveFilters: _hasActiveFilters,
                  onFilterPressed: () =>
                      _showFilterBottomSheet(context, viewModel),
                ),
                Expanded(
                  child: viewModel.tours.isEmpty
                      ? const Center(child: Text('Không có tour nào'))
                      : ListView.separated(
                          padding: const EdgeInsets.all(20),
                          itemCount: viewModel.tours.length,
                          separatorBuilder: (_, __) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            final tour = viewModel.tours[index];
                            return TourVerticalCard(
                              tour: tour,
                              instance: tour.instances?.isNotEmpty == true
                                  ? tour.instances!.first
                                  : null,
                              onTap: () {
                                if (tour.id != null) {
                                  context.push('/tour/${tour.id}');
                                }
                              },
                            );
                          },
                        ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _showFilterBottomSheet(
    BuildContext context,
    TourListViewModel viewModel,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => _FilterBottomSheet(viewModel: viewModel),
    );
  }
}

class _FilterBottomSheet extends StatefulWidget {
  final TourListViewModel viewModel;

  const _FilterBottomSheet({required this.viewModel});

  @override
  State<_FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<_FilterBottomSheet> {
  late DateTime? _selectedDate;
  late RangeValues _priceRange;
  late bool _sortAscending;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.viewModel.selectedDate;
    _priceRange = widget.viewModel.priceRange;
    _sortAscending = widget.viewModel.sortType == TourSortType.priceAsc;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Container(
            width: 40,
            height: 4,
            decoration: BoxDecoration(
              color: AppColors.inputBorder,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Bộ lọc',
                      style: TextStyle(
                        fontSize: AppTextTheme.headlineSmall,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Ngày đi
                const Text(
                  'Ngày đi',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildDateChip(
                      label: _selectedDate != null
                          ? FormatUtils.formatDate(_selectedDate!)
                          : 'Tất cả',
                      isSelected: _selectedDate != null,
                      onTap: () async {
                        final result = await showDialog<String>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Chọn ngày đi'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ListTile(
                                  leading: const Icon(
                                    Icons.calendar_today,
                                    color: AppColors.primary,
                                  ),
                                  title: const Text('Chọn ngày'),
                                  onTap: () => Navigator.pop(context, 'pick'),
                                ),
                                if (_selectedDate != null)
                                  ListTile(
                                    leading: const Icon(
                                      Icons.clear,
                                      color: AppColors.error,
                                    ),
                                    title: const Text('Bỏ chọn ngày'),
                                    onTap: () =>
                                        Navigator.pop(context, 'clear'),
                                  ),
                              ],
                            ),
                          ),
                        );

                        if (result == 'pick') {
                          final picked = await showDatePicker(
                            context: context,
                            initialDate: _selectedDate ?? DateTime.now(),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now().add(
                              const Duration(days: 365),
                            ),
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: AppColors.primary,
                                    onPrimary: Colors.white,
                                  ),
                                ),
                                child: child!,
                              );
                            },
                          );
                          if (picked != null) {
                            setState(() => _selectedDate = picked);
                          }
                        } else if (result == 'clear') {
                          setState(() => _selectedDate = null);
                        }
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Khoảng giá
                const Text(
                  'Khoảng giá',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  '${FormatUtils.formatCurrency(_priceRange.start)} - ${FormatUtils.formatCurrency(_priceRange.end)}',
                  style: const TextStyle(
                    fontSize: AppTextTheme.bodyLarge,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                RangeSlider(
                  values: _priceRange,
                  min: 0,
                  max: 10000000,
                  divisions: 20,
                  activeColor: AppColors.primary,
                  onChanged: (values) {
                    setState(() => _priceRange = values);
                  },
                ),
                const SizedBox(height: 20),

                // Sắp xếp
                const Text(
                  'Sắp xếp theo giá',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Expanded(
                      child: _buildSortChip(
                        label: 'Giá tăng dần',
                        isSelected: _sortAscending,
                        onTap: () => setState(() => _sortAscending = true),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _buildSortChip(
                        label: 'Giá giảm dần',
                        isSelected: !_sortAscending,
                        onTap: () => setState(() => _sortAscending = false),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Buttons
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            _selectedDate = null;
                            _priceRange = const RangeValues(0, 10000000);
                            _sortAscending = false;
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          side: const BorderSide(color: AppColors.primary),
                        ),
                        child: const Text(
                          'Đặt lại',
                          style: TextStyle(color: AppColors.primary),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        onPressed: () {
                          widget.viewModel.setDateFilter(_selectedDate);
                          widget.viewModel.setPriceRange(_priceRange);
                          widget.viewModel.setSortType(
                            _sortAscending
                                ? TourSortType.priceAsc
                                : TourSortType.priceDesc,
                          );
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          'Áp dụng',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.inputBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.calendar_today,
              size: 16,
              color: isSelected ? Colors.white : AppColors.textSecondary,
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : AppColors.textSecondary,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
              ),
            ),
            const SizedBox(width: 4),
            Icon(
              Icons.expand_more,
              size: 18,
              color: isSelected ? Colors.white : AppColors.textSecondary,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSortChip({
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : AppColors.inputBackground,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
