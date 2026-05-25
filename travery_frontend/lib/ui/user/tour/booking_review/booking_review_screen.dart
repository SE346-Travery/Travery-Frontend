import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

import '../../../../routing/routes.dart';
import 'view_models/booking_review_view_model.dart';

class BookingReviewScreen extends StatefulWidget {
  const BookingReviewScreen({
    super.key,
    required this.viewModel,
    required this.tourId,
    required this.instanceId,
    required this.tourName,
    required this.tourImageUrl,
    required this.members,
    required this.adultCount,
    required this.childCount,
    required this.pricePerAdult,
    required this.pricePerChild,
    required this.specialRequests,
    required this.startDate,
    required this.endDate,
  });

  final BookingReviewViewModel viewModel;
  final String tourId;
  final String instanceId;
  final String tourName;
  final String? tourImageUrl;
  final List<Map<String, dynamic>> members;
  final int adultCount;
  final int childCount;
  final double pricePerAdult;
  final double pricePerChild;
  final String specialRequests;
  final String startDate;
  final String endDate;

  @override
  State<BookingReviewScreen> createState() => _BookingReviewScreenState();
}

class _BookingReviewScreenState extends State<BookingReviewScreen> {
  bool _termsAccepted = false;

  double get _totalPrice =>
      (widget.adultCount * widget.pricePerAdult) +
      (widget.childCount * widget.pricePerChild);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF131B2E)),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          'Xác nhận thông tin',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<BookingReviewViewModel>(
        builder: (context, vm, _) {
          return ListView(
            padding: const EdgeInsets.all(20),
            children: [
              // Tour Info Card
              Container(
                padding: const EdgeInsets.all(20),
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
                    Text(
                      widget.tourName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF131B2E),
                      ),
                    ),
                    const SizedBox(height: 12),
                    if (widget.startDate.isNotEmpty)
                      _InfoRow(
                        icon: Icons.calendar_today,
                        text: '${widget.startDate} - ${widget.endDate}',
                      ),
                    if (widget.tourImageUrl != null) ...[
                      const SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          widget.tourImageUrl!,
                          height: 160,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const SizedBox.shrink(),
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Members Card
              Container(
                padding: const EdgeInsets.all(20),
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
                      'DANH SÁCH KHÁCH',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF414755),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ...widget.members.map(
                      (m) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Row(
                          children: [
                            Container(
                              width: 36,
                              height: 36,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F3FF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.person,
                                size: 18,
                                color: AppColors.primary,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    m['fullName'] ?? '',
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF131B2E),
                                    ),
                                  ),
                                  if ((m['identityNumber'] as String?)
                                          ?.isNotEmpty ==
                                      true)
                                    Text(
                                      'CCCD: ${m['identityNumber']}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF414755),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: m['memberType'] == 'ADULT'
                                    ? AppColors.primary.withValues(alpha: 0.1)
                                    : Colors.orange.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                m['memberType'] == 'ADULT' ? 'NL' : 'TE',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w700,
                                  color: m['memberType'] == 'ADULT'
                                      ? AppColors.primary
                                      : Colors.orange[700],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Special Requests
              if (widget.specialRequests.isNotEmpty) ...[
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(20),
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
                          const Icon(Icons.edit_note, color: AppColors.primary),
                          const SizedBox(width: 8),
                          const Text(
                            'Ghi chú đặc biệt',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F3FF),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.primary.withValues(alpha: 0.2),
                          ),
                        ),
                        child: Text(
                          '"${widget.specialRequests}"',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF414755),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],

              // Terms Checkbox
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () => setState(() => _termsAccepted = !_termsAccepted),
                child: Row(
                  children: [
                    Checkbox(
                      value: _termsAccepted,
                      onChanged: (v) =>
                          setState(() => _termsAccepted = v ?? false),
                      activeColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Tôi đã đọc và đồng ý với các Điều khoản sử dụng và Chính sách hoàn hủy của Travery.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 120),
            ],
          );
        },
      ),
      bottomNavigationBar: Container(
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
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tổng thanh toán',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF414755),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _formatPrice(_totalPrice),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: !_termsAccepted ? null : () => _onConfirm(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: Colors.grey[300],
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 0,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Tiếp tục',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, size: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onConfirm(BuildContext context) async {
    final vm = widget.viewModel;
    final success = await vm.createBooking(
      instanceId: widget.instanceId,
      members: widget.members,
      specialRequests: widget.specialRequests,
    );

    if (!mounted) return;

    if (!success) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(vm.error ?? 'Có lỗi xảy ra'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final booking = vm.bookingData;
    if (booking == null) return;

    if (booking.payment != null && booking.payment!.paymentUrl.isNotEmpty) {
      context.push(
        Routes.vnpayPayment,
        extra: {
          'bookingId': booking.id,
          'paymentUrl': booking.payment!.paymentUrl,
          'transactionId': booking.payment!.transactionId,
          'amount': booking.payment!.amount,
          'expiresAt': booking.payment!.expiresAt,
          'tourName': widget.tourName,
        },
      );
    } else {
      context.push(
        Routes.bookingSuccess,
        extra: {
          'bookingId': booking.id,
          'tourName': widget.tourName,
          'startDate': widget.startDate,
          'totalPrice': booking.totalPrice,
          'adultCount': widget.adultCount,
          'childCount': widget.childCount,
        },
      );
    }
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 16, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(fontSize: 13, color: Color(0xFF414755)),
        ),
      ],
    );
  }
}
