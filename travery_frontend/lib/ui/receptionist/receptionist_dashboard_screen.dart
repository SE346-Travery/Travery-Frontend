import 'package:flutter/material.dart';

import '../core/themes/app_colors.dart';
import 'view_models/receptionist_view_model.dart';
import '../../data/repositories/receptionist_repository.dart';
import 'widgets/bottom_navigation.dart';
import 'widgets/checkin_list.dart';
import 'widgets/checkout_details.dart';
import 'widgets/quick_action_buttons.dart';
import 'widgets/receptionist_header.dart';
import 'widgets/revenue_section.dart';
import 'widgets/status_grid.dart';

class ReceptionistDashboardScreen extends StatefulWidget {
  final ReceptionistViewModel viewModel;

  const ReceptionistDashboardScreen({super.key, required this.viewModel});

  @override
  State<ReceptionistDashboardScreen> createState() =>
      _ReceptionistDashboardScreenState();
}

class _ReceptionistDashboardScreenState
    extends State<ReceptionistDashboardScreen> {
  ReceptionistNavItem _currentNav = ReceptionistNavItem.status;

  @override
  void initState() {
    super.initState();
    widget.viewModel.addListener(_onViewModelChanged);
    widget.viewModel.loadDashboardData();
  }

  void _onViewModelChanged() {
    setState(() {});
  }

  @override
  void dispose() {
    widget.viewModel.removeListener(_onViewModelChanged);
    super.dispose();
  }

  void _onNavItemTap(ReceptionistNavItem item) {
    setState(() {
      _currentNav = item;
    });
  }

  void _onCheckInTap() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Mở màn hình Check-in mới'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  void _onCheckOutTap() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Mở màn hình Check-out nhanh'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  void _onStatusTap(int index) {
    String statusType;
    switch (index) {
      case 0:
        statusType = 'Phòng trống';
        break;
      case 1:
        statusType = 'Đang sử dụng';
        break;
      case 2:
        statusType = 'Đang dọn dẹp';
        break;
      case 3:
        statusType = 'Bảo trì';
        break;
      default:
        statusType = 'Unknown';
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Lọc theo: $statusType'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  void _onCheckInItemTap(CheckInItem item) {
    showModalBottomSheet(
      context: context,
      builder: (context) => _CheckInDetailSheet(item: item),
    );
  }

  void _onCheckoutPayTap(CheckoutItem item) async {
    final success = await widget.viewModel.checkOut(
      bookingId: item.roomNumber,
      amount: item.amount,
    );
    if (success && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Thanh toán thành công!'),
          backgroundColor: AppColors.success,
        ),
      );
    }
  }

  String _formatCurrency(double amount) {
    return amount
        .toStringAsFixed(0)
        .replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
          (Match m) => '${m[1]}.',
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: widget.viewModel.isLoading
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  ReceptionistHeader(
                    staffName: widget.viewModel.staffName,
                    staffAvatarUrl: widget.viewModel.staffAvatarUrl,
                    currentDateTime: widget.viewModel.currentDateTime,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DashboardTitle(
                            currentDateTime: widget.viewModel.currentDateTime,
                          ),
                          const SizedBox(height: 12),
                          QuickActionButtons(
                            onCheckInTap: _onCheckInTap,
                            onCheckOutTap: _onCheckOutTap,
                          ),
                          const SizedBox(height: 12),
                          StatusGrid(
                            readyCount: widget.viewModel.readyCount,
                            occupiedCount: widget.viewModel.occupiedCount,
                            cleaningCount: widget.viewModel.cleaningCount,
                            maintenanceCount: widget.viewModel.maintenanceCount,
                            onStatusTap: _onStatusTap,
                          ),
                          const SizedBox(height: 12),
                          CheckInList(
                            checkIns: widget.viewModel.todayCheckIns,
                            onItemTap: _onCheckInItemTap,
                            onViewAllTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Xem tất cả check-in'),
                                  duration: Duration(seconds: 1),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 12),
                          CheckoutDetails(
                            items: widget.viewModel.pendingCheckouts,
                            onPayTap: _onCheckoutPayTap,
                          ),
                          const SizedBox(height: 12),
                          RevenueSection(
                            expectedRevenue: widget.viewModel.expectedRevenue,
                            progress: widget.viewModel.collectionProgress,
                          ),
                          const SizedBox(height: 80),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
      ),
      bottomNavigationBar: ReceptionistBottomNavigation(
        activeItem: _currentNav,
        onItemTap: _onNavItemTap,
      ),
    );
  }
}

class _CheckInDetailSheet extends StatelessWidget {
  final CheckInItem item;

  const _CheckInDetailSheet({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Chi tiết Check-in',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildInfoRow('Khách hàng', item.customerName),
          _buildInfoRow('Mã đặt phòng', item.bookingCode),
          _buildInfoRow('Phòng', item.roomNumber),
          _buildInfoRow('Loại phòng', item.roomType),
          _buildInfoRow(
            'Trạng thái',
            item.status == CheckInStatus.ready ? 'Sẵn sàng' : 'Đang dọn dẹp',
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Check-in thành công!'),
                    backgroundColor: AppColors.success,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.success,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: const Text(
                'XÁC NHẬN CHECK-IN',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: AppColors.textSecondary)),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
