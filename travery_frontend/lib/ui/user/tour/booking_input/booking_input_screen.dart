import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:travery_frontend/routing/routes.dart';
import 'package:travery_frontend/ui/core/themes/app_colors.dart';
import 'package:travery_frontend/ui/user/tour/booking_input/view_models/booking_input_view_model.dart';
import 'package:travery_frontend/ui/user/widgets/section_title.dart';

class BookingInputScreen extends StatefulWidget {
  const BookingInputScreen({
    super.key,
    required this.viewModel,
    required this.tourId,
    required this.instanceId,
    required this.tourName,
    this.pricePerAdult,
    this.pricePerChild,
  });

  final BookingInputViewModel viewModel;
  final String tourId;
  final String instanceId;
  final String tourName;
  final double? pricePerAdult;
  final double? pricePerChild;

  @override
  State<BookingInputScreen> createState() => _BookingInputScreenState();
}

class _BookingInputScreenState extends State<BookingInputScreen> {
  final List<TextEditingController> _nameControllers = [];
  final List<TextEditingController> _identityControllers = [];
  final List<TextEditingController> _dobControllers = [];
  final TextEditingController _specialRequestsController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _syncControllers();
  }

  void _syncControllers() {
    final members = widget.viewModel.members;
    while (_nameControllers.length < members.length) {
      _nameControllers.add(TextEditingController());
      _identityControllers.add(TextEditingController());
      _dobControllers.add(TextEditingController());
    }
    while (_nameControllers.length > members.length) {
      _nameControllers.removeLast().dispose();
      _identityControllers.removeLast().dispose();
      _dobControllers.removeLast().dispose();
    }
    for (int i = 0; i < members.length; i++) {
      _nameControllers[i].text = members[i].fullName;
      _identityControllers[i].text = members[i].identityNumber;
      _dobControllers[i].text = members[i].dateOfBirth;
    }
    _specialRequestsController.text = widget.viewModel.specialRequests;
  }

  @override
  void dispose() {
    for (final c in _nameControllers) c.dispose();
    for (final c in _identityControllers) c.dispose();
    for (final c in _dobControllers) c.dispose();
    _specialRequestsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pricePerAdult = widget.pricePerAdult ?? 0.0;
    final pricePerChild = widget.pricePerChild ?? 0.0;

    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFF),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF131B2E)),
          onPressed: () => context.pop(),
        ),
        title: const Text(
          'Thông tin đặt tour',
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
            color: Color(0xFF131B2E),
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<BookingInputViewModel>(
        builder: (context, vm, _) {
          return Form(
            key: _formKey,
            child: ListView(
              padding: const EdgeInsets.all(20),
              children: [
                // Guest Count Section
                const SectionTitle(title: 'Số lượng hành khách'),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      _CounterRow(
                        label: 'Người lớn',
                        subtitle: 'Từ 12 tuổi trở lên',
                        count: vm.adultCount,
                        onDecrease: () => vm.setAdultCount(vm.adultCount - 1),
                        onIncrease: () => vm.setAdultCount(vm.adultCount + 1),
                      ),
                      const Divider(height: 24),
                      _CounterRow(
                        label: 'Trẻ em',
                        subtitle: 'Dưới 12 tuổi',
                        count: vm.childCount,
                        onDecrease: vm.childCount > 0
                            ? () => vm.setChildCount(vm.childCount - 1)
                            : null,
                        onIncrease: () => vm.setChildCount(vm.childCount + 1),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Members List
                const SectionTitle(title: 'Danh sách thành viên'),
                const SizedBox(height: 12),
                ...List.generate(vm.members.length, (index) {
                  final member = vm.members[index];
                  final isAdult = member.memberType == 'ADULT';
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _MemberCard(
                      index: index,
                      isAdult: isAdult,
                      nameController: index < _nameControllers.length
                          ? _nameControllers[index]
                          : null,
                      identityController: index < _identityControllers.length
                          ? _identityControllers[index]
                          : null,
                      dobController: index < _dobControllers.length
                          ? _dobControllers[index]
                          : null,
                      onChanged: () {
                        vm.updateMember(
                          index,
                          MemberFormData(
                            fullName: _nameControllers[index].text,
                            identityNumber: _identityControllers[index].text,
                            dateOfBirth: _dobControllers[index].text,
                            memberType: isAdult ? 'ADULT' : 'CHILD',
                          ),
                        );
                      },
                    ),
                  );
                }),

                const SizedBox(height: 24),

                // Special Requests
                const SectionTitle(title: 'Ghi chú đặc biệt'),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _specialRequestsController,
                    maxLines: 4,
                    decoration: const InputDecoration(
                      hintText: 'VD: Dị ứng hải sản, yêu cầu phòng tầng cao...',
                      hintStyle: TextStyle(color: Color(0xFF717786)),
                      border: InputBorder.none,
                    ),
                    onChanged: vm.setSpecialRequests,
                  ),
                ),

                const SizedBox(height: 120),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Consumer<BookingInputViewModel>(
        builder: (context, vm, _) {
          final totalPrice =
              (vm.adultCount * pricePerAdult) + (vm.childCount * pricePerChild);
          final totalGuests = vm.adultCount + vm.childCount;

          return Container(
            padding: EdgeInsets.fromLTRB(
              20,
              16,
              20,
              MediaQuery.of(context).padding.bottom + 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 20,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tổng cộng ($totalGuests người)',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF414755),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _formatPrice(totalPrice),
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Bao gồm thuế phí',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: vm.isSubmitting
                        ? null
                        : () => _onSubmit(context, vm),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 0,
                    ),
                    child: vm.isSubmitting
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          )
                        : const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Tiếp tục thanh toán',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward, size: 20),
                            ],
                          ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _onSubmit(BuildContext context, BookingInputViewModel vm) async {
    for (int i = 0; i < vm.members.length; i++) {
      vm.updateMember(
        i,
        MemberFormData(
          fullName: _nameControllers[i].text,
          identityNumber: _identityControllers[i].text,
          dateOfBirth: _dobControllers[i].text,
          memberType: vm.members[i].memberType,
        ),
      );
    }

    if (!vm.validateMembers()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng nhập đầy đủ thông tin hành khách'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    final success = await vm.submitBooking(instanceId: widget.instanceId);

    if (!success || !mounted) {
      if (vm.error != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(vm.error!), backgroundColor: Colors.red),
        );
      }
      return;
    }

    final booking = vm.bookingData;
    if (booking == null) return;

    context.push(
      Routes.tourBookingReview.replaceFirst(':id', widget.tourId),
      extra: {
        'tourId': widget.tourId,
        'instanceId': widget.instanceId,
        'tourName': widget.tourName,
        'tourImageUrl': null,
        'members': vm.members
            .map(
              (m) => {
                'fullName': m.fullName,
                'identityNumber': m.identityNumber,
                'dateOfBirth': m.dateOfBirth,
                'memberType': m.memberType,
              },
            )
            .toList(),
        'adultCount': vm.adultCount,
        'childCount': vm.childCount,
        'pricePerAdult': 0.0,
        'pricePerChild': 0.0,
        'specialRequests': vm.specialRequests,
        'startDate': '',
        'endDate': '',
      },
    );
  }

  String _formatPrice(double price) {
    final str = price.toStringAsFixed(0);
    return '${str.replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},')}đ';
  }
}

class _CounterRow extends StatelessWidget {
  const _CounterRow({
    required this.label,
    required this.subtitle,
    required this.count,
    required this.onDecrease,
    required this.onIncrease,
  });

  final String label;
  final String subtitle;
  final int count;
  final VoidCallback? onDecrease;
  final VoidCallback onIncrease;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF131B2E),
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Color(0xFF414755)),
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color(0xFFF2F3FF),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: const Color(0xFFC1C6D7)),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: onDecrease,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    color: count > 0 ? Colors.white : Colors.grey[200],
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.remove,
                    size: 18,
                    color: count > 0 ? AppColors.primary : Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 40,
                child: Center(
                  child: Text(
                    count.toString().padLeft(2, '0'),
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF131B2E),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: onIncrease,
                child: Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: AppColors.primary,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, size: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _MemberCard extends StatelessWidget {
  const _MemberCard({
    required this.index,
    required this.isAdult,
    required this.nameController,
    required this.identityController,
    required this.dobController,
    required this.onChanged,
  });

  final int index;
  final bool isAdult;
  final TextEditingController? nameController;
  final TextEditingController? identityController;
  final TextEditingController? dobController;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.person,
                  size: 18,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Hành khách ${index + 1} (${isAdult ? 'Người lớn' : 'Trẻ em'})',
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF131B2E),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _InputField(
            label: 'Họ và tên *',
            controller: nameController,
            hint: 'VD: Nguyễn Văn A',
            onChanged: (_) => onChanged(),
          ),
          const SizedBox(height: 12),
          _InputField(
            label: 'Số CCCD/Hộ chiếu *',
            controller: identityController,
            hint: 'VD: 012345678901',
            onChanged: (_) => onChanged(),
          ),
          const SizedBox(height: 12),
          _InputField(
            label: 'Ngày sinh (Không bắt buộc)',
            controller: dobController,
            hint: 'DD/MM/YYYY',
            onChanged: (_) => onChanged(),
          ),
        ],
      ),
    );
  }
}

class _InputField extends StatelessWidget {
  const _InputField({
    required this.label,
    required this.controller,
    required this.hint,
    required this.onChanged,
  });

  final String label;
  final TextEditingController? controller;
  final String hint;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w700,
            color: Color(0xFF414755),
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: const TextStyle(color: Color(0xFF717786)),
            filled: true,
            fillColor: const Color(0xFFF2F3FF),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(color: AppColors.primary),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),
          ),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
