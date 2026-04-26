import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class RefundAlert extends StatelessWidget {
  const RefundAlert({super.key, required this.maxRefundDate});

  final String maxRefundDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFFFEF2F2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFFEE2E2)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.info, color: AppColors.error, size: 16),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Cơ hội hoàn tiền tối đa',
                  style: TextStyle(
                    color: AppColors.error,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  'Hủy ngay bây giờ được hoàn 100%',
                  style: TextStyle(color: Color(0xFF991B1B), fontSize: 12),
                ),
                if (maxRefundDate.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(
                    'Áp dụng đến hết $maxRefundDate',
                    style: const TextStyle(
                      color: Color(0xFF991B1B),
                      fontSize: 10,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
