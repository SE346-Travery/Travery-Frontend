import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../../core/themes/app_colors.dart';

class RefundSummaryCard extends StatelessWidget {
  final double totalPrice;
  final double refundAmount;
  final double percent;

  const RefundSummaryCard({
    super.key,
    required this.totalPrice,
    required this.refundAmount,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    final currencyFormat = NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');

    final String displayPercent = "${(percent * 100).toInt()}%";

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "TỔNG HOÀN TRẢ DỰ KIẾN",
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                currencyFormat.format(refundAmount),
                style: const TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold, // Font dày hơn để nổi bật
                  fontSize: 24,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                "/ ${currencyFormat.format(totalPrice)}",
                style: TextStyle(
                  color: AppColors.textSecondary.withOpacity(0.6),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          _buildRow(
            "Tỷ lệ hoàn tiền",
            displayPercent,
            color: percent > 0 ? AppColors.success : AppColors.error,
          ),
          const Divider(height: 24, thickness: 0.5),

          _buildRow(
            "Giá trị đơn hàng",
            currencyFormat.format(totalPrice),
            isBold: false,
          ),
          const Divider(height: 24, thickness: 0.5),

          _buildRow(
            "Số tiền nhận lại",
            currencyFormat.format(refundAmount),
            color: AppColors.primary,
            isBold: true,
            fontSize: 18,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    String label,
    String value, {
    Color? color,
    bool isBold = true,
    double fontSize = 14,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        ),
        Text(
          value,
          style: TextStyle(
            color: color ?? AppColors.textPrimary,
            fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
            fontSize: fontSize,
          ),
        ),
      ],
    );
  }
}
