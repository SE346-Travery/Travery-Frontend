import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class RefundDetailCard extends StatelessWidget {
  final String bookingId;
  final String refundAmount;
  final String paymentMethod;
  final String processingTime;

  const RefundDetailCard({
    super.key,
    required this.bookingId,
    required this.refundAmount,
    required this.paymentMethod,
    required this.processingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.06),
            blurRadius: 32,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.account_balance_wallet_rounded,
                color: AppColors.primary,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Thông tin hoàn tiền',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildRow('Mã đặt chỗ', bookingId, isBoldValue: true),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Divider(color: AppColors.inputBorder, thickness: 0.5),
          ),
          _buildAmountRow('Số tiền hoàn lại', refundAmount),
          const SizedBox(height: 16),
          _buildRow('Phương thức', paymentMethod, icon: Icons.qr_code_rounded),
          const SizedBox(height: 12),
          _buildRow('Thời gian dự kiến', processingTime),
        ],
      ),
    );
  }

  Widget _buildRow(
    String label,
    String value, {
    bool isBoldValue = false,
    IconData? icon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        ),
        Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16, color: AppColors.primary),
              const SizedBox(width: 6),
            ],
            Text(
              value,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontWeight: isBoldValue ? FontWeight.bold : FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAmountRow(String label, String amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        ),
        Text(
          amount,
          style: const TextStyle(
            color: AppColors.primary,
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
