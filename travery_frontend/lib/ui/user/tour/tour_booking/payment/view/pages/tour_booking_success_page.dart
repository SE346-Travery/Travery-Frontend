import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../../../../data/model/booking_tour_model.dart';
import '../../../../../../../data/model/tour_combined_model.dart';
import '../../../../../../../routing/routes.dart';
import '../../../../../../core/themes/app_colors.dart';

class BookingSuccessPage extends StatelessWidget {
  final BookingTour booking;
  final TourCombined tourData;

  const BookingSuccessPage({
    super.key,
    required this.booking,
    required this.tourData,
  });

  @override
  Widget build(BuildContext context) {
    final format = NumberFormat('#,###', 'vi_VN');

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 96,
                  height: 96,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Color(0xFF10B981), Color(0xFF059669)],
                    ),
                  ),
                  child: const Icon(
                    Icons.check_circle,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text(
                "Đặt tour thành công!",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
              const Text(
                "Cảm ơn bạn đã tin tưởng Travery.\nHành trình của bạn đã sẵn sàng bắt đầu.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, height: 1.5),
              ),
              const SizedBox(height: 40),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 20,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Mã đặt chỗ",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          booking.id,
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 32),
                    _buildDetailRow(Icons.map, "Chuyến đi", tourData.tour.name),
                    const SizedBox(height: 16),
                    _buildDetailRow(
                      Icons.calendar_today,
                      "Ngày khởi hành",
                      DateFormat(
                        'dd/MM/yyyy',
                      ).format(tourData.instance.startDate),
                    ),
                    const SizedBox(height: 16),
                    _buildDetailRow(
                      Icons.group,
                      "Số lượng",
                      "${booking.adultCount} người lớn, ${booking.childCount} trẻ em",
                    ),
                    const Divider(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tổng thanh toán",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "${format.format(booking.totalPrice)}đ",
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
              ),

              const SizedBox(height: 40),

              OutlinedButton(
                onPressed: () {
                  // context.push('${Routes.bookingDetail}/${booking.id}');
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 54),
                  side: const BorderSide(color: AppColors.primary, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "XEM CHI TIẾT ĐẶT CHỖ",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),

              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  context.go(Routes.homepage);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  minimumSize: const Size(double.infinity, 54),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "VỀ TRANG CHỦ",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String title, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: AppColors.primary, size: 20),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(color: Colors.grey, fontSize: 11),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
