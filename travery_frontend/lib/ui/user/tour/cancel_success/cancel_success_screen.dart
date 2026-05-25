import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';

class CancelSuccessScreen extends StatelessWidget {
  const CancelSuccessScreen({
    super.key,
    required this.bookingId,
    required this.tourName,
    required this.refundAmount,
    required this.refundPercentage,
  });

  final String bookingId;
  final String tourName;
  final double refundAmount;
  final double refundPercentage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),

              // Success Icon
              Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_circle,
                  size: 56,
                  color: AppColors.primary,
                ),
              ),

              const SizedBox(height: 32),

              const Text(
                'Hủy tour thành công!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF131B2E),
                ),
              ),

              const SizedBox(height: 12),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Yêu cầu hủy tour của bạn đã được xác nhận.\nChúng tôi rất tiếc khi không thể đồng hành cùng bạn trong chuyến đi này.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF414755),
                    height: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Refund Info Card
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.06),
                      blurRadius: 24,
                      offset: const Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_balance_wallet,
                            color: AppColors.primary),
                        const SizedBox(width: 10),
                        const Text(
                          'Thông tin hoàn tiền',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF131B2E),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    _RefundInfoRow(label: 'Mã đặt chỗ', value: '#${bookingId.substring(0, 8).toUpperCase()}'),
                    const Divider(height: 24),

                    _RefundInfoRow(
                      label: 'Số tiền hoàn lại',
                      valueWidget: Text(
                        _formatPrice(refundAmount),
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    const Divider(height: 24),

                    _RefundInfoRow(
                      label: 'Phương thức hoàn tiền',
                      valueWidget: Row(
                        children: [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F9FF),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Icon(
                              Icons.qr_code,
                              size: 14,
                              color: Color(0xFF0058BC),
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            'Ví VNPay',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF131B2E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(height: 24),

                    _RefundInfoRow(
                      label: 'Thời gian xử lý dự kiến',
                      valueWidget: const Text(
                        '3-5 ngày làm việc',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF131B2E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Note Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3FF),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.info, size: 18, color: AppColors.primary),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Text(
                        'Tiền sẽ được hoàn về đúng phương thức thanh toán bạn đã sử dụng.',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF414755),
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => context.go(Routes.home),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home, size: 20),
                      SizedBox(width: 8),
                      Text(
                        'Về trang chủ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _RefundInfoRow extends StatelessWidget {
  const _RefundInfoRow({required this.label, this.value, this.valueWidget});

  final String label;
  final String? value;
  final Widget? valueWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 13,
            color: Color(0xFF414755),
          ),
        ),
        valueWidget ??
            Text(
              value ?? '',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Color(0xFF131B2E),
              ),
            ),
      ],
    );
  }
}
