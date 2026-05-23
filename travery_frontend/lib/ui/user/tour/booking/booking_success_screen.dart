import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/view_models/booking_success_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';

class BookingSuccessScreen extends StatelessWidget {
  const BookingSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => BookingSuccessViewModel(
        bookingViewModel: ctx.read<BookingViewModel>(),
      ),
      child: const _BookingSuccessContent(),
    );
  }
}

class _BookingSuccessContent extends StatelessWidget {
  const _BookingSuccessContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Consumer<BookingSuccessViewModel>(
          builder: (context, vm, child) {
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 48),
                  _buildSuccessHeader(),
                  const SizedBox(height: 32),
                  Text(
                    'Đặt tour thành công!',
                    style: TextStyle(
                      fontFamily: 'Be Vietnam Pro',
                      fontWeight: FontWeight.w900,
                      fontSize: 28,
                      color: AppColors.textPrimary,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 24),
                  _buildBookingCodeCard(vm),
                  const SizedBox(height: 40),
                  _buildActionButtons(context, vm),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSuccessHeader() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 96,
          height: 96,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Color(0xFF10B981), Color(0xFF059669)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(19, 27, 46, 0.06),
                offset: Offset(0, 12),
                blurRadius: 32,
              ),
            ],
          ),
          child: const Icon(
            Icons.check_circle_rounded,
            color: Colors.white,
            size: 48,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: 32,
            height: 32,
            decoration: const BoxDecoration(
              color: Color(0xFFDAE2FD),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.celebration_outlined,
              color: AppColors.primary,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBookingCodeCard(BookingSuccessViewModel vm) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.inputBorder),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildDetailRow(Icons.map_outlined, 'Tour', vm.tourName),
          const SizedBox(height: 12),
          _buildDetailRow(
            Icons.calendar_today_outlined,
            'Khởi hành',
            vm.formattedDate,
          ),
          const SizedBox(height: 12),
          _buildDetailRow(Icons.group_outlined, 'Khách', vm.guestSummary),
          const Divider(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tổng thanh toán',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                vm.formatCurrency(vm.totalPrice),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 16, color: AppColors.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  color: AppColors.textPrimary,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons(BuildContext context, BookingSuccessViewModel vm) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 52,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              colors: [Color(0xFF0058BC), Color(0xFF0070EB)],
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(19, 27, 46, 0.06),
                offset: Offset(0, 12),
                blurRadius: 32,
              ),
            ],
          ),
          child: ElevatedButton(
            onPressed: () => vm.navigateToBookingDetail(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Xem booking',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: double.infinity,
          height: 52,
          child: ElevatedButton(
            onPressed: () {
              vm.navigateToHome();
              context.go(Routes.home);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF2F3FF),
              foregroundColor: AppColors.primary,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              'Về trang chủ',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}
