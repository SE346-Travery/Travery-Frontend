import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/data/services/payment_session_storage.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/widgets/user_app_bar.dart';
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
      appBar: UserAppBar(
        title: 'Xác nhận thông tin',
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
        ),
      ),
      body: Consumer<BookingReviewViewModel>(
        builder: (context, vm, _) {
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // ── Section 1: Tour Info & Members ──
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFE2E8F0)),
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
                    // Tour name
                    Text(
                      widget.tourName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        fontFamily: 'Be Vietnam Pro',
                        color: Color(0xFF1E293B),
                        height: 1.3,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Date & Location rows
                    if (widget.startDate.isNotEmpty) ...[
                      _buildInfoRow(
                        icon: Icons.calendar_today_outlined,
                        text: '${widget.startDate} - ${widget.endDate}',
                      ),
                      const SizedBox(height: 12),
                    ],
                    if (widget.tourImageUrl != null) ...[
                      const SizedBox(height: 8),
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

                    // Members divider & label
                    const SizedBox(height: 20),
                    Container(height: 1, color: const Color(0xFFE2E8F0)),
                    const SizedBox(height: 16),
                    const Text(
                      'DANH SÁCH KHÁCH',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Be Vietnam Pro',
                        color: Color(0xFF64748B),
                        letterSpacing: 0.8,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Member list
                    ...widget.members.map(
                      (m) => Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1F5F9),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.person_outline,
                                size: 20,
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
                                      color: Color(0xFF1E293B),
                                    ),
                                  ),
                                  const SizedBox(height: 2),
                                  Text(
                                    _buildIdentityLabel(m),
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF64748B),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: m['memberType'] == 'ADULT'
                                    ? AppColors.primary.withValues(alpha: 0.1)
                                    : Colors.orange.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                _memberTypeLabel(m['memberType'] as String?),
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

              const SizedBox(height: 16),

              // ── Section 2: Special Requests ──
              if (widget.specialRequests.isNotEmpty) ...[
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFE2E8F0)),
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
                          Icon(
                            Icons.edit_note,
                            color: AppColors.primary,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Ghi chú đặc biệt',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Be Vietnam Pro',
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F5F9),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: AppColors.primary.withValues(alpha: 0.2),
                          ),
                        ),
                        child: Text(
                          '"${widget.specialRequests}"',
                          style: const TextStyle(
                            fontSize: 13,
                            color: Color(0xFF64748B),
                            fontStyle: FontStyle.italic,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // ── Section 3: Terms Checkbox ──
              GestureDetector(
                onTap: () => setState(() => _termsAccepted = !_termsAccepted),
                behavior: HitTestBehavior.opaque,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: _termsAccepted,
                          onChanged: (v) =>
                              setState(() => _termsAccepted = v ?? false),
                          activeColor: AppColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          side: BorderSide(
                            color: _termsAccepted
                                ? AppColors.primary
                                : const Color(0xFFCBD5E1),
                            width: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF64748B),
                                height: 1.5,
                              ),
                              children: [
                                const TextSpan(
                                  text: 'Tôi đã đọc và đồng ý với các ',
                                ),
                                TextSpan(
                                  text: 'Điều khoản sử dụng',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                                const TextSpan(text: ' và '),
                                TextSpan(
                                  text: 'Chính sách hoàn hủy',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primary,
                                  ),
                                ),
                                const TextSpan(text: ' của Travery.'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 100),
            ],
          );
        },
      ),

      // ── Fixed Footer Action Bar ──
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(
          24,
          16,
          24,
          MediaQuery.of(context).padding.bottom + 16,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 20,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Consumer<BookingReviewViewModel>(
          builder: (context, vm, _) {
            return Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'TỔNG THANH TOÁN',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF64748B),
                          letterSpacing: 0.6,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _formatPrice(_totalPrice),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Be Vietnam Pro',
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 160,
                  child: GestureDetector(
                    onTap: !_termsAccepted || vm.isCreatingBooking
                        ? null
                        : () => _onConfirm(context),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      height: 48,
                      decoration: BoxDecoration(
                        color: _termsAccepted && !vm.isCreatingBooking
                            ? AppColors.primary
                            : const Color(0xFFE2E8F0),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: _termsAccepted && !vm.isCreatingBooking
                            ? [
                                BoxShadow(
                                  color: AppColors.primary.withValues(
                                    alpha: 0.25,
                                  ),
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ]
                            : null,
                      ),
                      child: Center(
                        child: vm.isCreatingBooking
                            ? const SizedBox(
                                width: 22,
                                height: 22,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.5,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    Colors.white,
                                  ),
                                ),
                              )
                            : const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Tiếp tục',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Be Vietnam Pro',
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(width: 6),
                                  Icon(
                                    Icons.arrow_forward,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoRow({required IconData icon, required String text}) {
    return Row(
      children: [
        Icon(icon, size: 20, color: AppColors.primary),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF64748B),
          ),
        ),
      ],
    );
  }

  String _buildIdentityLabel(Map<String, dynamic> m) {
    final parts = <String>[];
    final idNum = m['identityNumber'] as String?;
    if (idNum != null && idNum.isNotEmpty) {
      parts.add('CCCD/Hộ chiếu: $idNum');
    }
    final dob = m['dateOfBirth'] as String?;
    if (dob != null && dob.isNotEmpty) {
      parts.add('Ngày sinh: $dob');
    }
    return parts.isEmpty ? 'Chưa có thông tin CCCD' : parts.join('  •  ');
  }

  String _memberTypeLabel(String? type) {
    switch (type) {
      case 'ADULT':
        return 'NL';
      case 'CHILD':
        return 'TE';
      default:
        return 'NL';
    }
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
          content: Text(vm.error ?? 'Có lỗi xảy ra khi đặt tour'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final booking = vm.bookingData;
    if (booking == null) return;

    // Save txnRef → bookingId mapping so deeplink can look up bookingId later
    if (booking.payment != null && booking.payment!.transactionId.isNotEmpty) {
      await PaymentSessionStorage.save(
        booking.payment!.transactionId,
        booking.id,
      );
    }

    if (booking.payment != null && booking.payment!.paymentUrl.isNotEmpty) {
      // Navigate to VNPay payment screen
      // After payment, user will be redirected via deeplink to PaymentResultScreen
      context.pushReplacement(
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
      // No payment needed - navigate to payment result (will show pending state)
      context.pushReplacement(
        Routes.paymentResult,
        extra: {
          'bookingId': booking.id,
          'txnRef': booking.payment?.transactionId,
          'deeplinkStatus': null,
          'responseCode': null,
        },
      );
    }
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}
