import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_colors.dart';

class PolicySection extends StatelessWidget {
  const PolicySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          children: [
            Icon(Icons.policy_outlined, color: AppColors.primary, size: 20),
            SizedBox(width: 8),
            Text(
              "Tóm tắt chính sách hủy",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppColors.inputBackground.withOpacity(0.5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              _policyItem(
                "Hủy trước 7 ngày trở lên: Hoàn tiền 100% (Không mất phí).",
                AppColors.primary,
              ),
              const SizedBox(height: 12),
              _policyItem(
                "Hủy từ 3 – 6 ngày trước khởi hành: Hoàn tiền 50%.",
                AppColors.primary,
              ),
              const SizedBox(height: 12),
              _policyItem(
                "Hủy dưới 3 ngày (72h): Không hoàn tiền (Phí khẩn cấp 100%).",
                AppColors.error,
                isCritical: true,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _policyItem(String text, Color dotColor, {bool isCritical = false}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 6),
          width: 8,
          height: 8,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13,
              color: AppColors.textSecondary,
              fontWeight: isCritical ? FontWeight.bold : FontWeight.normal,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
