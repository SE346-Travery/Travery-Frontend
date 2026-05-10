import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/domain/models/admin/coach/coach.dart';
import 'package:travery_frontend/ui/admin/view_model/vehicle_management_view_model.dart';
import 'package:travery_frontend/utils/core_result.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/fliter_list.dart';
import 'widgets/search_bar.dart';
import 'widgets/vehicle_card.dart';
import 'widgets/admin_bottom_nav_bar.dart';

class VehicleManagementScreen extends StatefulWidget {
  const VehicleManagementScreen({super.key});

  @override
  State<VehicleManagementScreen> createState() =>
      _VehicleManagementScreenState();
}

class _VehicleManagementScreenState extends State<VehicleManagementScreen> {
  static const _filterLabels = ['Tất cả', 'Đang chạy', 'Sẵn sàng'];

  int _selectedFilterIndex = 0;
  String _searchQuery = '';
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<VehicleManagementViewModel>().loadVehicles.execute();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  // ── Derived list ────────────────────────────────────────────────────────────
  List<Coach> _applyFilters(List<Coach> all) {
    var list = all.toList();

    if (_selectedFilterIndex == 1) {
      list = list.where((v) => v.status == CoachStatus.running).toList();
    } else if (_selectedFilterIndex == 2) {
      list = list.where((v) => v.status == CoachStatus.available).toList();
    }

    if (_searchQuery.isNotEmpty) {
      final q = _searchQuery.toLowerCase();
      list = list
          .where(
            (v) =>
                '${v.routeFrom} ${v.routeTo}'.toLowerCase().contains(q) ||
                v.driverName.toLowerCase().contains(q) ||
                v.plateNumber.toLowerCase().contains(q),
          )
          .toList();
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.read<VehicleManagementViewModel>();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── Page header ──────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => context.pop(),
                  ),
                  Text(
                    'Quản lý đội xe',
                    style: TextStyle(
                      fontSize: AppTextTheme.headlineLarge,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Điều phối vận tải khu vực thời gian thực.',
                    style: TextStyle(
                      fontSize: AppTextTheme.bodySmall,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ── Search bar ───────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: AdminSearchBar(
                hintText: 'Tìm biển số, tuyến...',
                controller: _searchController,
                onChanged: (value) => setState(() => _searchQuery = value),
              ),
            ),

            const SizedBox(height: 12),

            // ── Filter chips ─────────────────────────────────────────────────
            FilterList(
              filters: _filterLabels,
              selectedIndex: _selectedFilterIndex,
              onSelected: (index) =>
                  setState(() => _selectedFilterIndex = index),
            ),

            const SizedBox(height: 8),

            // ── Content ──────────────────────────────────────────────────────
            Expanded(
              child: ListenableBuilder(
                listenable: vm.loadVehicles,
                builder: (context, _) {
                  final cmd = vm.loadVehicles;

                  if (cmd.running) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (cmd.error) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 48,
                            color: AppColors.error,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Không thể tải danh sách xe',
                            style: TextStyle(
                              fontSize: AppTextTheme.bodyLarge,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () => cmd.execute(),
                            child: const Text('Thử lại'),
                          ),
                        ],
                      ),
                    );
                  }

                  final all = cmd.result is Ok<List<Coach>>
                      ? (cmd.result as Ok<List<Coach>>).value
                      : <Coach>[];

                  final vehicles = _applyFilters(all);
                  final runningCount = all
                      .where((v) => v.status == CoachStatus.running)
                      .length;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ── Stat cards ─────────────────────────────────────────
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            Expanded(
                              child: _StatCard(
                                icon: Icons.directions_bus_rounded,
                                label: 'TỔNG XE',
                                value: all.length.toString(),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _StatCard(
                                icon: Icons.trending_up_rounded,
                                label: 'ĐANG CHẠY',
                                value: runningCount.toString(),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 8),

                      // ── Vehicle list ───────────────────────────────────────
                      Expanded(
                        child: vehicles.isEmpty
                            ? _buildEmptyState()
                            : ListView.separated(
                                padding: const EdgeInsets.only(bottom: 100),
                                itemCount: vehicles.length,
                                separatorBuilder: (_, _) => const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: AppColors.inputBorder,
                                ),
                                itemBuilder: (context, index) {
                                  final v = vehicles[index];
                                  return VehicleCard(
                                    routeFrom: v.routeFrom,
                                    routeTo: v.routeTo,
                                    status: v.status,
                                    plateNumber: v.plateNumber,
                                    vehicleType: v.vehicleType,
                                    seatCount: v.seatCount,
                                    driverName: v.driverName,
                                    onTap: () => _onVehicleTap(v),
                                  );
                                },
                              ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // ── FAB ─────────────────────────────────────────────────────────────────
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddVehicle,
        backgroundColor: AppColors.primary,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: const Icon(Icons.add_rounded, color: Colors.white),
      ),
    );
  }

  // ── Empty state ────────────────────────────────────────────────────────────
  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.search_off_rounded, size: 56, color: AppColors.textHint),
          const SizedBox(height: 12),
          Text(
            'Không tìm thấy phương tiện',
            style: TextStyle(
              fontSize: AppTextTheme.bodyLarge,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  // ── Handlers ───────────────────────────────────────────────────────────────
  void _onVehicleTap(Coach v) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Xem chi tiết: ${v.routeFrom} — ${v.routeTo}'),
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _onAddVehicle() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Thêm phương tiện mới'),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Stat card (TỔNG XE / ĐANG CHẠY)
// ─────────────────────────────────────────────────────────────────────────────

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: 22, color: AppColors.primary),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: AppTextTheme.bodySmall,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textSecondary,
                  letterSpacing: 0.3,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: TextStyle(
                  fontSize: AppTextTheme.headlineMedium,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
