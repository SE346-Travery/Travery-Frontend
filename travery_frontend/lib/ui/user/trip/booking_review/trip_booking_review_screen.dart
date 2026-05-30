import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/trip/booking_review/view_models/trip_booking_review_view_model.dart';
import 'package:travery_frontend/data/models/trip/trip_booking_data.dart';
import 'package:travery_frontend/data/models/trip/trip_search_item.dart';
import 'package:travery_frontend/data/models/trip/trip_seat_data.dart';
import 'package:travery_frontend/ui/user/widgets/user_app_bar.dart';
import 'package:travery_frontend/ui/user/widgets/trip_card.dart';

String _formatPrice(double price) {
  final str = price.toStringAsFixed(0);
  return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
}

class TripBookingReviewScreen extends StatefulWidget {
  const TripBookingReviewScreen({super.key});

  @override
  State<TripBookingReviewScreen> createState() =>
      _TripBookingReviewScreenState();
}

class _TripBookingReviewScreenState extends State<TripBookingReviewScreen> {
  late final TripBookingReviewViewModel _vm;

  TripSearchItem? _trip;
  List<SeatItem>? _seats;
  String _contactName = '';
  String _contactPhone = '';
  bool _bookingCreated = false;

  @override
  void initState() {
    super.initState();
    _vm = context.read<TripBookingReviewViewModel>();
    WidgetsBinding.instance.addPostFrameCallback((_) => _loadExtra());
  }

  void _loadExtra() {
    final extra = GoRouterState.of(context).extra as Map<String, dynamic>?;
    if (extra != null) {
      setState(() {
        _trip = extra['trip'] as TripSearchItem?;
        _seats = extra['seats'] as List<SeatItem>?;
        _contactName = extra['contactName'] as String? ?? '';
        _contactPhone = extra['contactPhone'] as String? ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: UserAppBar(
        title: 'Xác nhận đặt vé',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _buildSection(
            title: 'Thông tin chuyến xe',
            child: _TripInfoCard(trip: _trip, bookingData: _bookingData),
          ),
          const SizedBox(height: 16),
          _buildSection(
            title: 'Ghế đã chọn',
            child: _SeatCard(seats: _seats, basePrice: _trip?.basePrice ?? 0),
          ),
          const SizedBox(height: 16),
          _buildSection(
            title: 'Thông tin liên hệ',
            child: _ContactCard(name: _contactName, phone: _contactPhone),
          ),
          const SizedBox(height: 16),
          _buildSection(
            title: 'Chi tiết thanh toán',
            child: _PaymentCard(
              priceLabel:
                  '${_seats?.length ?? 0} x ${_formatPrice(_trip?.basePrice ?? 0)}',
              totalLabel: _formatPrice(_totalPrice),
            ),
          ),
          const SizedBox(height: 120),
        ],
      ),
      bottomNavigationBar: _BottomBar(
        totalPrice: _totalPrice,
        bookingCreated: _bookingCreated,
        isLoading: _vm.isCreatingBooking || _vm.isCreatingPayment,
        onConfirm: _onConfirmBooking,
        onPay: _onPay,
      ),
    );
  }

  double get _totalPrice => (_seats?.length ?? 0) * (_trip?.basePrice ?? 0);

  TripBookingData? get _bookingData => _bookingCreated ? _vm.bookingData : null;

  Future<void> _onConfirmBooking() async {
    if (_trip == null || _seats == null || _seats!.isEmpty) return;

    final booking = await _vm.createBooking(
      tripId: _trip!.id,
      seatLayoutItemIds: _seats!.map((s) => s.seatLayoutItemId).toList(),
      contactName: _contactName,
      contactPhone: _contactPhone,
    );

    if (!mounted) return;

    if (booking == null) {
      if (_vm.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(_vm.error!), backgroundColor: Colors.red),
        );
      }
      return;
    }

    setState(() {
      _bookingCreated = true;
    });
  }

  Future<void> _onPay() async {
    final paymentData = await _vm.createPayment();
    if (!mounted) return;

    if (paymentData == null) {
      if (_vm.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(_vm.error!), backgroundColor: Colors.red),
        );
      }
      return;
    }

    context.push(
      Routes.tripPayment,
      extra: {
        'bookingId': _vm.bookingData!.id,
        'paymentUrl': paymentData.paymentUrl,
        'transactionId': paymentData.transactionId,
        'amount': paymentData.amount,
        'tripName':
            '${_trip?.originDestination.name ?? ''} → ${_trip?.destinationDestination.name ?? ''}',
        'expiresAt': paymentData.expiresAt?.toIso8601String(),
      },
    );
  }

  Widget _buildSection({required String title, required Widget child}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}

