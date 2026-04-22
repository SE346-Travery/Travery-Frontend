import 'package:flutter/material.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_text_theme.dart';
import 'widgets/fliter_list.dart';
import 'widgets/search_bar.dart';
import 'widgets/vehicle_card.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Simple demo data model
// ─────────────────────────────────────────────────────────────────────────────

class _VehicleData {
  const _VehicleData({
    required this.routeFrom,
    required this.routeTo,
    required this.status,
    required this.plateNumber,
    required this.vehicleType,
    required this.seatCount,
    required this.driverName,
  });

  final String routeFrom;
  final String routeTo;
  final VehicleStatus status;
  final String plateNumber;
  final String vehicleType;
  final int seatCount;
  final String driverName;
}

// ─────────────────────────────────────────────────────────────────────────────
// Screen
// ─────────────────────────────────────────────────────────────────────────────

class VehicleManagementScreen extends StatefulWidget {
  const VehicleManagementScreen({super.key});

  @override
  State<VehicleManagementScreen> createState() =>
      _VehicleManagementScreenState();
}

class _VehicleManagementScreenState extends State<VehicleManagementScreen> {
  static const _filterLabels = ['Tất cả', 'Đang chạy', 'Sẵn sàng'];

  static const _allVehicles = <_VehicleData>[
    _VehicleData(
      routeFrom: 'SGN',
      routeTo: 'DLT',
      status: VehicleStatus.running,
      plateNumber: '51B - 882.41',
      vehicleType: 'VIP Sleeper',
      seatCount: 22,
      driverName: 'Nguyễn Văn Minh',
    ),
    _VehicleData(
      routeFrom: 'HAN',
      routeTo: 'HPH',
      status: VehicleStatus.available,
      plateNumber: '29B - 110.02',
      vehicleType: 'Standard',
      seatCount: 45,
      driverName: 'Trần Quang Khải',
    ),
    _VehicleData(
      routeFrom: 'SGN',
      routeTo: 'CAM',
      status: VehicleStatus.available,
      plateNumber: '59B - 564.29',
      vehicleType: 'Limousine',
      seatCount: 9,
      driverName: 'Lê Anh Tuấn',
    ),
    _VehicleData(
      routeFrom: 'DLT',
      routeTo: 'SGN',
      status: VehicleStatus.running,
      plateNumber: '49B - 023.15',
      vehicleType: 'Standard',
      seatCount: 34,
      driverName: 'Võ Hoàng Phi',
    ),
  ];

  int _selectedFilterIndex = 0;
  String _searchQuery = '';
  final _searchController = TextEditingController();

  // ── Derived list ────────────────────────────────────────────────────────────
  List<_VehicleData> get _filteredVehicles {
    var list = _allVehicles.toList();

    // Status filter
    if (_selectedFilterIndex == 1) {
      list = list.where((v) => v.status == VehicleStatus.running).toList();
    } else if (_selectedFilterIndex == 2) {
      list = list.where((v) => v.status == VehicleStatus.available).toList();
    }

    // Search filter (route or driver name)
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

  int get _runningCount =>
      _allVehicles.where((v) => v.status == VehicleStatus.running).length;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vehicles = _filteredVehicles;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── App bar ──────────────────────────────────────────────────────
            _buildAppBar(),

            // ── Page header ──────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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

            // ── Stat cards ───────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      icon: Icons.directions_bus_rounded,
                      label: 'TỔNG XE',
                      value: _allVehicles.length.toString(),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _StatCard(
                      icon: Icons.trending_up_rounded,
                      label: 'ĐANG CHẠY',
                      value: _runningCount.toString(),
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

            // ── Vehicle list ─────────────────────────────────────────────────
            Expanded(
              child: vehicles.isEmpty
                  ? _buildEmptyState()
                  : ListView.separated(
                      padding: const EdgeInsets.only(bottom: 100),
                      itemCount: vehicles.length,
                      separatorBuilder: (_, __) => const Divider(
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

  // ── App bar ────────────────────────────────────────────────────────────────
  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.grid_view_rounded,
              color: Colors.white,
              size: 20,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Travery Admin',
            style: TextStyle(
              fontSize: AppTextTheme.headlineMedium,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ],
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
  void _onVehicleTap(_VehicleData v) {
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
            color: Colors.black.withOpacity(0.05),
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
