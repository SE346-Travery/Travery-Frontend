import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/trip/booking_detail/view_models/trip_booking_detail_view_model.dart';
import 'package:travery_frontend/data/models/trip/trip_booking_data.dart';
import 'package:travery_frontend/ui/user/widgets/user_app_bar.dart';

class TripCancelScreen extends StatefulWidget {
  const TripCancelScreen({super.key, this.bookingId = '', this.booking});

  final String bookingId;
  final TripBookingData? booking;

  @override
  State<TripCancelScreen> createState() => _TripCancelScreenState();
}

class _TripCancelScreenState extends State<TripCancelScreen> {
  final _reasonController = TextEditingController();
  bool _confirmed = false;

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: UserAppBar(
        title: 'Hủy đặt vé',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Consumer<TripBookingDetailViewModel>(
        builder: (context, vm, _) {
          final extra =
              GoRouterState.of(context).extra as Map<String, dynamic>?;
          final booking = extra?['booking'] as TripBookingData?;
          if (booking == null) {
            return const Center(child: Text('Không tìm thấy thông tin đặt vé'));
          }

          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              _buildWarningCard(),
              const SizedBox(height: 16),
              _buildBookingInfoCard(booking),
              const SizedBox(height: 16),
              _buildReasonSection(),
              const SizedBox(height: 16),
              _buildConfirmCheckbox(),
              const SizedBox(height: 120),
            ],
          );
        },
      ),
      bottomNavigationBar: Consumer<TripBookingDetailViewModel>(
        builder: (context, vm, _) {
          final extra =
              GoRouterState.of(context).extra as Map<String, dynamic>?;
          final booking = extra?['booking'] as TripBookingData?;
          if (booking == null) return const SizedBox.shrink();

          return Container(
            padding: EdgeInsets.fromLTRB(
              20,
              12,
              20,
              MediaQuery.of(context).padding.bottom + 12,
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
            child: ElevatedButton(
              onPressed: !_confirmed || vm.isCancelling
                  ? null
                  : () => _onCancel(context, vm),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: vm.isCancelling
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text(
                      'Xác nhận hủy',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildWarningCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orange.withValues(alpha: 0.3)),
      ),
      child: const Row(
        children: [
          Icon(Icons.warning_amber, color: Colors.orange, size: 28),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bạn có chắc muốn hủy đặt vé này?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.orange,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Việc hủy có thể chịu phí theo chính sách của nhà xe.',
                  style: TextStyle(fontSize: 12, color: Color(0xFF414755)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookingInfoCard(TripBookingData booking) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Thông tin đặt vé',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF131B2E),
            ),
          ),
          const SizedBox(height: 16),
          _InfoRow('Mã đặt chỗ', '#${_shortCode(booking.id)}'),
          const Divider(height: 24),
          _InfoRow('Hành khách', booking.contactName),
          const Divider(height: 24),
          _InfoRow('Ngày khởi hành', _formatDate(booking.departureTime)),
          const Divider(height: 24),
          _InfoRow('Ghế', booking.bookedSeatNames.join(', ')),
          const Divider(height: 24),
          _InfoRow('Tổng tiền', _formatPrice(booking.totalPrice)),
        ],
      ),
    );
  }

  Widget _buildReasonSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Lý do hủy (tùy chọn)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF131B2E),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _reasonController,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'VD: Thay đổi kế hoạch, không thể sắp xếp thời gian...',
              hintStyle: const TextStyle(color: Color(0xFF717786)),
              filled: true,
              fillColor: const Color(0xFFF2F3FF),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConfirmCheckbox() {
    return GestureDetector(
      onTap: () => setState(() => _confirmed = !_confirmed),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            Checkbox(
              value: _confirmed,
              onChanged: (v) => setState(() => _confirmed = v ?? false),
              activeColor: Colors.red,
            ),
            const Expanded(
              child: Text(
                'Tôi hiểu rằng việc hủy vé sẽ không được hoàn tiền theo chính sách hiện tại.',
                style: TextStyle(fontSize: 13, color: Color(0xFF414755)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onCancel(
    BuildContext context,
    TripBookingDetailViewModel vm,
  ) async {
    final reason = _reasonController.text.trim();
    final success = await vm.cancelBooking(
      widget.bookingId,
      reason: reason.isEmpty ? null : reason,
    );
    if (!context.mounted) return;

    if (success) {
      context.pushReplacement(
        Routes.tripCancelSuccess,
        extra: {'cancelData': vm.cancelData, 'booking': widget.booking},
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Lỗi: ${vm.error ?? 'Không thể hủy đặt vé'}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  String _shortCode(String id) {
    final clean = id.replaceAll('-', '');
    return clean.length >= 8
        ? clean.substring(0, 8).toUpperCase()
        : clean.toUpperCase();
  }

  String _formatDate(DateTime dt) {
    return '${dt.day.toString().padLeft(2, '0')}/${dt.month.toString().padLeft(2, '0')}/${dt.year}';
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow(this.label, this.value);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Color(0xFF64748B)),
        ),
        Flexible(
          child: Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1E293B),
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
