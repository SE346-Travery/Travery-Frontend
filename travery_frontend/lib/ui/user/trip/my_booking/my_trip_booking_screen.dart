import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/trip/my_booking/view_models/my_trip_booking_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking_list/booking_list_screen.dart';
import 'package:travery_frontend/ui/user/widgets/user_app_bar.dart';

class MyTripBookingScreen extends StatefulWidget {
  const MyTripBookingScreen({super.key});

  @override
  State<MyTripBookingScreen> createState() => _MyTripBookingScreenState();
}

class _MyTripBookingScreenState extends State<MyTripBookingScreen> {
  int _selectedNavIndex = 0;
  bool _showRail = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<MyTripBookingViewModel>().loadBookings();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: UserAppBar(
        title: 'Đơn đặt vé của tôi',
        actions: [
          IconButton(
            onPressed: () => setState(() => _showRail = !_showRail),
            icon: Icon(
              _showRail ? Icons.view_sidebar : Icons.view_sidebar_outlined,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            child: _selectedNavIndex == 0
                ? const BookingListScreen()
                : const _TripBookingListContent(),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            width: _showRail ? 80 : 0,
            child: _showRail
                ? NavigationRail(
                    selectedIndex: _selectedNavIndex,
                    onDestinationSelected: (index) {
                      setState(() {
                        _selectedNavIndex = index;
                        _showRail = false;
                      });
                    },
                    backgroundColor: Colors.white,
                    indicatorColor: AppColors.primary.withValues(alpha: 0.1),
                    labelType: NavigationRailLabelType.selected,
                    destinations: const [
                      NavigationRailDestination(
                        icon: Icon(Icons.confirmation_number_outlined),
                        selectedIcon: Icon(
                          Icons.confirmation_number,
                          color: AppColors.primary,
                        ),
                        label: Text('Tour', style: TextStyle(fontSize: 11)),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.directions_bus_outlined),
                        selectedIcon: Icon(
                          Icons.directions_bus,
                          color: AppColors.primary,
                        ),
                        label: Text('Xe khách', style: TextStyle(fontSize: 11)),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

class _TripBookingListContent extends StatelessWidget {
  const _TripBookingListContent();

  @override
  Widget build(BuildContext context) {
    return Consumer<MyTripBookingViewModel>(
      builder: (context, vm, _) {
        if (vm.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (vm.bookings.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.directions_bus_outlined,
                  size: 64,
                  color: Color(0xFFE2E8F0),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Chưa có đơn đặt xe nào',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF414755),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Hãy đặt xe để trải nghiệm dịch vụ!',
                  style: TextStyle(fontSize: 13, color: Color(0xFF717786)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => context.go(Routes.tripHome),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text('Đặt xe ngay'),
                ),
              ],
            ),
          );
        }

        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: vm.bookings.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final booking = vm.bookings[index];
            return _TripBookingCard(
              booking: booking,
              statusLabel: vm.getStatusLabel(booking.status),
              onTap: () => context.push(
                Routes.tripBookingDetail,
                extra: {'booking': booking},
              ),
            );
          },
        );
      },
    );
  }
}

class _TripBookingCard extends StatelessWidget {
  const _TripBookingCard({
    required this.booking,
    required this.statusLabel,
    required this.onTap,
  });

  final dynamic booking;
  final String statusLabel;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.directions_bus,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${booking.originDestination} → ${booking.destinationDestination}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _formatDate(booking.departureTime as DateTime),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF717786),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getStatusColor(
                      booking.status as String,
                    ).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    statusLabel,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: _getStatusColor(booking.status as String),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  'Ghế: ${(booking.bookedSeatNames as List).join(", ")}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF414755),
                  ),
                ),
                const Spacer(),
                Text(
                  _formatPrice(booking.totalPrice as double),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'PAID':
        return Colors.green;
      case 'CANCELLED':
        return Colors.red;
      default:
        return Colors.orange;
    }
  }

  String _formatDate(DateTime dt) {
    return '${dt.day.toString().padLeft(2, '0')}/${dt.month.toString().padLeft(2, '0')}/${dt.year}';
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}
