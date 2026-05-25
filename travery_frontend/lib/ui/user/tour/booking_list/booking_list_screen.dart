import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/user/tour/booking_list/view_models/booking_list_view_model.dart';

class BookingListScreen extends StatefulWidget {
  const BookingListScreen({super.key});

  @override
  State<BookingListScreen> createState() => _BookingListScreenState();
}

class _BookingListScreenState extends State<BookingListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<BookingListViewModel>().loadBookings();
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
          'Đơn đặt tour của tôi',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<BookingListViewModel>(
        builder: (context, vm, _) {
          return Column(
            children: [
              // Filter Tabs
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: vm.statusFilters.map((filter) {
                      final isSelected = (vm.selectedStatus ?? 'Tất cả') == filter;
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: GestureDetector(
                          onTap: () => vm.loadBookings(status: filter),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? const Color(0xFF0058BC)
                                  : const Color(0xFFDAE2FD),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              _getStatusDisplayName(filter),
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: isSelected ? Colors.white : const Color(0xFF414755),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),

              // Booking List
              Expanded(
                child: vm.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : vm.error != null
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.error_outline, size: 48, color: Colors.grey),
                                const SizedBox(height: 12),
                                const Text('Không thể tải danh sách đơn đặt tour'),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () => vm.loadBookings(refresh: true),
                                  child: const Text('Thử lại'),
                                ),
                              ],
                            ),
                          )
                        : vm.bookings.isEmpty
                            ? const Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.confirmation_number_outlined,
                                        size: 64, color: Colors.grey),
                                    SizedBox(height: 16),
                                    Text(
                                      'Chưa có đơn đặt tour nào',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Hãy khám phá và đặt tour ngay!',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : RefreshIndicator(
                                onRefresh: () => vm.loadBookings(refresh: true),
                                child: ListView.builder(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  itemCount: vm.bookings.length,
                                  itemBuilder: (context, index) {
                                    final booking = vm.bookings[index];
                                    return _BookingCard(
                                      booking: booking,
                                      statusLabel: vm.getStatusLabel(booking.status),
                                      onTap: () => context.push(
                                        Routes.bookingDetail.replaceFirst(':id', booking.id),
                                      ),
                                    );
                                  },
                                ),
                              ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _getStatusDisplayName(String filter) {
    switch (filter) {
      case 'Tất cả':
        return 'Tất cả';
      case 'PENDING':
        return 'Đang chờ';
      case 'PAID':
        return 'Đã thanh toán';
      case 'CANCELLED':
        return 'Đã hủy';
      default:
        return filter;
    }
  }
}

class _BookingCard extends StatelessWidget {
  const _BookingCard({
    required this.booking,
    required this.statusLabel,
    required this.onTap,
  });

  final dynamic booking;
  final String statusLabel;
  final VoidCallback onTap;

  Color _getStatusColor() {
    switch (booking.status) {
      case 'PAID':
        return const Color(0xFF10B981);
      case 'PENDING':
        return Colors.orange;
      case 'CANCELLED':
        return const Color(0xFFBA1A1A);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Status Banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              color: _getStatusColor().withValues(alpha: 0.1),
              child: Row(
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _getStatusColor(),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    statusLabel.toUpperCase(),
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: _getStatusColor(),
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tour Name
                  Text(
                    booking.tourName,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF131B2E),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(height: 8),

                  // Date
                  Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                        size: 14,
                        color: Color(0xFF414755),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '${booking.startDate} - ${booking.endDate}',
                        style: const TextStyle(
                          fontSize: 13,
                          color: Color(0xFF414755),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tổng cộng',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF717786),
                            ),
                          ),
                          Text(
                            _formatPrice(booking.totalPrice),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF0058BC),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Xem chi tiết',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF0058BC),
                            ),
                          ),
                          const SizedBox(width: 4),
                          const Icon(
                            Icons.chevron_right,
                            size: 18,
                            color: Color(0xFF0058BC),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}
