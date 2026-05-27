import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/user/tour/booking_list/view_models/booking_list_view_model.dart';
import 'package:travery_frontend/ui/user/widgets/empty_state.dart';
import 'package:travery_frontend/ui/user/widgets/error_state.dart';
import 'package:travery_frontend/ui/user/tour/widgets/booking_card.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            // Header
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 12),
              child: Row(
                children: [
                  Text(
                    'Đơn đặt tour của tôi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF131B2E),
                    ),
                  ),
                ],
              ),
            ),
            // Content
            Expanded(
              child: Consumer<BookingListViewModel>(
                builder: (context, vm, _) {
                  return Column(
                    children: [
                      // Filter chips
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: vm.statusFilters.map((filter) {
                              final isSelected =
                                  (vm.selectedStatus ?? 'Tất cả') == filter;
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
                                        color: isSelected
                                            ? Colors.white
                                            : const Color(0xFF414755),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      // Booking list
                      Expanded(
                        child: vm.isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : vm.error != null
                            ? ErrorState(
                                message: '',
                                onRetry: () => vm.loadBookings(refresh: true),
                              )
                            : vm.bookings.isEmpty
                            ? const EmptyState(
                                icon: Icons.confirmation_number_outlined,
                                title: 'Chưa có đơn đặt tour nào',
                                subtitle: 'Hãy khám phá và đặt tour ngay!',
                              )
                            : RefreshIndicator(
                                onRefresh: () => vm.loadBookings(refresh: true),
                                child: ListView.builder(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  itemCount: vm.bookings.length,
                                  itemBuilder: (context, index) {
                                    final booking = vm.bookings[index];
                                    return BookingCard(
                                      booking: booking,
                                      statusLabel: vm.getStatusLabel(
                                        booking.status,
                                      ),
                                      onTap: () => context.push(
                                        Routes.bookingDetail.replaceFirst(
                                          ':id',
                                          booking.id,
                                        ),
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
            ),
          ],
        ),
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
