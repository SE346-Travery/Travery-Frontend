import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/view_models/booking_review_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_summary_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_info_section.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_info_row.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_member_item.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_note_box.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_bottom_bar.dart';
import 'package:travery_frontend/ui/user/tour/booking/review/widgets/booking_review_policy_checkbox.dart';
import 'package:travery_frontend/utils/format_utils.dart';

import '../../../../core/widgets/app_bar_widget.dart';

class BookingReviewScreen extends StatelessWidget {
  const BookingReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookingReviewViewModel(
        bookingViewModel: context.read<BookingViewModel>(),
      ),
      child: const _BookingReviewScreenContent(),
    );
  }
}

class _BookingReviewScreenContent extends StatefulWidget {
  const _BookingReviewScreenContent();

  @override
  State<_BookingReviewScreenContent> createState() =>
      _BookingReviewScreenContentState();
}

class _BookingReviewScreenContentState
    extends State<_BookingReviewScreenContent> {
  bool _isPolicyAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Kiểm tra thông tin'),
      body: Consumer<BookingReviewViewModel>(
        builder: (context, viewModel, child) {
          final tour = viewModel.tour;
          if (tour == null) {
            return const Center(child: Text('Không có thông tin tour'));
          }

          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    children: [
                      BookingReviewSummaryCard(
                        title: tour.name,
                        tourCode: tour.id ?? 'N/A',
                        dateRange: viewModel.dateRange,
                        imageUrl: tour.images?.isNotEmpty == true
                            ? tour.images!.first.imageUrl
                            : 'https://picsum.photos/150',
                      ),
                      const SizedBox(height: 12),

                      BookingReviewInfoSection(
                        title: 'Thông tin liên lạc',
                        icon: Icons.contact_mail_outlined,
                        onEdit: () => context.pop(),
                        child: Column(
                          children: [
                            BookingReviewInfoRow(
                              label: 'Họ và tên',
                              value: viewModel.contactName,
                            ),
                            const SizedBox(height: 8),
                            BookingReviewInfoRow(
                              label: 'Số điện thoại',
                              value: viewModel.contactPhone,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),

                      BookingReviewInfoSection(
                        title: 'Danh sách thành viên',
                        icon: Icons.groups_outlined,
                        child: Column(
                          children: viewModel.members.map((member) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: BookingReviewMemberItem(member: member),
                            );
                          }).toList(),
                        ),
                      ),
                      const SizedBox(height: 12),

                      if (viewModel.specialNotes.isNotEmpty) ...[
                        BookingReviewInfoSection(
                          title: 'Ghi chú đặc biệt',
                          icon: Icons.edit_note_outlined,
                          child: BookingReviewNoteBox(
                            text: viewModel.specialNotes,
                          ),
                        ),
                        const SizedBox(height: 12),
                      ],

                      BookingReviewPolicyCheckbox(
                        initialValue: _isPolicyAccepted,
                        onChanged: (value) {
                          setState(() => _isPolicyAccepted = value);
                        },
                      ),
                      const SizedBox(height: 80),
                    ],
                  ),
                ),
              ),
              BookingReviewBottomBar(
                totalPrice: FormatUtils.formatCurrency(viewModel.totalPrice),
                onContinuePayment: () => _handleContinuePayment(context),
              ),
            ],
          );
        },
      ),
    );
  }

  void _handleContinuePayment(BuildContext context) {
    if (!_isPolicyAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng đồng ý với điều khoản và chính sách'),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    final viewModel = context.read<BookingReviewViewModel>();
    viewModel.navigateToPayment();
    context.push(Routes.vnpayPayment);
  }
}
