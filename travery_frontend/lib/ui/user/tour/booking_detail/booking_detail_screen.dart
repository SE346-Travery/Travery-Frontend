import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking_detail/view_models/booking_detail_view_model.dart';
import 'package:travery_frontend/data/seed_models/booking_detail/booking_detail_model.dart';

class BookingDetailScreen extends StatefulWidget {
  const BookingDetailScreen({
    super.key,
    required this.viewModel,
    required this.bookingId,
  });

  final BookingDetailViewModel viewModel;
  final String bookingId;

  @override
  State<BookingDetailScreen> createState() => _BookingDetailScreenState();
}

class _BookingDetailScreenState extends State<BookingDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.viewModel.loadBookingDetail(widget.bookingId);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF131B2E)),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          'Chi tiết đặt tour',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<BookingDetailViewModel>(
        builder: (context, vm, _) {
          if (vm.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (vm.error != null || vm.bookingDetail == null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.grey),
                  const SizedBox(height: 12),
                  const Text('Không thể tải chi tiết đơn đặt tour'),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () => vm.loadBookingDetail(widget.bookingId),
                    child: const Text('Thử lại'),
                  ),
                ],
              ),
            );
          }

          final booking = vm.bookingDetail!;

          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              // Status Banner
              _StatusBanner(status: booking.status),

              const SizedBox(height: 20),

              // Tour Name
              Text(
                booking.tourName,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF131B2E),
                ),
              ),

              const SizedBox(height: 16),

              // Info Grid
              Row(
                children: [
                  Expanded(
                    child: _InfoCard(
                      icon: Icons.calendar_today,
                      label: 'Ngày khởi hành',
                      value: _formatDate(booking.departureDate),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _InfoCard(
                      icon: Icons.group,
                      label: 'Số khách',
                      value: '${booking.guestCount} người',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: _InfoCard(
                      icon: Icons.payments,
                      label: 'Tổng tiền',
                      value: _formatPrice(booking.totalPrice),
                      isHighlight: true,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _InfoCard(
                      icon: Icons.payment,
                      label: 'Thanh toán',
                      value: booking.paymentMethod ?? 'VNPay',
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Members Section
              const _SectionTitle(title: 'Danh sách khách', icon: Icons.group),
              const SizedBox(height: 12),
              if (booking.members.isNotEmpty)
                ...booking.members.map<Widget>(
                  (m) => _MemberRow(
                    memberName: m.fullName,
                    memberType: m.memberType,
                    identity: m.identityNumber,
                  ),
                ),
              if (booking.members.isEmpty)
                ...booking.refundPolicy.tiers.map<Widget>(
                  (tier) => _MemberRow(
                    memberName: 'Khách hàng',
                    memberType: '',
                    identity: '',
                  ),
                ),

              const SizedBox(height: 24),

              // Refund Policy
              const _SectionTitle(
                title: 'Chính sách hoàn hủy',
                icon: Icons.policy,
              ),
              const SizedBox(height: 12),
              _RefundPolicyWidget(policy: booking.refundPolicy),

              const SizedBox(height: 120),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer<BookingDetailViewModel>(
        builder: (context, vm, _) {
          if (vm.bookingDetail == null) return const SizedBox.shrink();

          final canCancel = vm.bookingDetail!.status == 'Đang chờ';

          return Container(
            padding: EdgeInsets.fromLTRB(
              20,
              16,
              20,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 20,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: Row(
              children: [
                if (canCancel)
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => context.push(
                        Routes.cancelConfirmation.replaceFirst(
                          ':id',
                          widget.bookingId,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: const BorderSide(color: Colors.red),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        'Hủy tour',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                if (canCancel) const SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.chat, size: 18),
                        SizedBox(width: 8),
                        Text(
                          'Chat hỗ trợ',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}';
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _StatusBanner extends StatelessWidget {
  const _StatusBanner({required this.status});

  final String status;

  Color _getColor() {
    switch (status) {
      case 'Đã thanh toán':
      case 'Đã xác nhận':
        return const Color(0xFF10B981);
      case 'Đang chờ':
        return Colors.orange;
      case 'Đã hủy':
        return const Color(0xFFBA1A1A);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor();
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              status,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({
    required this.icon,
    required this.label,
    required this.value,
    this.isHighlight = false,
  });

  final IconData icon;
  final String label;
  final String value;
  final bool isHighlight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 14, color: const Color(0xFF717786)),
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(fontSize: 11, color: Color(0xFF717786)),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: isHighlight ? AppColors.primary : const Color(0xFF131B2E),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 3,
          height: 20,
          decoration: BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
      ],
    );
  }
}

class _MemberRow extends StatelessWidget {
  const _MemberRow({
    required this.memberName,
    required this.memberType,
    required this.identity,
  });

  final String memberName;
  final String memberType;
  final String identity;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color(0xFFF2F3FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.person, size: 20, color: AppColors.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  memberName,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF131B2E),
                  ),
                ),
                if (identity.isNotEmpty)
                  Text(
                    'CCCD: $identity',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF414755),
                    ),
                  ),
              ],
            ),
          ),
          if (memberType.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: memberType == 'ADULT'
                    ? AppColors.primary.withValues(alpha: 0.1)
                    : Colors.orange.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                memberType == 'ADULT' ? 'NL' : 'TE',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: memberType == 'ADULT'
                      ? AppColors.primary
                      : Colors.orange[700],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _RefundPolicyWidget extends StatelessWidget {
  const _RefundPolicyWidget({required this.policy});

  final RefundPolicy policy;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: policy.tiers.map<Widget>((tier) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    tier.label,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color(0xFF414755),
                    ),
                  ),
                ),
                Text(
                  tier.description,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131B2E),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
