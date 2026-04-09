import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';
import '../../../../../../../data/model/booking_tour_model.dart';
import '../../../../../../../data/model/tour_combined_model.dart';
import '../../../../../../core/themes/app_colors.dart';
import '../widgets/payment_countdown.dart';
import '../widgets/qr_card.dart';
import 'tour_booking_success_page.dart';

class TourPaymentPage extends StatefulWidget {
  final BookingTour booking;
  final TourCombined tourData;

  const TourPaymentPage({
    super.key,
    required this.booking,
    required this.tourData,
  });

  @override
  State<TourPaymentPage> createState() => _TourPaymentPageState();
}

class _TourPaymentPageState extends State<TourPaymentPage> {
  // API
  void _handleExpired() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("Hết thời gian"),
        content: const Text("Giao dịch giữ chỗ của bạn đã hết hạn (15 phút)."),
        actions: [
          ElevatedButton(
            onPressed: () =>
                Navigator.of(context).popUntil((route) => route.isFirst),
            child: const Text("Quay về trang chủ"),
          ),
        ],
      ),
    );
  }

  // CHỜ USER THANH TOÁN, TEST 10S
  void _startPaymentListener() {
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BookingSuccessPage(
              booking: widget.booking,
              tourData: widget.tourData,
            ),
          ),
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _startPaymentListener();
  }

  Future<bool> _onWillPop() async {
    final shouldPop = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Dừng giao dịch?"),
        content: const Text(
          "Nếu bạn thoát, yêu cầu đặt chỗ này sẽ bị hủy và bạn có thể mất chỗ.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Ở lại"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text(
              "Dừng giao dịch",
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
    return shouldPop ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat('#,###', 'vi_VN');

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        final bool shouldPop = await _onWillPop();
        if (shouldPop && context.mounted) Navigator.pop(context);
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: BaseAppBar(title: "Thanh toán"),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PaymentCountdown(
                createdAt: widget.booking.createdAt,
                onTimerEnd: _handleExpired,
              ),
              const SizedBox(height: 24),

              _buildSectionTitle("QUÉT MÃ THANH TOÁN"),
              PaymentQRCodeCard(
                amount: widget.booking.totalPrice,
                format: currencyFormat,
              ),

              const SizedBox(height: 24),
              _buildSectionTitle("CHI TIẾT ĐƠN HÀNG"),
              _buildTripSummaryCard(currencyFormat),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildTripSummaryCard(NumberFormat format) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://img.lovepik.com/photo/40015/3762.jpg_wh860.jpg",
                  width: 64,
                  height: 64,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  widget.tourData.tour.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          const Divider(height: 32, color: Color(0xFFF1F1F1)),
          _buildInfoRow("Hành khách", widget.booking.passengerName),
          _buildInfoRow("Số điện thoại", widget.booking.passengerPhone),
          _buildInfoRow(
            "Số lượng",
            "${widget.booking.adultCount} người lớn, ${widget.booking.childCount} trẻ em",
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Tổng thanh toán",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "${format.format(widget.booking.totalPrice)}đ",
                style: const TextStyle(
                  fontSize: 14,
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

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 13)),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
