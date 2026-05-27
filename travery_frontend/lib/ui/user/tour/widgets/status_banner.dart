import 'package:flutter/material.dart';

class StatusBanner extends StatelessWidget {
  const StatusBanner({super.key, required this.status});

  final String status;

  Color _getColor() {
    switch (status) {
      case 'Đã thanh toán':
      case 'Đã xác nhận':
        return const Color(0xFF10B981);
      case 'Đang chờ':
        return Colors.orange;
      case 'Đã hủy':
        return const Color(0xFFBA1A1A);
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor();
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              status,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
