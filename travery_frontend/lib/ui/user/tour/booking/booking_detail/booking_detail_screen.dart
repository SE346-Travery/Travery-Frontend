import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/view_models/booking_detail_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/booking_header.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/hero_image_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/summary_info_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/refund_alert.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/refund_policy_section.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/primary_button.dart';
import 'package:travery_frontend/ui/user/tour/booking/booking_detail/widgets/secondary_button.dart';
import 'package:travery_frontend/ui/core/widgets/app_bar_widget.dart';

class BookingDetailScreen extends StatelessWidget {
  const BookingDetailScreen({super.key, required this.bookingId});

  final String bookingId;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          BookingDetailViewModel(bookingService: context.read())
            ..loadBookingDetail(bookingId),
      child: _BookingDetailScreenContent(bookingId: bookingId),
    );
  }
}

class _BookingDetailScreenContent extends StatelessWidget {
  const _BookingDetailScreenContent({required this.bookingId});

  final String bookingId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const AppBarWidget(
        title: 'Chi tiết đặt chỗ',
        showBackButton: true,
      ),
      body: Consumer<BookingDetailViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            );
          }

          if (viewModel.errorMessage != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 48,
                    color: AppColors.error,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    viewModel.errorMessage!,
                    style: const TextStyle(color: AppColors.textSecondary),
                  ),
                ],
              ),
            );
          }

          final detail = viewModel.bookingDetail;
          if (detail == null) {
            return const Center(
              child: Text('Không tìm thấy thông tin đặt chỗ'),
            );
          }

          return CustomScrollView(
            slivers: [
              SliverPadding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                sliver: SliverList(
                  delegate: SliverChildListDelegate([
                    BookingHeader(
                      bookingId: detail.bookingId,
                      title: detail.tourName,
                      status: detail.status,
                    ),
                    const SizedBox(height: 12),
                    HeroImageCard(
                      imageUrl: detail.tourImageUrl ?? '',
                      date: viewModel.formattedDate,
                      guestCount: detail.guestCount,
                    ),
                    const SizedBox(height: 0),
                    SummaryInfoCard(
                      location: 'Cảng tàu quốc tế Tuần Châu, Hạ Long',
                      totalPrice: viewModel.formattedPrice,
                    ),
                    const SizedBox(height: 12),
                    RefundAlert(maxRefundDate: viewModel.refundDeadlineText),
                    const SizedBox(height: 12),
                    RefundPolicySection(policy: detail.refundPolicy),
                    const SizedBox(height: 20),
                    PrimaryButton(
                      text: 'Tiếp tục hành trình',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 10),
                    SecondaryButton(
                      text: 'Hủy tour',
                      onPressed: () =>
                          context.push('/booking/$bookingId/cancel'),
                    ),
                    const SizedBox(height: 32),
                  ]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
