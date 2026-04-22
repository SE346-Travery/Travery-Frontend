import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking/view_models/booking_view_model.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/tour_summary_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/section_title.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/quantity_selector.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/custom_text_field.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/member_card.dart';
import 'package:travery_frontend/ui/user/tour/booking/widgets/bottom_action_bar.dart';
import 'package:travery_frontend/utils/format_utils.dart';

import '../../../core/widgets/app_bar_widget.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final _formKey = GlobalKey<FormState>();
  final _contactNameController = TextEditingController();
  final _contactPhoneController = TextEditingController();
  final _specialNotesController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _contactNameController.addListener(_onContactNameChanged);
    _contactPhoneController.addListener(_onContactPhoneChanged);
    _specialNotesController.addListener(_onSpecialNotesChanged);
  }

  void _onContactNameChanged() {
    context.read<BookingViewModel>().setContactName(
      _contactNameController.text,
    );
  }

  void _onContactPhoneChanged() {
    context.read<BookingViewModel>().setContactPhone(
      _contactPhoneController.text,
    );
  }

  void _onSpecialNotesChanged() {
    context.read<BookingViewModel>().setSpecialNotes(
      _specialNotesController.text,
    );
  }

  @override
  void dispose() {
    _contactNameController.dispose();
    _contactPhoneController.dispose();
    _specialNotesController.dispose();
    super.dispose();
  }

  void _handleSubmit() {
    final viewModel = context.read<BookingViewModel>();
    final errors = viewModel.getAllErrors();

    if (errors.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errors.first),
          backgroundColor: AppColors.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    context.push(Routes.tourBookingReview);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Thông tin đặt tour'),
      body: Consumer<BookingViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isSubmitting) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: AppColors.primary),
                  SizedBox(height: 16),
                  Text('Đang xử lý đặt tour...'),
                ],
              ),
            );
          }

          final tour = viewModel.tour;
          if (tour == null) {
            return const Center(child: Text('Không có thông tin tour'));
          }

          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TourSummaryCard(
                    tourCode: tour.id ?? 'N/A',
                    title: tour.name,
                    date: viewModel.selectedInstance != null
                        ? FormatUtils.formatDate(
                            viewModel.selectedInstance!.startDate,
                          )
                        : 'N/A',
                    imageUrl: tour.images?.isNotEmpty == true
                        ? tour.images!.first.imageUrl
                        : 'https://picsum.photos/150',
                  ),
                  const SizedBox(height: 24),

                  SectionTitle(
                    title: 'Số lượng khách',
                    trailing: Text(
                      '${viewModel.totalMembers} khách',
                      style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.04),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        QuantitySelector(
                          label: 'Người lớn',
                          subLabel: 'Trên 12 tuổi',
                          count: viewModel.adultCount,
                          onAdd: () =>
                              viewModel.setAdultCount(viewModel.adultCount + 1),
                          onRemove: () =>
                              viewModel.setAdultCount(viewModel.adultCount - 1),
                        ),
                        const Divider(height: 32),
                        QuantitySelector(
                          label: 'Trẻ em',
                          subLabel: 'Từ 2 - 11 tuổi',
                          count: viewModel.childCount,
                          onAdd: () =>
                              viewModel.setChildCount(viewModel.childCount + 1),
                          onRemove: () =>
                              viewModel.setChildCount(viewModel.childCount - 1),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  SectionTitle(title: 'Thông tin liên lạc'),
                  CustomTextField(
                    controller: _contactNameController,
                    label: 'Họ và tên',
                    hint: 'Nhập họ và tên của bạn',
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập họ và tên';
                      }
                      if (value.trim().length < 2) {
                        return 'Họ và tên phải có ít nhất 2 ký tự';
                      }
                      if (!RegExp(r'^[a-zA-ZÀ-ỹ\s]+$').hasMatch(value.trim())) {
                        return 'Họ và tên không được chứa số hoặc ký tự đặc biệt';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    controller: _contactPhoneController,
                    label: 'Số điện thoại',
                    hint: '0901 234 567',
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập số điện thoại';
                      }
                      final phoneRegex = RegExp(r'^(0[3|5|7|8|9])+([0-9]{8})$');
                      if (!phoneRegex.hasMatch(value.replaceAll(' ', ''))) {
                        return 'Số điện thoại không hợp lệ (VD: 0901234567)';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  SectionTitle(
                    title: 'Thông tin thành viên',
                    trailing: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        '${viewModel.totalMembers} khách',
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ...viewModel.members.asMap().entries.map((entry) {
                    final index = entry.key;
                    final member = entry.value;
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: MemberCard(
                        member: member,
                        onNameChanged: (name) {
                          viewModel.updateMember(index, fullName: name);
                        },
                        onIdentityChanged: (identity) {
                          viewModel.updateMember(
                            index,
                            identityNumber: identity,
                          );
                        },
                      ),
                    );
                  }),
                  const SizedBox(height: 8),

                  SectionTitle(title: 'Ghi chú đặc biệt'),
                  CustomTextField(
                    controller: _specialNotesController,
                    label: '',
                    hint:
                        'Nhập ghi chú hoặc yêu cầu đặc biệt của bạn (ví dụ: dị ứng, chế độ ăn,...)',
                    maxLines: 4,
                    textInputAction: TextInputAction.done,
                  ),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Consumer<BookingViewModel>(
        builder: (context, viewModel, child) {
          return BottomActionBar(
            totalPrice: FormatUtils.formatCurrency(viewModel.totalPrice),
            onPressed: _handleSubmit,
          );
        },
      ),
    );
  }
}
