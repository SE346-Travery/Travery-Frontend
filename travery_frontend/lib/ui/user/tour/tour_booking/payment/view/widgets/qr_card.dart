import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/themes/app_colors.dart';

class PaymentQRCodeCard extends StatelessWidget {
  final double amount;
  final NumberFormat format;

  const PaymentQRCodeCard({
    super.key,
    required this.amount,
    required this.format,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.primary.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            "Quét mã để thanh toán",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.network(
              "https://tse4.mm.bing.net/th/id/OIP.mb4I3btV13zRPr9N-0CEmwHaH5?w=1500&h=1600&rs=1&pid=ImgDetMain&o=7&rm=3",
              width: 180,
              height: 180,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "${format.format(amount)}đ",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w900,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 12,
                height: 12,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
              SizedBox(width: 8),
              Text(
                "Đang chờ xác nhận giao dịch...",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
