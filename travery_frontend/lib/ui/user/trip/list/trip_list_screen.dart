import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/trip/list/view_models/trip_list_view_model.dart';
import 'package:travery_frontend/ui/user/trip/home/view_models/trip_home_view_model.dart';
import 'package:travery_frontend/data/models/trip/trip_search_item.dart';
import 'package:travery_frontend/data/models/trip/destination_data.dart';
import 'package:travery_frontend/ui/user/widgets/user_app_bar.dart';

class TripListScreen extends StatefulWidget {
  const TripListScreen({super.key});

  @override
  State<TripListScreen> createState() => _TripListScreenState();
}

class _TripListScreenState extends State<TripListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
      if (extra != null) {
        final origin = extra['origin'] as DestinationData;
        final destination = extra['destination'] as DestinationData;
        final departureDate = extra['departureDate'] as DateTime;
        final vm = context.read<TripListViewModel>();
        vm.setSearchParams(
          origin: origin,
          destination: destination,
          departureDate: departureDate,
        );
        vm.search();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: UserAppBar(
        title: 'Danh sách chuyến xe',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Consumer<TripListViewModel>(
        builder: (context, vm, _) {
          return Column(
            children: [
              _buildSearchInfoBar(context, vm),
              _buildFilters(vm),
              Expanded(
                child: vm.isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : vm.error != null
                    ? _buildError(vm)
                    : vm.trips.isEmpty
                    ? _buildEmpty()
                    : _buildTripList(vm),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSearchInfoBar(BuildContext context, TripListViewModel vm) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Consumer<TripListViewModel>(
              builder: (context, vm, _) {
                return Row(
                  children: [
                    const Icon(
                      Icons.trip_origin,
                      size: 14,
                      color: AppColors.primary,
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        vm.trips.isNotEmpty
                            ? vm.trips.first.originDestination.name
                            : 'Điểm đi',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 14,
                        color: Color(0xFF717786),
                      ),
                    ),
                    const Icon(
                      Icons.location_on,
                      size: 14,
                      color: Color(0xFFFF6B6B),
                    ),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        vm.trips.isNotEmpty
                            ? vm.trips.first.destinationDestination.name
                            : 'Điểm đến',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF131B2E),
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
    );
  }

  Widget _buildFilters(TripListViewModel vm) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFE2E8F0))),
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _FilterChip(
                  label: 'Tất cả loại xe',
                  isSelected: vm.selectedCoachType == null,
                  onTap: () => vm.setCoachType(null),
                ),
                const SizedBox(width: 8),
                ...CoachType.values.map(
                  (type) => Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: _FilterChip(
                      label: type.label,
                      isSelected: vm.selectedCoachType == type,
                      onTap: () => vm.setCoachType(type),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _FilterChip(
                        label: 'Tất cả giờ',
                        isSelected: vm.selectedTimeSlot == null,
                        onTap: () => vm.setTimeSlot(null),
                      ),
                      const SizedBox(width: 8),
                      ...TimeSlot.values.map(
                        (slot) => Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: _FilterChip(
                            label: slot.label.split(' ').first,
                            isSelected: vm.selectedTimeSlot == slot,
                            onTap: () => vm.setTimeSlot(slot),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: vm.toggleSortByPrice,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: vm.sortByPriceAsc
                        ? AppColors.primary.withValues(alpha: 0.08)
                        : const Color(0xFFF2F3FF),
                    borderRadius: BorderRadius.circular(20),
                    border: vm.sortByPriceAsc
                        ? Border.all(color: AppColors.primary)
                        : null,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.sort,
                        size: 14,
                        color: Color(0xFF414755),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Giá',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: vm.sortByPriceAsc
                              ? AppColors.primary
                              : const Color(0xFF414755),
                        ),
                      ),
                      Icon(
                        vm.sortByPriceAsc
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        size: 12,
                        color: vm.sortByPriceAsc
                            ? AppColors.primary
                            : const Color(0xFF414755),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTripList(TripListViewModel vm) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: vm.trips.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final trip = vm.trips[index];
        return _TripCard(
          trip: trip,
          onTap: () => context.push(Routes.tripSeatPicker, extra: trip),
        );
      },
    );
  }

  Widget _buildError(TripListViewModel vm) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 48, color: Colors.grey),
          const SizedBox(height: 12),
          Text(
            vm.error ?? 'Có lỗi xảy ra',
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 8),
          ElevatedButton(onPressed: vm.search, child: const Text('Thử lại')),
        ],
      ),
    );
  }

  Widget _buildEmpty() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.directions_bus_outlined,
            size: 64,
            color: Color(0xFFE2E8F0),
          ),
          SizedBox(height: 16),
          Text(
            'Không tìm thấy chuyến xe nào',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF414755),
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Thử thay đổi bộ lọc hoặc ngày khởi hành',
            style: TextStyle(fontSize: 13, color: Color(0xFF717786)),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  const _FilterChip({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary : const Color(0xFFF2F3FF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : const Color(0xFF414755),
          ),
        ),
      ),
    );
  }
}

class _TripCard extends StatelessWidget {
  const _TripCard({required this.trip, required this.onTap});

  final TripSearchItem trip;
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
                        _getCoachTypeLabel(trip.coachType),
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                      Text(
                        '${trip.totalSeats} chỗ',
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF717786),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _formatPrice(trip.basePrice),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                    const Text(
                      '/vé',
                      style: TextStyle(fontSize: 11, color: Color(0xFF717786)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(height: 1),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _formatTime(trip.departureTime),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        trip.originDestination.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Color(0xFF717786),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        _formatDuration(trip.departureTime, trip.arrivalTime),
                        style: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF717786),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color(0xFFE2E8F0),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            size: 12,
                            color: Color(0xFF717786),
                          ),
                          Expanded(
                            child: Container(
                              height: 1,
                              color: const Color(0xFFE2E8F0),
                            ),
                          ),
                          Container(
                            width: 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              shape: BoxShape.circle,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _formatTime(trip.arrivalTime),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: trip.availableSeats > 0
                              ? const Color(0xFFD2E1F7)
                              : const Color(0xFFFFDAD6),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          trip.availableSeats > 0
                              ? 'Còn ${trip.availableSeats} chỗ'
                              : 'Hết chỗ',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: trip.availableSeats > 0
                                ? const Color(0xFF0058BC)
                                : const Color(0xFFBA1A1A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _getCoachTypeLabel(String type) {
    switch (type) {
      case 'BED':
        return 'Xe giường nằm';
      case 'LIMOUSINE':
        return 'Limousine';
      default:
        return 'Xe ghế ngồi';
    }
  }

  String _formatTime(DateTime dt) {
    return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  String _formatDuration(DateTime start, DateTime end) {
    final diff = end.difference(start);
    if (diff.inHours > 0) {
      return '${diff.inHours}h ${diff.inMinutes % 60}m';
    }
    return '${diff.inMinutes}m';
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}
