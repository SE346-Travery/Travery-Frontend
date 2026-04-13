import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../data/seed_models/booking_payment/booking_payment_model.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_text_theme.dart';

class BookingDetailCard extends StatelessWidget {
  final BookingPaymentModel booking;
  final VoidCallback? onEdit;

  const BookingDetailCard({
    super.key,
    required this.booking,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormatter = DateFormat('dd/MM/yyyy');
    final currencyFormatter = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: AppColors.textPrimary.withOpacity(0.06),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Mã đặt chỗ', style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: AppColors.textSecondary, letterSpacing: 1.5)),
              Text(booking.bookingId, style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.bold, color: AppColors.primary)),
            ],
          ),
          const SizedBox(height: 20),
          _buildDetailItem(icon: Icons.map_outlined, label: 'Chuyến đi', value: booking.tourName),
          const SizedBox(height: 16),
          _buildDetailItem(icon: Icons.calendar_today_outlined, label: 'Ngày khởi hành', value: dateFormatter.format(booking.departureDate)),
          const SizedBox(height: 16),
          _buildDetailItem(icon: Icons.group_outlined, label: 'Số lượng khách', value: booking.guestDescription),
          const SizedBox(height: 20),
          Container(
            height: 1,
            decoration: const BoxDecoration(border: Border(top: BorderSide(color: AppColors.inputBorder, style: BorderStyle.solid))),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tổng thanh toán', style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
              Text(currencyFormatter.format(booking.totalPrice), style: TextStyle(fontSize: AppTextTheme.labelMedium, fontWeight: FontWeight.w800, color: AppColors.primary)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem({required IconData icon, required String label, required String value}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(color: AppColors.inputBackground, borderRadius: BorderRadius.circular(12)),
          child: Icon(icon, size: 20, color: AppColors.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: TextStyle(fontSize: AppTextTheme.bodySmall, fontWeight: FontWeight.w500, color: AppColors.textSecondary)),
              const SizedBox(height: 2),
              Text(value, style: TextStyle(fontSize: AppTextTheme.bodyMedium, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
            ],
          ),
        ),
      ],
    );
  }
}
