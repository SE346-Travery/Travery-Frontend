import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travery_frontend/ui/user/tour/tour_view/tour_list/view/widgets/appbar.dart';

import '../../../../../../../core/themes/app_colors.dart';
import '../../../view/pages/tour_booking_cancel_page.dart';
import '../widgets/policy_item.dart';
import '../widgets/refund_alert.dart';

class BookingSummaryCard extends StatelessWidget {
  final String destination;
  final String totalPrice;
  const BookingSummaryCard({
    super.key,
    required this.destination,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(0.06),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildRow(Icons.location_on, "ĐIỂM ĐẾN", destination),
          const SizedBox(height: 24),
          _buildRow(
            Icons.payments,
            "TỔNG THANH TOÁN",
            totalPrice,
            isPrice: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    IconData icon,
    String label,
    String value, {
    bool isPrice = false,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.inputBackground,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Icon(icon, color: AppColors.primary, size: 24),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: AppColors.textSecondary,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: isPrice ? 18 : 14,
                  fontWeight: isPrice ? FontWeight.bold : FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BookingDetailPage extends StatelessWidget {
  final Map<String, dynamic> bookingData;
  final dynamic tourCombined;

  const BookingDetailPage({
    super.key,
    required this.bookingData,
    required this.tourCombined,
  });

  @override
  Widget build(BuildContext context) {
    final cf = NumberFormat('#,### ₫', 'vi_VN');
    final df = DateFormat('dd Thg MM, yyyy');

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: BaseAppBar(title: 'Chi tiết booking Tour'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeaderInfo(),
                  const SizedBox(height: 24),
                  _buildHeroImage(df),
                  _buildSummarySection(cf),
                  const SizedBox(height: 8),
                  const RefundAlertCard(
                    title: "Cơ hội hoàn tiền tối đa",
                    content: "Hủy ngay bây giờ được hoàn 100%",
                    subContent: "Áp dụng đến hết 23:59 ngày 12 Thg 10",
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    "Chính sách hoàn tiền",
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildPolicyList(),
                  const SizedBox(height: 40),
                  _buildActionButtons(context),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "MÃ ĐẶT CHỖ: #TRV${bookingData['id']}",
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              tourCombined.tour.name,
              style: const TextStyle(
                color: AppColors.textPrimary,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Row(
            children: [
              CircleAvatar(radius: 3, backgroundColor: AppColors.primary),
              SizedBox(width: 6),
              Text(
                "Đã xác nhận",
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeroImage(DateFormat df) {
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        image: const DecorationImage(
          image: NetworkImage(
            "https://images.unsplash.com/photo-1528127269322-539801943592?q=80&w=2070&auto=format&fit=crop",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black.withOpacity(0.8)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Khởi hành: ${df.format(tourCombined.instance.startDate)}",
              style: const TextStyle(color: Colors.white70, fontSize: 14),
            ),
            const SizedBox(height: 4),
            Text(
              "${tourCombined.instance.endDate.difference(tourCombined.instance.startDate).inDays} Ngày • ${bookingData['adult_count']} Người lớn",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildSummarySection(NumberFormat cf) {
    return Transform.translate(
      offset: const Offset(0, -30),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: BookingSummaryCard(
          destination: "Cảng tàu quốc tế Tuần Châu, Hạ Long",
          totalPrice: cf.format(bookingData['total_price'] * 10000),
        ),
      ),
    );
  }

  Widget _buildPolicyList() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.inputBackground.withOpacity(0.5),
        borderRadius: BorderRadius.circular(24),
      ),
      child: const Column(
        children: [
          RefundPolicyItem(
            time: "Trước ngày 12/10",
            percent: "Hoàn 100%",
            statusColor: AppColors.success,
            isHighlight: true,
          ),
          RefundPolicyItem(
            time: "13/10 - 14/10",
            percent: "Hoàn 50%",
            statusColor: Colors.orange,
          ),
          RefundPolicyItem(
            time: "Ngày khởi hành (15/10)",
            percent: "0% Hoàn trả",
            statusColor: AppColors.error,
            showDivider: false,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            minimumSize: const Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 0,
          ),
          child: const Text(
            "Tiếp tục hành trình",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 12),
        TextButton.icon(
          onPressed: () {
            // Lấy ID từ bookingData
            final String bookingId = bookingData['id'].toString();

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CancelBookingPage(bookingId: bookingId),
              ),
            );
            print("Đang chuyển đến trang hủy cho đơn hàng ID: $bookingId");
          },
          icon: const Icon(
            Icons.cancel_outlined,
            color: AppColors.error,
            size: 20,
          ),
          label: const Text(
            "Hủy tour",
            style: TextStyle(
              color: AppColors.error,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: TextButton.styleFrom(
            minimumSize: const Size(double.infinity, 56),
          ),
        ),
      ],
    );
  }
}
