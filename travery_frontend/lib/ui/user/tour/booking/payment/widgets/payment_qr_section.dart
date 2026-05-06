import 'package:flutter/material.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/view_models/payment_view_model.dart';

class PaymentQrSection extends StatelessWidget {
  final String qrCodeUrl;
  final PaymentStatus status;

  const PaymentQrSection({
    super.key,
    required this.qrCodeUrl,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: _getStatusBackgroundColor(status),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                _getStatusIcon(status),
                size: 14,
                color: _getStatusColor(status),
              ),
              const SizedBox(width: 4),
              Text(
                _getStatusText(status),
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: _getStatusColor(status),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 14),
        Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.04),
                blurRadius: 12,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Image.network(
            qrCodeUrl,
            width: 160,
            height: 160,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.inputBorder),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code_2, size: 48, color: AppColors.icon),
                  SizedBox(height: 8),
                  Text(
                    'QR Code',
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.textSecondary,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Quét mã QR để thanh toán',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: AppColors.textSecondary,
          ),
        ),
      ],
    );
  }

  String _getStatusText(PaymentStatus status) {
    switch (status) {
      case PaymentStatus.pending:
        return 'ĐANG CHỜ THANH TOÁN';
      case PaymentStatus.processing:
        return 'ĐANG XỬ LÝ';
      case PaymentStatus.success:
        return 'THANH TOÁN THÀNH CÔNG';
      case PaymentStatus.failed:
        return 'THANH TOÁN THẤT BẠI';
      case PaymentStatus.expired:
        return 'ĐÃ HẾT HẠN';
    }
  }

  Color _getStatusColor(PaymentStatus status) {
    switch (status) {
      case PaymentStatus.pending:
        return AppColors.warning;
      case PaymentStatus.processing:
        return AppColors.primary;
      case PaymentStatus.success:
        return AppColors.success;
      case PaymentStatus.failed:
      case PaymentStatus.expired:
        return AppColors.error;
    }
  }

  Color _getStatusBackgroundColor(PaymentStatus status) {
    return _getStatusColor(status).withOpacity(0.15);
  }

  IconData _getStatusIcon(PaymentStatus status) {
    switch (status) {
      case PaymentStatus.pending:
        return Icons.sync;
      case PaymentStatus.processing:
        return Icons.hourglass_top;
      case PaymentStatus.success:
        return Icons.check_circle;
      case PaymentStatus.failed:
        return Icons.error;
      case PaymentStatus.expired:
        return Icons.access_time;
    }
  }
}
