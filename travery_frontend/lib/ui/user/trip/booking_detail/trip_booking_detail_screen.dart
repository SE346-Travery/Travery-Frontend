import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/trip/payment/view_models/trip_payment_view_model.dart';
import 'package:travery_frontend/ui/user/trip/booking_detail/view_models/trip_booking_detail_view_model.dart';
import 'package:travery_frontend/data/models/trip/trip_booking_data.dart';
import 'package:travery_frontend/ui/user/widgets/user_app_bar.dart';

class TripBookingDetailScreen extends StatefulWidget {
  const TripBookingDetailScreen({super.key, this.bookingId = ''});

  final String bookingId;

  @override
  State<TripBookingDetailScreen> createState() =>
      _TripBookingDetailScreenState();
}

class _TripBookingDetailScreenState extends State<TripBookingDetailScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
      final booking = extra?['booking'] as TripBookingData?;
      if (booking != null) {
        context.read<TripBookingDetailViewModel>().loadBooking(booking.id);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) {
        if (didPop) {
          final vm = context.read<TripBookingDetailViewModel>();
          final booking = vm.bookingData;
          if (booking != null) vm.loadBooking(booking.id);
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFAFF),
        appBar: UserAppBar(
          title: 'Chi tiết đặt vé',
          leading: IconButton(
            icon: const Icon(Icons.home_outlined),
            onPressed: () => context.go(Routes.home),
          ),
        ),
        body: Consumer<TripBookingDetailViewModel>(
          builder: (context, vm, _) {
            if (vm.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (vm.error != null) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.error_outline,
                      size: 48,
                      color: Colors.grey,
                    ),
                    const SizedBox(height: 12),
                    Text(vm.error ?? 'Lỗi'),
                    ElevatedButton(
                      onPressed: () {
                        final booking = vm.bookingData;
                        if (booking != null) vm.loadBooking(booking.id);
                      },
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              );
            }
            final booking = vm.bookingData;
            if (booking == null) {
              return const Center(
                child: Text('Không tìm thấy thông tin đặt vé'),
              );
            }
            return Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(20),
                    children: [
                      _buildStatusCard(booking),
                      const SizedBox(height: 16),
                      _buildTripInfoCard(booking),
                      const SizedBox(height: 16),
                      _buildSeatInfoCard(booking),
                      const SizedBox(height: 16),
                      _buildContactCard(booking),
                      const SizedBox(height: 16),
                      _buildPaymentCard(booking),
                    ],
                  ),
                ),
                _buildBottomBar(context, booking, vm),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildBottomBar(
    BuildContext context,
    TripBookingData booking,
    TripBookingDetailViewModel vm,
  ) {
    final isPending = booking.status == 'PENDING';
    final isPaid = booking.status == 'PAID';
    if (!isPending && !isPaid) return const SizedBox.shrink();
    return Container(
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
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 16),
          child: isPending
              ? SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => _onPayPressed(context, booking, vm),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Thanh toán ngay',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
              : SizedBox(
                  width: double.infinity,
                  child: TextButton.icon(
                    onPressed: () => context.push(
                      Routes.tripCancelConfirmation,
                      extra: {'booking': booking},
                    ),
                    icon: Icon(
                      Icons.cancel_outlined,
                      size: 18,
                      color: Colors.red.shade600,
                    ),
                    label: Text(
                      'Hủy vé',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.red.shade600,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      side: BorderSide(color: Colors.red.shade300),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildStatusCard(TripBookingData booking) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: _getStatusColor(booking.status).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: _getStatusColor(booking.status).withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        children: [
          Icon(
            _getStatusIcon(booking.status),
            color: _getStatusColor(booking.status),
            size: 28,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getStatusLabel(booking.status),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: _getStatusColor(booking.status),
                  ),
                ),
                if (booking.paymentDeadline != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Hạn thanh toán: ${_formatDateTime(booking.paymentDeadline!)}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF414755),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTripInfoCard(TripBookingData booking) {
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
            'Thông tin chuyến xe',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF131B2E),
            ),
          ),
          const SizedBox(height: 16),
          _InfoRow('Mã giao dịch', '#${_shortCode(booking.id)}'),
          const Divider(height: 24),
          _InfoRow('Ngày khởi hành', _formatDate(booking.departureTime)),
          const Divider(height: 24),
          _InfoRow('Giờ khởi hành', _formatTime(booking.departureTime)),
          if (booking.estimatedArrivalTime != null) ...[
            const Divider(height: 24),
            _InfoRow(
              'Giờ đến dự kiến',
              _formatTime(booking.estimatedArrivalTime!),
            ),
          ],
          if (booking.coachLicensePlate != null) ...[
            const Divider(height: 24),
            _InfoRow('Biển số xe', booking.coachLicensePlate!),
          ],
        ],
      ),
    );
  }

  Widget _buildSeatInfoCard(TripBookingData booking) {
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
            'Ghế đã đặt',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF131B2E),
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: booking.bookedSeatNames.map((name) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: AppColors.primary.withValues(alpha: 0.3),
                  ),
                ),
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard(TripBookingData booking) {
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
            'Thông tin liên hệ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF131B2E),
            ),
          ),
          const SizedBox(height: 16),
          _InfoRow('Họ tên', booking.contactName),
          const Divider(height: 24),
          _InfoRow('Số điện thoại', booking.contactPhone),
        ],
      ),
    );
  }

  Widget _buildPaymentCard(TripBookingData booking) {
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
            'Thông tin thanh toán',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF131B2E),
            ),
          ),
          const SizedBox(height: 16),
          _InfoRow('Giá vé', _formatPrice(booking.basePrice)),
          const Divider(height: 24),
          _InfoRow('Số lượng', '${booking.bookedSeatNames.length} ghế'),
          const Divider(height: 24),
          _InfoRow('Tổng cộng', _formatPrice(booking.totalPrice), isBold: true),
          if (booking.paymentMethod != null) ...[
            const Divider(height: 24),
            _InfoRow('Phương thức', booking.paymentMethod!),
          ],
          if (booking.transactionId != null) ...[
            const Divider(height: 24),
            _InfoRow(
              'Mã giao dịch',
              _truncateTransactionId(booking.transactionId!),
            ),
          ],
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'PAID':
        return Colors.green;
      case 'CANCELLED':
        return Colors.red;
      case 'CHECKED_IN':
        return AppColors.primary;
      default:
        return Colors.orange;
    }
  }

  IconData _getStatusIcon(String status) {
    switch (status) {
      case 'PAID':
        return Icons.check_circle;
      case 'CANCELLED':
        return Icons.cancel;
      case 'CHECKED_IN':
        return Icons.person;
      default:
        return Icons.hourglass_empty;
    }
  }

  String _getStatusLabel(String status) {
    switch (status) {
      case 'PAID':
        return 'Đã thanh toán';
      case 'CANCELLED':
        return 'Đã hủy';
      case 'CHECKED_IN':
        return 'Đã check-in';
      default:
        return 'Chờ thanh toán';
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

  String _formatTime(DateTime dt) {
    return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  String _formatDateTime(DateTime dt) {
    return '${_formatDate(dt)} ${_formatTime(dt)}';
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }

  String _truncateTransactionId(String id) {
    if (id.length <= 16) return id;
    return '${id.substring(0, 8)}...${id.substring(id.length - 6)}';
  }

  Future<void> _onPayPressed(
    BuildContext context,
    TripBookingData booking,
    TripBookingDetailViewModel vm,
  ) async {
    final payVm = context.read<TripPaymentViewModel>();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => const Center(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Đang tạo thanh toán...'),
              ],
            ),
          ),
        ),
      ),
    );
    final paymentData = await payVm.createPayment(booking.id);
    if (!context.mounted) return;
    Navigator.pop(context);
    if (paymentData != null && paymentData.paymentUrl.isNotEmpty) {
      context.push(
        Routes.tripPayment,
        extra: {
          'bookingId': booking.id,
          'paymentUrl': paymentData.paymentUrl,
          'transactionId': paymentData.transactionId,
          'amount': paymentData.amount,
          'tripName':
              '${booking.originDestination} → ${booking.destinationDestination}',
          'expiresAt': paymentData.expiresAt?.toIso8601String(),
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Lỗi: ${payVm.error ?? 'Không thể tạo thanh toán'}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow(this.label, this.value, {this.isBold = false});

  final String label;
  final String value;
  final bool isBold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Color(0xFF64748B)),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: isBold ? 16 : 13,
            fontWeight: isBold ? FontWeight.w800 : FontWeight.w600,
            color: const Color(0xFF1E293B),
          ),
        ),
      ],
    );
  }
}
