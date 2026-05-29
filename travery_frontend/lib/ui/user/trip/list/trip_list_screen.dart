import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/data/models/trip/trip_search_item.dart';
import 'package:travery_frontend/ui/user/trip/list/view_models/trip_list_view_model.dart';
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
        final origin = extra['origin'];
        final destination = extra['destination'];
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
              _SearchInfoBar(vm: vm),
              _FilterChips(vm: vm),
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

class _SearchInfoBar extends StatelessWidget {
  const _SearchInfoBar({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      child: Row(
        children: [
          const Icon(Icons.trip_origin, size: 14, color: AppColors.primary),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              vm.origin?.name ?? 'Điểm đi',
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
          const Icon(Icons.location_on, size: 14, color: Color(0xFFFF6B6B)),
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              vm.destination?.name ?? 'Điểm đến',
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
      ),
    );
  }
}

class _FilterChips extends StatelessWidget {
  const _FilterChips({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFE2E8F0))),
      ),
      child: Row(
        children: [
          Expanded(child: _PriceChip(vm: vm)),
          const SizedBox(width: 8),
          Expanded(child: _CoachChip(vm: vm)),
          const SizedBox(width: 8),
          Expanded(child: _TimeChip(vm: vm)),
        ],
      ),
    );
  }
}

class _PriceChip extends StatelessWidget {
  const _PriceChip({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    final hasSort = vm.priceSort != 0;
    final isUp = vm.priceSort == 1;
    final label = !hasSort ? 'Giá' : (isUp ? 'Giá ↑' : 'Giá ↓');

    return GestureDetector(
      onTap: () => _showPriceSheet(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: hasSort ? AppColors.primary : const Color(0xFFF2F3FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: hasSort ? Colors.white : const Color(0xFF414755),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPriceSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _PriceFilterSheet(vm: vm),
    );
  }
}

class _CoachChip extends StatelessWidget {
  const _CoachChip({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    final selected = vm.selectedCoachType;
    final label = selected == null ? 'Ghế' : selected.label;

    return GestureDetector(
      onTap: () => _showCoachSheet(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: selected != null ? AppColors.primary : const Color(0xFFF2F3FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: selected != null
                    ? Colors.white
                    : const Color(0xFF414755),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showCoachSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _CoachTypeFilterSheet(vm: vm),
    );
  }
}

class _TimeChip extends StatelessWidget {
  const _TimeChip({required this.vm});
  final TripListViewModel vm;

  String _shortLabel(TimeSlot? slot) {
    if (slot == null) return 'Giờ';
    switch (slot) {
      case TimeSlot.earlyMorning:
        return 'Rạng sáng';
      case TimeSlot.morning:
        return 'Sáng';
      case TimeSlot.afternoon:
        return 'Chiều';
      case TimeSlot.evening:
        return 'Tối';
    }
  }

  @override
  Widget build(BuildContext context) {
    final selected = vm.selectedTimeSlot;
    final label = _shortLabel(selected);

    return GestureDetector(
      onTap: () => _showTimeSheet(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration: BoxDecoration(
          color: selected != null ? AppColors.primary : const Color(0xFFF2F3FF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: selected != null
                    ? Colors.white
                    : const Color(0xFF414755),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showTimeSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) => _TimeSlotFilterSheet(vm: vm),
    );
  }
}

class _PriceFilterSheet extends StatelessWidget {
  const _PriceFilterSheet({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFE2E8F0),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Sắp xếp theo giá',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131B2E),
                  ),
                ),
                const Spacer(),
                if (vm.priceSort != 0)
                  GestureDetector(
                    onTap: () {
                      vm.resetPriceSort();
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.close, size: 14, color: AppColors.primary),
                          SizedBox(width: 4),
                          Text(
                            'Xóa lọc',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _PriceOption(
            label: 'Giá thấp đến cao',
            value: -1,
            current: vm.priceSort,
            vm: vm,
          ),
          _PriceOption(
            label: 'Giá cao đến thấp',
            value: 1,
            current: vm.priceSort,
            vm: vm,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _PriceOption extends StatelessWidget {
  const _PriceOption({
    required this.label,
    required this.value,
    required this.current,
    required this.vm,
  });
  final String label;
  final int value;
  final int current;
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    final isSelected = current == value;
    return InkWell(
      onTap: () {
        vm.setPriceSort(value);
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: isSelected
                      ? AppColors.primary
                      : const Color(0xFF414755),
                ),
              ),
            ),
            if (isSelected)
              const Icon(Icons.check, color: AppColors.primary, size: 20),
          ],
        ),
      ),
    );
  }
}

class _CoachTypeFilterSheet extends StatelessWidget {
  const _CoachTypeFilterSheet({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFE2E8F0),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Loại ghế',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131B2E),
                  ),
                ),
                const Spacer(),
                if (vm.selectedCoachType != null)
                  GestureDetector(
                    onTap: () {
                      vm.resetCoachType();
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.close, size: 14, color: AppColors.primary),
                          SizedBox(width: 4),
                          Text(
                            'Xóa lọc',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _CoachOption(
            label: 'Ghế ngồi',
            value: CoachType.seat,
            current: vm.selectedCoachType,
            vm: vm,
          ),
          _CoachOption(
            label: 'Giường nằm',
            value: CoachType.bed,
            current: vm.selectedCoachType,
            vm: vm,
          ),
          _CoachOption(
            label: 'Limousine',
            value: CoachType.limousine,
            current: vm.selectedCoachType,
            vm: vm,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _CoachOption extends StatelessWidget {
  const _CoachOption({
    required this.label,
    required this.value,
    required this.current,
    required this.vm,
  });
  final String label;
  final CoachType? value;
  final CoachType? current;
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    final isSelected = current == value;
    return InkWell(
      onTap: () {
        vm.setCoachType(value);
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: isSelected
                      ? AppColors.primary
                      : const Color(0xFF414755),
                ),
              ),
            ),
            if (isSelected)
              const Icon(Icons.check, color: AppColors.primary, size: 20),
          ],
        ),
      ),
    );
  }
}

class _TimeSlotFilterSheet extends StatelessWidget {
  const _TimeSlotFilterSheet({required this.vm});
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Center(
            child: Container(
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFE2E8F0),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  'Khung giờ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131B2E),
                  ),
                ),
                const Spacer(),
                if (vm.selectedTimeSlot != null)
                  GestureDetector(
                    onTap: () {
                      vm.resetTimeSlot();
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.close, size: 14, color: AppColors.primary),
                          SizedBox(width: 4),
                          Text(
                            'Xóa lọc',
                            style: TextStyle(
                              fontSize: 12,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _TimeOption(
            label: 'Rạng sáng (00:00 - 06:00)',
            value: TimeSlot.earlyMorning,
            current: vm.selectedTimeSlot,
            vm: vm,
          ),
          _TimeOption(
            label: 'Sáng (06:00 - 12:00)',
            value: TimeSlot.morning,
            current: vm.selectedTimeSlot,
            vm: vm,
          ),
          _TimeOption(
            label: 'Chiều (12:00 - 18:00)',
            value: TimeSlot.afternoon,
            current: vm.selectedTimeSlot,
            vm: vm,
          ),
          _TimeOption(
            label: 'Tối (18:00 - 24:00)',
            value: TimeSlot.evening,
            current: vm.selectedTimeSlot,
            vm: vm,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class _TimeOption extends StatelessWidget {
  const _TimeOption({
    required this.label,
    required this.value,
    required this.current,
    required this.vm,
  });
  final String label;
  final TimeSlot? value;
  final TimeSlot? current;
  final TripListViewModel vm;

  @override
  Widget build(BuildContext context) {
    final isSelected = current == value;
    return InkWell(
      onTap: () {
        vm.setTimeSlot(value);
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  color: isSelected
                      ? AppColors.primary
                      : const Color(0xFF414755),
                ),
              ),
            ),
            if (isSelected)
              const Icon(Icons.check, color: AppColors.primary, size: 20),
          ],
        ),
      ),
    );
  }
}

class _TripCard extends StatelessWidget {
  const _TripCard({required this.trip, required this.onTap});
  final dynamic trip;
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
                        trip.coachType,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '${trip.availableSeats} ghế trống',
                        style: const TextStyle(
                          fontSize: 12,
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
                      _formatPrice(trip.basePrice as double),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ),
                    const Text(
                      '/khách',
                      style: TextStyle(fontSize: 11, color: Color(0xFF717786)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Text(
                  _formatTime(trip.departureTime as DateTime),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF131B2E),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    children: [
                      const Text(
                        '_____________',
                        style: TextStyle(
                          color: Color(0xFFE2E8F0),
                          letterSpacing: 4,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _formatDuration(
                          trip.departureTime as DateTime,
                          trip.arrivalTime as DateTime,
                        ),
                        style: const TextStyle(
                          fontSize: 10,
                          color: Color(0xFF717786),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  _formatTime(trip.arrivalTime as DateTime),
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF131B2E),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatTime(DateTime dt) {
    return '${dt.hour.toString().padLeft(2, '0')}:${dt.minute.toString().padLeft(2, '0')}';
  }

  String _formatDuration(DateTime start, DateTime end) {
    final diff = end.difference(start);
    final hours = diff.inHours;
    final minutes = diff.inMinutes % 60;
    return '${hours}h ${minutes}m';
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}