class _TripInfoCard extends StatelessWidget {
  const _TripInfoCard({this.trip, this.bookingData});

  final TripSearchItem? trip;
  final TripBookingData? bookingData;

  @override
  Widget build(BuildContext context) {
    return TripCard(
      departureTime:
          bookingData?.departureTime ?? trip?.departureTime ?? DateTime.now(),
      arrivalTime:
          bookingData?.estimatedArrivalTime ??
          trip?.arrivalTime ??
          DateTime.now(),
      originName:
          bookingData?.originDestination ?? trip?.originDestination.name ?? '',
      destinationName:
          bookingData?.destinationDestination ??
          trip?.destinationDestination.name ??
          '',
      price: bookingData?.basePrice ?? trip?.basePrice ?? 0,
      coachType: trip?.coachType,
      onTap: null,
    );
  }
}

class _SeatCard extends StatelessWidget {
  const _SeatCard({required this.seats, required this.basePrice});

  final List<SeatItem>? seats;
  final double basePrice;

  String _formatPriceLocal(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }

  @override
  Widget build(BuildContext context) {
    final seatNames = seats?.map((s) => s.seatName).toList() ?? <String>[];
    final count = seatNames.length;

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
          Row(
            children: [
              const Icon(Icons.event_seat, size: 18, color: AppColors.primary),
              const SizedBox(width: 8),
              const Text(
                'Ghế đã chọn',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF131B2E),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.08),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '$count ghế',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          if (seatNames.isEmpty)
            const Text(
              'Chưa chọn ghế',
              style: TextStyle(color: Color(0xFF64748B), fontSize: 13),
            )
          else
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: seatNames.map((name) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF0F4FF),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      color: AppColors.primary.withValues(alpha: 0.25),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.chair,
                        size: 14,
                        color: AppColors.primary.withValues(alpha: 0.7),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1E40AF),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          if (seatNames.isNotEmpty) ...[
            const SizedBox(height: 12),
            const Divider(height: 1),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$count x ${_formatPriceLocal(basePrice)}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF64748B),
                  ),
                ),
                Text(
                  _formatPriceLocal(count * basePrice),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF131B2E),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

class _ContactCard extends StatelessWidget {
  const _ContactCard({required this.name, required this.phone});

  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
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
        children: [
          _ContactRow(icon: Icons.person_outline, label: name),
          const SizedBox(height: 8),
          _ContactRow(icon: Icons.phone_outlined, label: phone),
        ],
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w600,
            color: Color(0xFF131B2E),
          ),
        ),
      ],
    );
  }
}

class _PaymentCard extends StatelessWidget {
  const _PaymentCard({required this.priceLabel, required this.totalLabel});

  final String priceLabel;
  final String totalLabel;

  @override
  Widget build(BuildContext context) {
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                priceLabel,
                style: const TextStyle(fontSize: 13, color: Color(0xFF64748B)),
              ),
              Text(
                totalLabel,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1E293B),
                ),
              ),
            ],
          ),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tổng cộng',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF131B2E),
                ),
              ),
              Text(
                totalLabel,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar({
    required this.totalPrice,
    required this.bookingCreated,
    required this.isLoading,
    required this.onConfirm,
    required this.onPay,
  });

  final double totalPrice;
  final bool bookingCreated;
  final bool isLoading;
  final VoidCallback onConfirm;
  final VoidCallback onPay;

  String _formatPriceLocal(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }

  @override
  Widget build(BuildContext context) {
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
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Tổng cộng',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF414755),
                ),
              ),
              Text(
                _formatPriceLocal(totalPrice),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: ElevatedButton(
              onPressed: isLoading
                  ? null
                  : (bookingCreated ? onPay : onConfirm),
              style: ElevatedButton.styleFrom(
                backgroundColor: bookingCreated
                    ? AppColors.primary
                    : const Color(0xFF10B981),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 0,
              ),
              child: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      bookingCreated ? 'Thanh toán ngay' : 'Xác nhận đặt vé',
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
