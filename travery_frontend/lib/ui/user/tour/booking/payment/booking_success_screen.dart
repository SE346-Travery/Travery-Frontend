import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/view_models/booking_success_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/widgets/booking_success_header.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/widgets/booking_success_details.dart';
import 'package:travery_frontend/ui/user/tour/booking/payment/widgets/booking_success_button.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/utils/format_utils.dart';

class BookingSuccessScreen extends StatelessWidget {
  const BookingSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookingSuccessViewModel(
        bookingViewModel: context.read<BookingViewModel>(),
      ),
      child: const _BookingSuccessScreenContent(),
    );
  }
}

class _BookingSuccessScreenContent extends StatelessWidget {
  const _BookingSuccessScreenContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Consumer<BookingSuccessViewModel>(
          builder: (context, viewModel, child) {
            final tour = viewModel.tour;
            if (tour == null) {
              return const Center(child: Text('Không có thông tin tour'));
            }

            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
              child: Column(
                children: [
                  const BookingSuccessHeader(),
                  const SizedBox(height: 24),
                  const Text(
                    'Đặt tour thành công!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Cảm ơn bạn đã tin tưởng Travery. Hành trình của bạn đã sẵn sàng.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 28),
                  BookingSuccessDetails(
                    bookingCode: viewModel.bookingCode,
                    tourName: tour.name,
                    date: viewModel.formattedDate,
                    guests: viewModel.guestSummary,
                    totalPrice: FormatUtils.formatCurrency(
                      viewModel.totalPrice,
                    ),
                  ),
                  const SizedBox(height: 28),
                  BookingSuccessButton(
                    text: 'Xem booking',
                    backgroundColor: AppColors.primary,
                    textColor: Colors.white,
                    onPressed: () {
                      viewModel.navigateToBookingDetail(context);
                    },
                  ),
                  const SizedBox(height: 10),
                  BookingSuccessButton(
                    text: 'Về trang chủ',
                    backgroundColor: Colors.transparent,
                    textColor: AppColors.primary,
                    isBordered: true,
                    onPressed: () {
                      viewModel.navigateToHome();
                      context.go(Routes.home);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
