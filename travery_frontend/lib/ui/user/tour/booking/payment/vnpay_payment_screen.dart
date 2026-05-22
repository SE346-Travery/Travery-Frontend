import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/data/services/api/model/booking/create_tour_booking_response/create_tour_booking_response.dart';
import 'package:travery_frontend/data/services/tour/tour_service.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/view_models/payment_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class VNPayPaymentScreen extends StatelessWidget {
  final TourBookingData bookingData;

  const VNPayPaymentScreen({super.key, required this.bookingData});

  @override
  Widget build(BuildContext context) {
    final tourService = context.read<TourService>();
    return ChangeNotifierProvider(
      create: (_) =>
          PaymentViewModel(tourService: tourService)..initPayment(bookingData),
      child: const _VNPayPaymentContent(),
    );
  }
}

class _VNPayPaymentContent extends StatefulWidget {
  const _VNPayPaymentContent();

  @override
  State<_VNPayPaymentContent> createState() => _VNPayPaymentContentState();
}

class _VNPayPaymentContentState extends State<_VNPayPaymentContent> {
  bool _successNavigated = false;
  bool _expiredDialogShown = false;
  bool _failedDialogShown = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PaymentViewModel>().startPolling();
    });
  }

  void _navigateToSuccess() {
    if (_successNavigated || !mounted) return;
    _successNavigated = true;
    context.pushReplacement(Routes.bookingSuccess);
  }

  void _navigateHome() {
    if (!mounted) return;
    context.go(Routes.home);
  }

  void _handleCancel() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xác nhận hủy'),
        content: const Text('Bạn có chắc muốn hủy thanh toán không?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Không'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              _navigateHome();
            },
            child: const Text('Có, hủy'),
          ),
        ],
      ),
    );
  }

  void _showExpiredDialog() {
    if (_expiredDialogShown || !mounted) return;
    _expiredDialogShown = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('Hết thời gian thanh toán'),
        content: const Text('Phiên thanh toán đã hết hạn. Vui lòng thử lại.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              _navigateHome();
            },
            child: const Text('Đóng'),
          ),
        ],
      ),
    );
  }

  void _showFailedDialog(String message) {
    if (_failedDialogShown || !mounted) return;
    _failedDialogShown = true;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        title: const Text('Thanh toán thất bại'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              _navigateHome();
            },
            child: const Text('Đóng'),
          ),
        ],
      ),
    );
  }

  Future<void> _openVNPay(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) _handleCancel();
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.surface,
          elevation: 0.5,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: AppColors.primary),
            onPressed: _handleCancel,
          ),
          title: const Text(
            'Thanh toán VNPay',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: AppColors.textPrimary,
            ),
          ),
        ),
        body: Consumer<PaymentViewModel>(
          builder: (context, vm, child) {
            _checkStatus(vm);

            if (vm.status == PaymentStatus.loading) {
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: AppColors.primary),
                    SizedBox(height: 16),
                    Text('Đang khởi tạo thanh toán...'),
                  ],
                ),
              );
            }

            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                child: Column(
                  children: [
                    _buildTimerBanner(vm),
                    const SizedBox(height: 16),
                    Expanded(child: _buildPaymentCard(vm)),
                    const SizedBox(height: 16),
                    _buildOpenButton(vm),
                    const SizedBox(height: 16),
                    _buildFooter(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _checkStatus(PaymentViewModel vm) {
    if (vm.status == PaymentStatus.success && !_successNavigated) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _navigateToSuccess());
    } else if (vm.status == PaymentStatus.expired && !_expiredDialogShown) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _showExpiredDialog());
    } else if (vm.status == PaymentStatus.failed && !_failedDialogShown) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _showFailedDialog(vm.errorMessage ?? 'Đã xảy ra lỗi'),
      );
    }
  }

  Widget _buildTimerBanner(PaymentViewModel vm) {
    final isUrgent = vm.remainingSeconds < 60;
    final color = isUrgent ? AppColors.error : AppColors.warning;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withValues(alpha: 0.2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.schedule, color: color, size: 20),
          const SizedBox(width: 8),
          Text(
            'Giữ chỗ trong ${vm.formattedTime}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: color,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentCard(PaymentViewModel vm) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.inputBorder.withValues(alpha: 0.5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primary.withValues(alpha: 0.08),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.payment,
              size: 48,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Thanh toán qua VNPay',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            _formatCurrency(vm.totalAmount),
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w900,
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: 12),
          _buildStatusChip(vm),
          const SizedBox(height: 20),
          const Text(
            'Nhấn nút bên dưới để mở cổng thanh toán VNPay.\nQuét mã QR hoặc thanh toán bằng thẻ.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusChip(PaymentViewModel vm) {
    Color color;
    String text;
    switch (vm.status) {
      case PaymentStatus.pending:
        color = AppColors.warning;
        text = 'Chờ thanh toán';
      case PaymentStatus.processing:
        color = AppColors.primary;
        text = 'Đang xử lý';
      case PaymentStatus.success:
        color = AppColors.success;
        text = 'Thành công';
      case PaymentStatus.failed:
        color = AppColors.error;
        text = 'Thất bại';
      case PaymentStatus.expired:
        color = AppColors.error;
        text = 'Hết hạn';
      default:
        color = AppColors.textSecondary;
        text = 'Đang chờ';
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }

  Widget _buildOpenButton(PaymentViewModel vm) {
    final bool isEnabled =
        vm.status == PaymentStatus.pending && vm.paymentUrl.isNotEmpty;
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: isEnabled ? () => _openVNPay(vm.paymentUrl) : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          disabledBackgroundColor: AppColors.disabled,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.open_in_new, size: 20),
            SizedBox(width: 8),
            Text(
              'Mở cổng thanh toán VNPay',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Thanh toán qua ',
          style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
        ),
        Text(
          'VNPay',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }

  String _formatCurrency(double amount) {
    final str = amount.toInt().toString().replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match m) => '${m[1]}.',
    );
    return '$strđ';
  }
}
